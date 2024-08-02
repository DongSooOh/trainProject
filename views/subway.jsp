<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지도에 실시간 지하철 위치 표시</title>
<!-- 네이버 지도 API 호출 -->
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=8jkyz2i5z7"></script>
<!-- CSS 스타일 설정 -->
<style>
    #map {
        width: 100%;
        height: 600px;
    }
    .custom-marker {
        display: flex;
        align-items: center;
    }
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
    <h1>네이버 지도에 실시간 지하철 위치 표시</h1>
    <form id="lineForm">
        <label for="lineName">호선 이름을 입력하세요 (예: 1호선): </label>
        <input type="text" id="lineName" name="lineName">
        <button type="button" onclick="getLineData()">조회</button>
    </form>
    <div id="map"></div>

    <script type="text/javascript">
        var map;
        var trainMarkers = {};
        var apiKey = "694c586a4b6b696a353557574d4b4e"; // 여기에 실제 API 키를 입력하세요.
        var coordinateCache = {}; // 캐시를 사용하여 이미 변환된 좌표를 저장
        var distanceCache = {}; // 역간 거리와 소요시간 정보를 저장
        var currentLineName = ''; // 현재 조회 중인 호선 이름
        var updateInterval = 10000; // 업데이트 주기 (밀리초 단위, 10초)

		//Web Dynamic Map API
        function initMap() {
            console.log("Initializing map..."); 
            // 서울 중심에 지도 생성
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.5666103, 126.9783882),
                zoom: 12
            });

            // 역 좌표 데이터를 미리 로드
            loadStationCoordinates(function() {
                console.log("Station coordinates loaded.");
                loadStationDistances(function() {
                    console.log("Station distances loaded.");
                });
            });
        } 
		
		//서울시 역사마스터 정보 API
        function loadStationCoordinates(callback) {
            console.log("Loading station coordinates...");
            var apiUrl = 'http://openapi.seoul.go.kr:8088/' + apiKey + '/xml/subwayStationMaster/1/1000/'; 

            var xhr = new XMLHttpRequest();
            xhr.open('GET', apiUrl, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        console.log("Station coordinates API response: ", xhr.responseText);
                        var parser = new DOMParser();
                        var xmlDoc = parser.parseFromString(xhr.responseText, "application/xml");
                        var rows = xmlDoc.getElementsByTagName("row");
                        for (var i = 0; i < rows.length; i++) {
                            var row = rows[i];
                            var stationName = row.getElementsByTagName("BLDN_NM")[0].textContent;
                            var route = row.getElementsByTagName("ROUTE")[0].textContent;
                            var lat = parseFloat(row.getElementsByTagName("LAT")[0].textContent);
                            var lot = parseFloat(row.getElementsByTagName("LOT")[0].textContent);
                            coordinateCache[stationName] = { lat: lat, lot: lot, route: route };
                        }
                        callback();
                    } else {
                        console.error('Station coordinates API error: ' + xhr.status);
                    }
                }
            };
            xhr.send();
        }

		//서울교통공사 역간 거리 및 소요시간 정보(1~8호선) API
        function loadStationDistances(callback) {
            console.log("Loading station distances...");
            var apiUrl = 'http://openapi.seoul.go.kr:8088/' + apiKey + '/xml/StationDstncReqreTimeHm/1/1000/'; 

            var xhr = new XMLHttpRequest();
            xhr.open('GET', apiUrl, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        console.log("Station distances API response: ", xhr.responseText);
                        var parser = new DOMParser();
                        var xmlDoc = parser.parseFromString(xhr.responseText, "application/xml");
                        var rows = xmlDoc.getElementsByTagName("row");
                        for (var i = 0; i < rows.length; i++) {
                            var row = rows[i];
                            var route = row.getElementsByTagName("SBWY_ROUT_LN")[0].textContent;
                            var stationName = row.getElementsByTagName("SBWY_STNS_NM")[0].textContent;
                            var distance = parseFloat(row.getElementsByTagName("DIST_KM")[0].textContent);
                            var time = row.getElementsByTagName("HM")[0].textContent;
                            if (!distanceCache[route]) {
                                distanceCache[route] = {};
                            }
                            distanceCache[route][stationName] = {
                                distance: distance,
                                time: time
                            };
                        }
                        callback();
                    } else {
                        console.error('Station distances API error: ' + xhr.status);
                    }
                }
            };
            xhr.send();
        }

        function getCoordinates(stationName, callback) {
            console.log("Getting coordinates for station: " + stationName);

            if (coordinateCache[stationName]) {
                console.log("Using cached coordinates for " + stationName);
                var stationData = coordinateCache[stationName];
                callback(stationData.lat, stationData.lot, stationData.route);
            } else {
                console.error("Coordinates not found for station: " + stationName);
                callback(null, null, null);
            }
        }

        function getLineData() {
            var lineName = document.getElementById('lineName').value;
            currentLineName = lineName;
            updateTrainPositions();
            // 주기적으로 업데이트
            setInterval(updateTrainPositions, updateInterval);
        }

		//서울시 지하철 실시간 열차 위치정보 API
        function updateTrainPositions() {
            console.log("Updating train positions for line: " + currentLineName);
            var encodedLineName = encodeURIComponent(currentLineName);
            var apiUrl = 'http://swopenAPI.seoul.go.kr/api/subway/' + apiKey + '/xml/realtimePosition/0/5/' + encodedLineName;

            var xhr = new XMLHttpRequest();
            xhr.open('GET', apiUrl, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        console.log("Subway API response: ", xhr.responseText);
                        var parser = new DOMParser();
                        var xmlDoc = parser.parseFromString(xhr.responseText, "application/xml");
                        displayTrainPositions(xmlDoc);
                    } else {
                        console.error('Subway API error: ' + xhr.status);
                        console.error('Full response: ', xhr.responseText);
                    }
                }
            };
            xhr.send();
        }

        function displayTrainPositions(xml) {
            var rows = xml.getElementsByTagName("row");

            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                var trainNumberElement = row.getElementsByTagName("trainNo")[0];
                var stationNameElement = row.getElementsByTagName("statnNm")[0];

                if (trainNumberElement && stationNameElement) {
                    var trainNumber = trainNumberElement.textContent;
                    var stationName = stationNameElement.textContent;

                    (function(trainNumber, stationName) {
                        getCoordinates(stationName, function(lat, lot, route) {
                            console.log("Displaying marker for train: " + trainNumber + " at station: " + stationName + " (" + lat + ", " + lot + ")");
                            if (lat && lot) {
                                if (trainMarkers[trainNumber]) {
                                    var marker = trainMarkers[trainNumber];
                                    var prevLatLng = marker.getPosition();
                                    var duration = calculateDuration(route, stationName);
                                    animateMarker(marker, prevLatLng.lat(), prevLatLng.lng(), lat, lot, duration);
                                } else {
                                    var marker = new naver.maps.Marker({
                                        position: new naver.maps.LatLng(lat, lot),
                                        map: map,
                                        title: '열차 ' + trainNumber + ' - ' + stationName + ' (' + route + ')',
                                        icon: {
                                            content: '<div class="custom-marker"><span><img src="../img/marker.png" style="width:15px;">' + trainNumber + '</span></div>',
                                            anchor: new naver.maps.Point(12, 35)
                                        }
                                    });
                                    trainMarkers[trainNumber] = marker;
                                }
                            } else {
                                console.warn('Skipping marker for train: ' + trainNumber + ' due to missing coordinates');
                            }
                        });
                    })(trainNumber, stationName);
                } else {
                    console.error('Missing train number or station name in the API response');
                }
            }
        }

        function calculateDuration(route, stationName) {
            if (distanceCache[route] && distanceCache[route][stationName]) {
                var timeString = distanceCache[route][stationName].time;
                var timeParts = timeString.split(':');
                var minutes = parseInt(timeParts[0]) * 60 + parseInt(timeParts[1]);
                return minutes * 1000; // milliseconds
            }
            return 2000; // default duration
        }

        function animateMarker(marker, startLat, startLng, endLat, endLng, duration) {
            var startTime = Date.now();
            var startLatLng = new naver.maps.LatLng(startLat, startLng);
            var endLatLng = new naver.maps.LatLng(endLat, endLng);

            function moveMarker() {
                var elapsedTime = Date.now() - startTime;
                var progress = elapsedTime / duration;

                if (progress < 1) {
                    var currentLat = startLat + (endLat - startLat) * progress;
                    var currentLng = startLng + (endLng - startLng) * progress;
                    marker.setPosition(new naver.maps.LatLng(currentLat, currentLng));
                    requestAnimationFrame(moveMarker);
                } else {
                    marker.setPosition(endLatLng);
                }
            }

            moveMarker();
        }

        // 지도 초기화 함수 호출
        initMap();
    </script>
	<jsp:include page="footer.jsp" />
</body>
</html>

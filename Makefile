js: bing.geojson mapbox.geojson
	./prepare-geojson.pl bing.geojson   > bing.js
	./prepare-geojson.pl mapbox.geojson > mapbox.js

server:
	python -m SimpleHTTPServer
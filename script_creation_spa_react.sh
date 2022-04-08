#!/bin/bash

# Requirements : Be sure to have the latest version of nodeJS and npm.
# Requirements : Be sure the cd in the 'creaton_mise_en_place_environnement_react' get u in the folder where u want to create your spa react.

creation_mise_en_place_environnement_react () {
	
	read -e -p 'Enter the path to te file :' FILEPATH
	cd $FILEPATH
	read -e -p 'Enter the name of your spa react :' FOLDERNAME
	npx create-react-app $FOLDERNAME
	cd $FOLDERNAME
	npm install axios
	npm install react-axios
	npm install react-router-dom@6
	rm src/App.css src/App.test.js src/index.css src/logo.svg src/reportWebVitals.js src/setupTests.js
	rm public/favicon.ico public/logo192.png public/logo512.png public/manifest.json public/robots.txt
	sed -i 1,2d src/App.js
	sed -i 5,18d src/App.js
	sed -i 3d src/index.js
	sed -i 4d src/index.js
	sed -i 11,16d src/index.js
	code .
	npm start

}

creation_mise_en_place_environnement_react

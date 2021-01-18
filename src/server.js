const express = require('express');
const app = express();
const port = 3000;

let visitCount = 0;

app.get('/', (req, res) => {
	visitCount++;

	res.json({
		message:`Hello there! This app has been visited ${visitCount} times!`
	});
});

app.listen(port, () => {
	console.log(`	
	Example app running! Please check your Docker image for its port & host by running 'docker ps' in your terminal.
	Docker will remap your port from your internal port (eg. 3000) to an external port (eg. 49160).
	`);
});
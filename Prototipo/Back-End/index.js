var express = require("express");
const { routeVisitante } = require("./InterfacesWeb/InterfasVisitante");
var bodyParser = require('body-parser')
const PORT = process.env.PORT || 5000;

var app = express();
app.use(bodyParser.json());
app.use(routeVisitante);

app.listen(PORT, function () {
    console.log('Example app listening on port ', PORT);
});
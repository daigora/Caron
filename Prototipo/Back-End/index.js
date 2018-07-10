var express = require("express");

const { routeItem } = require("./InterfacesWeb/InterfazItems");
const { routeRecluso } = require("./InterfacesWeb/InterfazRecluso");
const { routeUsuario } = require("./InterfacesWeb/InterfazUsuario");
const { routeVisita } = require("./InterfacesWeb/InterfazVisita");
const { routeVisitante } = require("./InterfacesWeb/InterfazVisitante");
var bodyParser = require('body-parser')
const PORT = process.env.PORT || 5000;

var app = express();
app.use(bodyParser.json());
app.use(routeVisitante);
app.use(routeRecluso);
app.use(routeVisita);
app.use(routeUsuario);
app.use(routeItem);

app.listen(PORT, function () {
    console.log('Example app listening on port ', PORT);
});
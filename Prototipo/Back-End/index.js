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

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header('Access-Control-Allow-Methods', 'POST, GET, PUT, DELETE, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
  });

app.use(routeVisitante);
app.use(routeRecluso);
app.use(routeVisita);
app.use(routeUsuario);
app.use(routeItem);

app.listen(PORT, function () {
    console.log('Example app listening on port ', PORT);
});

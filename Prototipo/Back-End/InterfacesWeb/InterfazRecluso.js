var express = require("express");
const { consultarListaReclusos } = require("../Controladores/ConsultarListaReclusos");

var routeRecluso = express.Router();

routeRecluso.route("/recluso")
.get((req, res) => {
    consultarListaReclusos(req.query.cedula)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

exports.routeRecluso = routeRecluso;
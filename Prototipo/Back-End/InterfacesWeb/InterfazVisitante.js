var express = require("express");
const { registrarVisitante } = require("../Controladores/RegistrarVisitante");
const { consultarVisitante } = require("../Controladores/ConsultarVisitante");
const { actualizarVisitante } = require("../Controladores/ActualizarVisitante");

var routeVisitante = express.Router();

routeVisitante.route("/visitante")
.post((req, res) => {
    registrarVisitante(req.body)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

routeVisitante.route("/visitante/:idusuario")
.get((req, res) => {
    consultarVisitante(req.params.idusuario)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
})
.put((req, res) => {
    actualizarVisitante(req.body, req.params.idusuario)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

exports.routeVisitante = routeVisitante;
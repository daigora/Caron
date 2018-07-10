var express = require("express");
const { consultarVisitasUsuario } = require("../Controladores/ConsultarVisitasVisitante");
const { solicitarCita } = require("../Controladores/SolicitarCita");

var routeVisita = express.Router();

routeVisita.route("/visita/:idusuario")
.post((req, res) => {
    solicitarCita(req.body, req.params.idusuario)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
})
.get((req, res) => {
    consultarVisitasUsuario(req.params.idusuario)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

exports.routeVisita = routeVisita;
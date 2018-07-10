var express = require("express");
const { autenticarUsuario } = require("../Controladores/AutenticarUsuario");

var routeUsuario = express.Router();

routeUsuario.route("/usuario")
.post((req, res) => {
    autenticarUsuario(req.body)
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

exports.routeUsuario = routeUsuario;
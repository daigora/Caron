var express = require("express");
const { consultarItemsIngreso } = require("../Controladores/ConsultarItemsIngreso");

var routeItem = express.Router();

routeItem.route("/item")
.get((req, res) => {
    consultarItemsIngreso()
    .then((response) => {
        res.status(200).send(response);
    })
    .catch(() => {
        res.status(400).send();
    });
});

exports.routeItem = routeItem;
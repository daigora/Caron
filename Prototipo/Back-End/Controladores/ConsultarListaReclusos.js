const { listarReclusos, traerReclusoPorCedula } = require("../EntidadesPersistencia/Recluso");

exports.consultarListaReclusos = function(cedula) {
    return new Promise((resolve) => {
        var promesa = {};
        if (cedula) {
            promesa = traerReclusoPorCedula(cedula);
        } else {
            promesa = listarReclusos();
        }
        promesa
        .then((resRecluso) => {
            var reclusos = [];
            resRecluso.rows.forEach((infoRecluso) => {
                reclusos.push({
                    id: infoRecluso[0],
                    estado: infoRecluso[1],
                    carcel: infoRecluso[2],
                    nombre: infoRecluso[3],
                    apellido: infoRecluso[4],
                    cedula: infoRecluso[5],
                    fechanacimiento: infoRecluso[6],
                    numcelda: infoRecluso[7],
                    patio: infoRecluso[8],
                    motivoreclusion: infoRecluso[9],
                    voluntadvisita: infoRecluso[10]
                });
            });
            resolve({
                status: 1,
                data: reclusos
            });
        })
        .catch((error) => {
            resolve({
                status: 0,
                error: error.message
            });
        });
    });
};
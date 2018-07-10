const { consultarVisitaPorVisitante } = require("../EntidadesPersistencia/Visita");

exports.consultarVisitasUsuario = function(idusuario) {
    return new Promise((resolve) => {
        consultarVisitaPorVisitante(idusuario)
        .then((resConsulta) => {
            var visitas = [];
            resConsulta.rows.forEach((infoVisita) => {
                visitas.push({
                    id: infoVisita[0],
                    estado: infoVisita[1],
                    nombreRecluso: infoVisita[2],
                    apellidoRecluso: infoVisita[3],
                    nombreVisitante: infoVisita[4],
                    apellidoVisitante: infoVisita[5],
                    fecha: infoVisita[6],
                    horaInicio: infoVisita[7],
                    horaFin: infoVisita[8],
                    carcel: infoVisita[9],
                    direccionCarcel: infoVisita[10],
                    motivo: infoVisita[11],
                });
            });
            resolve({
                status: 1,
                data: visitas
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
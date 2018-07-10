const { crearVisita } = require("../EntidadesPersistencia/Visita");
const { consultarVisitante } = require("../Controladores/ConsultarVisitante");

/*
dataVisita =
{
    recluso,
    fecha,
    horaini,
    horafin,
    motivo
}
*/

exports.solicitarCita = function(dataVisita, idusuario) {
    return new Promise((resolve) => {
        dataVisita.estado = "EV01";
        consultarVisitante(idusuario)
        .then((resVisitante) => {
            if (resVisitante.status === 1) {
                dataVisita.visitante = resVisitante.data.idvisitante;
                return crearVisita(dataVisita);
            }
            throw new Error("Visitante inexistente");
        })
        .then(() => {
            resolve({
                status: 1
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
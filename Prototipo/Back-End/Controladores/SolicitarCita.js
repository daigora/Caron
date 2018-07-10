const { crearVisita } = require("../EntidadesPersistencia/Visita");
const { consultarVisitante } = require("../Controladores/ConsultarVisitante");
const { guardarItemVisita } = require("../EntidadesPersistencia/ItemVisita");

/*
dataVisita =
{
    recluso,
    fecha,
    horaini,
    horafin,
    motivo,
    items,
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
        .then((resVisita) => {
            const idvisita = resVisita.rows[0][0];
            var arrayItems = [];
            dataVisita.items.forEach(iditem => {
                arrayItems.push(guardarItemVisita(idvisita, iditem));
            });
            return Promise.all(arrayItems);
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
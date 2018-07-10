const { actualizarVisitante } = require("../EntidadesPersistencia/Visitante");
const { consultarVisitante } = require("./ConsultarVisitante");

/*
dataVisitante = 
{
    nombre,
    apellido,
    cedula,
    direccion,
    telefono,
    fechanacimiento,
}
*/

exports.actualizarVisitante = function(dataVisitante, idusuario) {
    return new Promise((resolve) => {
        actualizarVisitante(dataVisitante, idusuario)
        .then(() => {
            return consultarVisitante(idusuario);
        })
        .then((result) => {
            resolve(result);
        })
        .catch((error) => {
            resolve({
                status: 0,
                error: error.message
            });
        });
    });
};
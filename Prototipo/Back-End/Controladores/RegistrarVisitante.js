const { registrarUsuario } = require("./RegistrarUsuario");
const { crearVisitante } = require("../EntidadesPersistencia/Visitante");

/*
dataVisitante =
{
    email,
    pass,
    nombre,
    apellido,
    cedula,
    direccion,
    telefono,
    fechanacimiento
}
*/

exports.registrarVisitante = function(dataVisitante) {
    return new Promise((resolve) => {
        const nick = dataVisitante.email.split("@")[0];
        registrarUsuario({
            nickname: nick,
            pass: dataVisitante.pass,
            email: dataVisitante.email
        })
        .then((resUsuario) => {
            if (resUsuario.status === 2) {
                return crearVisitante({
                    usuario: resUsuario.data.rows[0].idusuario,
                    nombre: dataVisitante.nombre,
                    apellido: dataVisitante.apellido,
                    cedula: dataVisitante.cedula,
                    direccion: dataVisitante.direccion,
                    telefono: dataVisitante.telefono,
                    fechanacimiento: new Date(dataVisitante.fechanacimiento)
                });
            }
            throw new Error("Usuario ya existente");
        })
        .then((resVisitante) => {
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

/*
Status
0: Error
1: Todo satisfactorio
*/


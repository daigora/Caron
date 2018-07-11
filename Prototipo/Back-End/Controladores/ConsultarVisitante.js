const { consultarVisitantePorUsuario } = require("../EntidadesPersistencia/Visitante");

exports.consultarVisitante = function(id) {
    return new Promise((resolve) => {
        consultarVisitantePorUsuario(id)
        .then((resVisitante) => {
            if (resVisitante.rows.length === 1) {
                const row = resVisitante.rows[0];
                resolve({
                    status: 1,
                    data: {
                        idvisitante: row[0],
                        idusuario: row[1],
                        idarchivo: row[2],
                        nombres: row[3],
                        apellidos: row[4],
                        cedula: row[5],
                        direccion: row[6],
                        telefono: row[7],
                        fechanacimiento: row[8],
                        nickname: row[9],
                        email: row[10]
                    }
                })
            }
            else {
                throw new Error("Visitante inexistente");
            }
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
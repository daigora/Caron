const { obtenerPorEmail } = require("../EntidadesPersistencia/Usuario");

/*
dataAutenticacion =
{
    email,
    password
}
*/

exports.autenticarUsuario = function(dataAutenticacion) {
    return new Promise((resolve) => {
        obtenerPorEmail(dataAutenticacion.email, dataAutenticacion.password)
        .then((res) => {
            if (res.rows.length > 0) {
                resolve({
                    status: 1,
                    data: {
                        idusuario: res.rows[0][0]
                    }
                });
            } else {
                throw new Error("Usuario ya existente");
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
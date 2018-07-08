const { agregarUsuario, obtenerPorEmail } = require("../EntidadesPersistencia/Usuario");

/*
dataUser =
{
    nickname,
    pass,
    email
}
*/

exports.registrarUsuario = function (dataUser) {
    return new Promise((resolve) => {
        obtenerPorEmail(dataUser.email, dataUser.pass)
            .then((res) => {
                if (res.rows.length > 0) {
                    throw new Error("Usuario ya existente");
                } else {
                    return agregarUsuario(dataUser);
                }
            })
            .then((userInfo) => {
                resolve({
                    status: 2,
                    data: userInfo
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
0: Error :v
1: Email ya registrado
2: Todo satisfactorio
*/
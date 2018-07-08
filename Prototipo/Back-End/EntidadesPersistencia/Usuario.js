const { client } = require("./Conexion");

exports.agregarUsuario = function (dataUsuario) {
    const text = "INSERT INTO public.usuario(nickname, contrasena, email) VALUES($1, $2, $3) RETURNING *";
    const values = [dataUsuario.nickname, dataUsuario.pass, dataUsuario.email];
    return client.query(text, values);
};

exports.obtenerPorEmail = function (email, pass) {
    const query = {
        text: "SELECT * FROM public.usuario WHERE email = $1 AND contrasena = $2",
        values: [email, pass],
        rowMode: 'array',
    };
    return client.query(query);
};

exports.obtenerPorNick = function (nick, pass) {
    const query = {
        text: "SELECT * FROM public.usuario WHERE nickname = $1 AND contrasena = $2",
        values: [nick, pass],
        rowMode: 'array',
    };
    return client.query(query);
};
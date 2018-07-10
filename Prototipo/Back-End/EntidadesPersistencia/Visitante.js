const { client } = require("./Conexion");

exports.crearVisitante = function (dataVisitante) {
    const text = "INSERT INTO public.visitante "+
        "(idusuario, idarchivo, nombres, apellidos, " +
        "cedula, direccion, telefono, fechanacimiento)" +
        "VALUES ($1, null, $2, $3, $4, $5, $6, $7);";
    const values = [
        dataVisitante.usuario,
        dataVisitante.nombre,
        dataVisitante.apellido,
        dataVisitante.cedula,
        dataVisitante.direccion,
        dataVisitante.telefono,
        dataVisitante.fechanacimiento
    ];
    return client.query(text, values);
};

exports.actualizarVisitante = function (dataVisitante, idusuario) {
    const text = "UPDATE public.visitante " +
        "SET nombres=$1, apellidos=$2, " +
        "cedula=$3, direccion=$4, telefono=$5, fechanacimiento=$6 " +
        "WHERE idusuario = $7;";
    const values = [
        dataVisitante.nombre,
        dataVisitante.apellido,
        dataVisitante.cedula,
        dataVisitante.direccion,
        dataVisitante.telefono,
        dataVisitante.fechanacimiento,
        idusuario
    ];
    return client.query(text, values);
};

exports.consultarVisitantePorUsuario = function (idUsuario) {
    const query = {
        text: "SELECT * FROM public.visitante WHERE idusuario = $1",
        values: [idUsuario],
        rowMode: 'array',
    };
    return client.query(query);
};

exports.consultarVisitantePorCedula = function (cedula) {
    const query = {
        text: "SELECT * FROM public.visitante WHERE cedula = $1",
        values: [cedula],
        rowMode: 'array',
    };
    return client.query(query);
};
const { client } = require("./Conexion");

exports.listarReclusos = function() {
    const query = {
        text:   "SELECT recluso.idrecluso, estrec.descestado as estado," +
                "carcel.nombrecarcel as carcel, recluso.nombres," +
                "recluso.apellido, recluso.cedula, recluso.fechanacimiento, " +
                "recluso.numcelda, recluso.patio, recluso.motivoreclusion," +
                "recluso.voluntadvisita " +
                "FROM public.recluso as recluso," +
                "public.carcel as carcel," +
                "public.estadorecluso as estrec " +
                "where recluso.idcarcel = carcel.idcarcel and " +
                "recluso.idestado = estrec.idestado",
        values: [],
        rowMode: 'array',
    };
    return client.query(query);
};

exports.traerReclusoPorCedula = function(cedula) {
    const query = {
        text:   "SELECT recluso.idrecluso, estrec.descestado as estado," +
                "carcel.nombrecarcel as carcel, recluso.nombres," +
                "recluso.apellido, recluso.cedula, recluso.fechanacimiento, " +
                "recluso.numcelda, recluso.patio, recluso.motivoreclusion," +
                "recluso.voluntadvisita" +
                "FROM public.recluso as recluso," +
                "public.carcel as carcel," +
                "public.estadorecluso as estrec" +
                "where recluso.idcarcel = carcel.idcarcel and" +
                "recluso.idestado = estrec.idestado and cedula = $1",
        values: [cedula],
        rowMode: 'array',
    };
    return client.query(query);
};
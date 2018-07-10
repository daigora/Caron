const { client } = require("./Conexion");

exports.crearVisita = function(dataVisita) {
    const query = {
        text: "INSERT INTO public.visita("+
        "idcontrolador, idportero, idestadovisita, idrecluso,"+
        "fechavisita, horaini, horafin, motivo, numticket, idvisitante) "+
        "VALUES (null, null, $1, $2, $3, $4, $5, $6, null, $7) RETURNING *",
        values: [
            dataVisita.estado,
            dataVisita.recluso,
            dataVisita.fecha,
            dataVisita.horaini,
            dataVisita.horafin,
            dataVisita.motivo,
            dataVisita.visitante
        ],
        rowMode: 'array'
    };

    return client.query(query);
};

exports.consultarVisitaPorVisitante = function(idvisitante) {
    const query = {
        text:   "SELECT " +
                "visita.idvisita, estado.descrestado as estado,"+
                "recluso.nombres as recnom, recluso.apellido as recape,"+
                "visitante.nombres as visnom, visitante.apellidos as visape,"+
                "visita.fechavisita, visita.horaini,"+
                "visita.horafin, carcel.nombrecarcel as carcel,"+
                "carcel.direccion as cardir, visita.motivo "+
                "FROM 	public.visita as visita,"+
                "public.estadovisita as estado,"+
                "public.recluso as recluso,"+
                "public.visitante as visitante,"+
                "public.carcel as carcel "+
                "where	visita.idestadovisita = estado.idestadovisita and "+
                "visita.idrecluso = recluso.idrecluso and "+
                "visita.idvisitante = visitante.idvisitante and "+
                "recluso.idcarcel = carcel.idcarcel and "+
                "visitante.idusuario = $1;",
        values: [idvisitante],
        rowMode: 'array',
    };
    return client.query(query);
};
const { client } = require("./Conexion");

exports.consultarItems = function() {
    const query = {
        text:   "SELECT iditem, nombreitem FROM public.itemingreso;",
        values: [],
        rowMode: 'array',
    };
    return client.query(query);
};
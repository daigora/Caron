const { client } = require("./Conexion");

exports.guardarItemVisita = function(idvisita, iditem) {
    const text = "INSERT INTO public.itemingresovisita(idvisita, iditem) VALUES ($1, $2);";
    const values = [idvisita, iditem];
    return client.query(text, values);
};
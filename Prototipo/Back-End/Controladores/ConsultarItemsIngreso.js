const { consultarItems } = require("../EntidadesPersistencia/Item");

exports.consultarItemsIngreso = function() {
    return new Promise((resolve) => {
        consultarItems()
        .then((resItems) => {
            var items = [];
            resItems.rows.forEach((infoItem) => {
                items.push({
                    id: infoItem[0],
                    nombre: infoItem[1]
                });
            });
            resolve({
                status: 1,
                data: items
            });
        })
        .catch((err) => {
            resolve({
                status: 0,
                error: err.message
            });
        });
    });
};
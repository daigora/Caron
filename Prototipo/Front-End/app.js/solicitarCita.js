const solicitarCitaVisitante = function() {
    const idusuario = localStorage.getItem("usuario");
    const idrecluso = document.getElementById("idrecluso").value;
    const horaini = document.getElementById("horaini").value;
    const horafin = document.getElementById("horafin").value;
    const motivo = document.getElementById("idrecluso").value;
    const fecha = document.getElementById("motivo").value;
    var items = [];
    document.getElementsByName("items").forEach((checkItem) => {
        if (checkItem.checked) {
            items.push(checkItem.value);
        }
    });
    axios.post(urlBase + "/visita/" + idusuario, {
        "recluso": idrecluso,
        "fecha": fecha,
        "horaini": horaini,
        "horafin": horafin,
        "motivo": motivo,
        "items": items
    })
    .then(() => {
        alert("Solicitud enviada, este pendiente de las notificaciones para saber si fue aprobada su solicitud o no");
        window.location.href="inicio.html";
    })
    .catch((error) => {
        alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
    });
};

const cargarListaReclusos = function() {
    axios.get(urlBase + "/recluso")
    .then((result) => {
        if (result.data.status == 1) {
            var textoOpciones = "<option disabled selected value> -- Seleccione un recluso -- </option>";
            result.data.data.forEach((recluso) => {
                textoOpciones +="<option value='" + recluso.id + "'>" + recluso.cedula + ": " + recluso.nombre + " " + recluso.apellido + "</option>"
            });
            document.getElementById("listareclusos").innerHTML=textoOpciones;
        } else {
            throw new Error(result.data.error);
        }
    })
    .catch((error) => {
        alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
    });
};

const listaItems = function() {
    axios.get(urlBase + "/item")
    .then((result) => {
        if (result.data.status == 1) {
            var textoItems = "<label for='celular'>Implementos para llevar</label>";
            result.data.data.forEach((item) => {
                textoItems +="<div class='checkbox'>"+
                "<label><input type='checkbox' value='" + item.id + "' name='items'>" + item.nombre + "</label>"+
                "</div>";
            });
            document.getElementById("listaitems").innerHTML=textoItems;
        } else {
            throw new Error(result.data.error);
        }
    })
    .catch((error) => {
        alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
    });
};

const seleccionarRecluso = function() {
    var e = document.getElementById("listareclusos");
    var idrecluso = e.options[e.selectedIndex].value;
    document.getElementById("idrecluso").value = idrecluso;
};

listaItems();

cargarListaReclusos();
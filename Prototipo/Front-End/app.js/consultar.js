const consultar = function() {
    const idusuario = localStorage.getItem("usuario");
    axios.get(urlBase + "/visitante/" + idusuario)
    .then((result) => {
        document.getElementById("firstName").value = result.data.data.nombres;
        document.getElementById("lastName").value = result.data.data.apellidos;
        document.getElementById("usuario").value = result.data.data.nickname;
        document.getElementById("email").value = result.data.data.email;
        document.getElementById("phone").value = result.data.data.telefono;
        document.getElementById("cedula").value = result.data.data.cedula;
        document.getElementById("address").value = result.data.data.direccion;

        var fechan = new Date(result.data.data.fechanacimiento);
        var curr_date = fechan.getDate();
        if (curr_date < 10) {
            curr_date = '0'+curr_date;
        }
        var curr_month = fechan.getMonth() + 1;
        if (curr_month < 10) {
            curr_month = '0'+curr_month;
        }
        const curr_year = fechan.getFullYear();
        document.getElementById("fechanacimiento").value = curr_year+"-"+curr_month+"-"+curr_date;
    })
    .catch((error) => {
        alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
    });
};

consultar();
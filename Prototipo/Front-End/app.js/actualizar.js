const actualizarVisitante = function() {
    const idusuario = localStorage.getItem("usuario");
    const firstName = document.getElementById("firstName").value;
    const lastName = document.getElementById("lastName").value;
    const phone = document.getElementById("phone").value;
    const cedula = document.getElementById("cedula").value;
    const address = document.getElementById("address").value;
    const fechanacimiento = document.getElementById("fechanacimiento").value;
    axios.put(urlBase + "/visitante/" + idusuario,{
        "nombre": firstName,
        "apellido": lastName,
        "cedula": cedula,
        "direccion": address,
        "telefono": phone,
        "fechanacimiento": fechanacimiento
    })
    .then((result) => {
        if (result.data.status == 1) {
            window.location.href="inicio.html";
        } else {
            throw new Error(result.data.message);
        }
    })
    .catch((error) => {
        alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
    });
};
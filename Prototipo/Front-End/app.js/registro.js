const registroVisitante = function() {
    const firstName = document.getElementById("firstName").value;
    const lastName = document.getElementById("lastName").value;
    const pass = document.getElementById("pass").value;
    const confirmpass = document.getElementById("confirmpass").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;
    const address = document.getElementById("address").value;
    if (pass == confirmpass) {
        axios.post(urlBase + "/visitante", {
            "email": email,
            "pass": pass,
            "nombre": firstName,
            "apellido": lastName,
            "cedula": "1032485940",
            "direccion": address,
            "telefono": phone,
            "fechanacimiento": "2012-04-23T18:25:43.511Z"
        })
        .then((result) => {
            if (result.data.status == 1) {
                return axios.post(urlBase + "/usuario", {
                    "email": email,
                    "password": pass
                });
            }
            throw new Error(result.data.message);
        })
        .then((result) => {
            if (result.data.status == 1) {
                localStorage.setItem("usuario", result.data.data.idusuario);
            } else {
                throw new Error(result.data.message);
            }
        })
        .catch((error) => {
            alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
        })
    } else {
        alert("Las contraseñas deben coincidir");
    }

};
const registroVisitante = function() {
    const firstName = document.getElementById("firstName").value;
    const lastName = document.getElementById("lastName").value;
    const pass = document.getElementById("pass").value;
    const confirmpass = document.getElementById("confirmpass").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;
    const address = document.getElementById("address").value;
    const cedula = document.getElementById("cedula").value;
    const fechanacimiento = document.getElementById("fechanacimiento").value;
    if (pass == confirmpass) {
        axios.post(urlBase + "/visitante", {
            "email": email,
            "pass": pass,
            "nombre": firstName,
            "apellido": lastName,
            "cedula": cedula,
            "direccion": address,
            "telefono": phone,
            "fechanacimiento": fechanacimiento
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
                window.location.href="inicio.html";
            } else {
                throw new Error(result.data.message);
            }
        })
        .catch((error) => {
            alert(error.message || "Ocurrio un error, por favor intentelo en unos minutos");
        });
    } else {
        alert("Las contraseñas deben coincidir");
    }

};
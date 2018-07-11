const login = function() {
    const pass = document.getElementById("pass").value;
    const email = document.getElementById("email").value;
    axios.post(urlBase + "/usuario", {
        "email": email,
        "password": pass
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
};
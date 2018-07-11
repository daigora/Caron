const verificarLoggin = function() {
    const idusuario = localStorage.getItem("usuario");
    if (!idusuario) {
        window.location.href="principal.html";
    }
}

verificarLoggin();
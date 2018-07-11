const verificarLoggin = function() {
    const idusuario = localStorage.getItem("usuario");
    if (!idusuario) {
        window.location.href="index.html";
    }
}

verificarLoggin();
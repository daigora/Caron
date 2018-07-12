var chai = require('chai');
var chaiHttp = require('chai-http');
const expect = require('chai').expect;

chai.use(chaiHttp);
const url = "http://localhost:5000";

describe("Crear visitante", () => {
    it("Puede crear un visitante", (done) => {
        chai.request(url)
            .post("/visitante")
            .send({
                email: "ggizipapa@gmail.com",
                pass: "asd123",
                nombre: "Diego",
                apellido: "Correa",
                cedula: "1032485940",
                direccion: "Cll 35b#435",
                telefono: "34231233",
                fechanacimiento: "2012-04-23"
            })
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Consultar visitante", () => {
    it("Puede consultar visitante", (done) => {
        chai.request(url)
            .get("/visitante/1")
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                } else {
                    expect(res.body.data).to.have.property("idusuario").to.be.equal(1);
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Actualizar visitante", () => {
    it("Puede actualizar visitante", (done) => {
        chai.request(url)
            .put("/visitante/1")
            .send({
                "nombre": "Alejandro",
                "apellido": "Ramiro",
                "cedula": "1032485940",
                "direccion": "Cll 35b#435",
                "telefono": "34231233",
                "fechanacimiento": "2012-04-23T18:25:43.511Z"
            })
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                } else {
                    expect(res.body.data).to.have.property("idusuario").to.be.equal(1);
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Listar reclusos", () => {
    it("Puede ver los reclusos", (done) => {
        chai.request(url)
            .get("/recluso")
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                } else {
                    expect(res.body.data).to.be.a("array");
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Autenticar usuario", () => {
    it("Puede autenticar visitante", (done) => {
        chai.request(url)
            .post("/usuario")
            .send({
                "email": "alejokun@gmail.com",
                "password": "asd123"
            })
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                } else {
                    expect(res.body.data).to.have.property("idusuario").to.be.a("number");
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Listar items", () => {
    it("Obtener lista items", (done) => {
        chai.request(url)
            .get("/item")
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                } else {
                    expect(res.body.data).to.be.a("array");
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});

describe("Solicitar visita", () => {
    it("Debe solicitar una cita", (done) => {
        chai.request(url)
            .post("/visita/2")
            .send({
                "recluso": 5,
                "fecha": "1990-10-05",
                "horaini": "10:00",
                "horafin": "11:00",
                "motivo": "La wea",
                "items": ["3","4"]
            })
            .end((err, res) => {
                expect(res.body).to.have.property("status").to.be.a("number");
                if (res.body.status === 0) {
                    expect(res.body).to.have.property("error").to.be.a("string");
                }
                expect(res).to.have.status(200);
                done();
            });
    });
});
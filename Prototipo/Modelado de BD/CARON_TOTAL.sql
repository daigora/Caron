--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-07-10 08:20:30 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2358 (class 1262 OID 25444)
-- Name: CARON; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "CARON";


\connect "CARON"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 25447)
-- Name: archivo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.archivo (
    idarchivo integer NOT NULL,
    idtipoarchivo text NOT NULL,
    nombrearchivo text NOT NULL,
    formato text NOT NULL,
    urlarchivo text NOT NULL
);


--
-- TOC entry 181 (class 1259 OID 25445)
-- Name: archivo_idarchivo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.archivo_idarchivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 181
-- Name: archivo_idarchivo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.archivo_idarchivo_seq OWNED BY public.archivo.idarchivo;


--
-- TOC entry 183 (class 1259 OID 25458)
-- Name: archivovisita; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.archivovisita (
    idvisita integer NOT NULL,
    idarchivo integer NOT NULL
);


--
-- TOC entry 185 (class 1259 OID 25468)
-- Name: carcel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carcel (
    idcarcel integer NOT NULL,
    nombrecarcel text NOT NULL,
    direccion text NOT NULL,
    telefono text NOT NULL
);


--
-- TOC entry 184 (class 1259 OID 25466)
-- Name: carcel_idcarcel_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carcel_idcarcel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 184
-- Name: carcel_idcarcel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carcel_idcarcel_seq OWNED BY public.carcel.idcarcel;


--
-- TOC entry 186 (class 1259 OID 25478)
-- Name: cargo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cargo (
    idcargo text NOT NULL,
    descrcargo text NOT NULL
);


--
-- TOC entry 188 (class 1259 OID 25489)
-- Name: empleado; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.empleado (
    idempleado integer NOT NULL,
    idcarcel integer NOT NULL,
    idcargo text NOT NULL,
    idusuario integer NOT NULL,
    nombres text NOT NULL,
    apellidos text NOT NULL,
    cedula text NOT NULL,
    direccion text NOT NULL,
    telefono text NOT NULL,
    fechanacimiento date NOT NULL
);


--
-- TOC entry 187 (class 1259 OID 25487)
-- Name: empleado_idempleado_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empleado_idempleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 187
-- Name: empleado_idempleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empleado_idempleado_seq OWNED BY public.empleado.idempleado;


--
-- TOC entry 189 (class 1259 OID 25502)
-- Name: estadorecluso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.estadorecluso (
    idestado text NOT NULL,
    descestado text NOT NULL
);


--
-- TOC entry 190 (class 1259 OID 25511)
-- Name: estadovisita; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.estadovisita (
    idestadovisita text NOT NULL,
    descrestado text NOT NULL
);


--
-- TOC entry 191 (class 1259 OID 25520)
-- Name: itemingreso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.itemingreso (
    iditem text NOT NULL,
    nombreitem text NOT NULL
);


--
-- TOC entry 192 (class 1259 OID 25529)
-- Name: itemingresovisita; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.itemingresovisita (
    idvisita integer NOT NULL,
    iditem text NOT NULL
);


--
-- TOC entry 194 (class 1259 OID 25542)
-- Name: recluso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.recluso (
    idrecluso integer NOT NULL,
    idestado text NOT NULL,
    idcarcel integer NOT NULL,
    nombres text NOT NULL,
    apellido text NOT NULL,
    cedula text NOT NULL,
    fechanacimiento date NOT NULL,
    numcelda integer NOT NULL,
    patio text NOT NULL,
    motivoreclusion text NOT NULL,
    voluntadvisita boolean NOT NULL
);


--
-- TOC entry 193 (class 1259 OID 25540)
-- Name: recluso_idrecluso_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.recluso_idrecluso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 193
-- Name: recluso_idrecluso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.recluso_idrecluso_seq OWNED BY public.recluso.idrecluso;


--
-- TOC entry 195 (class 1259 OID 25554)
-- Name: tipoarchivo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipoarchivo (
    idtipoarchivo text NOT NULL,
    desctipoarchivo text NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 25565)
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nickname text NOT NULL,
    contrasena text NOT NULL,
    email text NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 25563)
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;


--
-- TOC entry 199 (class 1259 OID 25577)
-- Name: visita; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.visita (
    idvisita integer NOT NULL,
    idcontrolador integer,
    idportero integer,
    idestadovisita text NOT NULL,
    idrecluso integer NOT NULL,
    fechavisita date NOT NULL,
    horaini time without time zone NOT NULL,
    horafin time without time zone NOT NULL,
    motivo text NOT NULL,
    numticket text,
    idvisitante integer
);


--
-- TOC entry 198 (class 1259 OID 25575)
-- Name: visita_idvisita_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.visita_idvisita_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 198
-- Name: visita_idvisita_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.visita_idvisita_seq OWNED BY public.visita.idvisita;


--
-- TOC entry 201 (class 1259 OID 25593)
-- Name: visitante; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.visitante (
    idvisitante integer NOT NULL,
    idusuario integer NOT NULL,
    idarchivo integer,
    nombres text NOT NULL,
    apellidos text NOT NULL,
    cedula text NOT NULL,
    direccion text NOT NULL,
    telefono text NOT NULL,
    fechanacimiento date NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 25591)
-- Name: visitante_idvisitante_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.visitante_idvisitante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 200
-- Name: visitante_idvisitante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.visitante_idvisitante_seq OWNED BY public.visitante.idvisitante;


--
-- TOC entry 2136 (class 2604 OID 25450)
-- Name: idarchivo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivo ALTER COLUMN idarchivo SET DEFAULT nextval('public.archivo_idarchivo_seq'::regclass);


--
-- TOC entry 2137 (class 2604 OID 25471)
-- Name: idcarcel; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carcel ALTER COLUMN idcarcel SET DEFAULT nextval('public.carcel_idcarcel_seq'::regclass);


--
-- TOC entry 2138 (class 2604 OID 25492)
-- Name: idempleado; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleado ALTER COLUMN idempleado SET DEFAULT nextval('public.empleado_idempleado_seq'::regclass);


--
-- TOC entry 2139 (class 2604 OID 25545)
-- Name: idrecluso; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recluso ALTER COLUMN idrecluso SET DEFAULT nextval('public.recluso_idrecluso_seq'::regclass);


--
-- TOC entry 2140 (class 2604 OID 25568)
-- Name: idusuario; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);


--
-- TOC entry 2141 (class 2604 OID 25580)
-- Name: idvisita; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita ALTER COLUMN idvisita SET DEFAULT nextval('public.visita_idvisita_seq'::regclass);


--
-- TOC entry 2142 (class 2604 OID 25596)
-- Name: idvisitante; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visitante ALTER COLUMN idvisitante SET DEFAULT nextval('public.visitante_idvisitante_seq'::regclass);


--
-- TOC entry 2333 (class 0 OID 25447)
-- Dependencies: 182
-- Data for Name: archivo; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 181
-- Name: archivo_idarchivo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.archivo_idarchivo_seq', 1, false);


--
-- TOC entry 2334 (class 0 OID 25458)
-- Dependencies: 183
-- Data for Name: archivovisita; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2336 (class 0 OID 25468)
-- Dependencies: 185
-- Data for Name: carcel; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.carcel (idcarcel, nombrecarcel, direccion, telefono) VALUES (1, 'La modelo', 'cr56 # 45-25', '7579862');
INSERT INTO public.carcel (idcarcel, nombrecarcel, direccion, telefono) VALUES (2, 'El buen pastor', 'Av 69 # 8-25', '1258796');


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 184
-- Name: carcel_idcarcel_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carcel_idcarcel_seq', 2, true);


--
-- TOC entry 2337 (class 0 OID 25478)
-- Dependencies: 186
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cargo (idcargo, descrcargo) VALUES ('CR01', 'portero');
INSERT INTO public.cargo (idcargo, descrcargo) VALUES ('CR02', 'controlador');


--
-- TOC entry 2339 (class 0 OID 25489)
-- Dependencies: 188
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.empleado (idempleado, idcarcel, idcargo, idusuario, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (1, 1, 'CR01', 1, 'Richard Mina', 'Perez Perez', '65423169852', 'av 68', '5247896', '1992-10-15');
INSERT INTO public.empleado (idempleado, idcarcel, idcargo, idusuario, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (2, 1, 'CR02', 2, 'Michael Jackson', 'Saenz Perez', '68963254789', 'cr 30', '5246987', '1990-05-27');
INSERT INTO public.empleado (idempleado, idcarcel, idcargo, idusuario, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (3, 1, 'CR02', 3, 'Alejo Miguel', 'Alonso Paez', '8748752146', 'av 92', '9652478', '1985-02-13');


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 187
-- Name: empleado_idempleado_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empleado_idempleado_seq', 3, true);


--
-- TOC entry 2340 (class 0 OID 25502)
-- Dependencies: 189
-- Data for Name: estadorecluso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadorecluso (idestado, descestado) VALUES ('ER01', 'Disponible');
INSERT INTO public.estadorecluso (idestado, descestado) VALUES ('ER02', 'En calabozo');
INSERT INTO public.estadorecluso (idestado, descestado) VALUES ('ER03', 'Fugado');
INSERT INTO public.estadorecluso (idestado, descestado) VALUES ('ER04', 'Hospitalizado');
INSERT INTO public.estadorecluso (idestado, descestado) VALUES ('ER05', 'Liberado');


--
-- TOC entry 2341 (class 0 OID 25511)
-- Dependencies: 190
-- Data for Name: estadovisita; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadovisita (idestadovisita, descrestado) VALUES ('EV01', 'Estado1');
INSERT INTO public.estadovisita (idestadovisita, descrestado) VALUES ('EV02', 'Estado2');
INSERT INTO public.estadovisita (idestadovisita, descrestado) VALUES ('EV03', 'Estado3');
INSERT INTO public.estadovisita (idestadovisita, descrestado) VALUES ('EV04', 'Estado4');
INSERT INTO public.estadovisita (idestadovisita, descrestado) VALUES ('EV05', 'Estado5');


--
-- TOC entry 2342 (class 0 OID 25520)
-- Dependencies: 191
-- Data for Name: itemingreso; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2343 (class 0 OID 25529)
-- Dependencies: 192
-- Data for Name: itemingresovisita; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2345 (class 0 OID 25542)
-- Dependencies: 194
-- Data for Name: recluso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.recluso (idrecluso, idestado, idcarcel, nombres, apellido, cedula, fechanacimiento, numcelda, patio, motivoreclusion, voluntadvisita) VALUES (1, 'ER01', 1, 'Pepe Pipe', 'Lula Silva', '1245698752', '1990-05-21', 25, 'A3', 'Asesinato', true);
INSERT INTO public.recluso (idrecluso, idestado, idcarcel, nombres, apellido, cedula, fechanacimiento, numcelda, patio, motivoreclusion, voluntadvisita) VALUES (2, 'ER01', 1, 'Juan Felipe', 'Sierra Perez', '5321478965', '1985-09-25', 3, 'B7', 'Trafico de drogas', true);
INSERT INTO public.recluso (idrecluso, idestado, idcarcel, nombres, apellido, cedula, fechanacimiento, numcelda, patio, motivoreclusion, voluntadvisita) VALUES (3, 'ER02', 1, 'Dylan Alejandro', 'Medellin Suarez', '7485213654', '1997-07-01', 5, 'C7', 'Violencia intrafamiliar', true);
INSERT INTO public.recluso (idrecluso, idestado, idcarcel, nombres, apellido, cedula, fechanacimiento, numcelda, patio, motivoreclusion, voluntadvisita) VALUES (4, 'ER04', 1, 'Brayan Felipe', 'Orlando Suescun', '7854126985', '1998-05-14', 25, 'B2', 'Violacion', true);
INSERT INTO public.recluso (idrecluso, idestado, idcarcel, nombres, apellido, cedula, fechanacimiento, numcelda, patio, motivoreclusion, voluntadvisita) VALUES (5, 'ER01', 1, 'Millos Andres', 'Chamuza Gutierritos', '6854187452', '1992-12-12', 1, 'A2', 'Robo a mano armada', false);


--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 193
-- Name: recluso_idrecluso_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.recluso_idrecluso_seq', 5, true);


--
-- TOC entry 2346 (class 0 OID 25554)
-- Dependencies: 195
-- Data for Name: tipoarchivo; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2348 (class 0 OID 25565)
-- Dependencies: 197
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (1, 'alejo', 'asd123', 'alejo@gmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (2, 'alejin', 'asd123', 'alejin@gmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (3, 'alejokun', 'asd123', 'alejokun@gmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (4, 'em11111', '12345', 'em11111@inpec.gov.co');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (5, 'em22222', '12345', 'em22222@inpec.gov.co');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (6, 'em33333', '12345', 'em33333@inpec.gov.co');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (7, 'nickmal', '225566', 'nickmal@hotmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (8, 'martha64', '225566', 'martha64@hotmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (9, 'javibooze', '225566', 'javibooze@hotmail.com');
INSERT INTO public.usuario (idusuario, nickname, contrasena, email) VALUES (10, 'ggizipapa', 'asd123', 'ggizipapa@gmail.com');


--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usuario_idusuario_seq', 10, true);


--
-- TOC entry 2350 (class 0 OID 25577)
-- Dependencies: 199
-- Data for Name: visita; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.visita (idvisita, idcontrolador, idportero, idestadovisita, idrecluso, fechavisita, horaini, horafin, motivo, numticket, idvisitante) VALUES (1, NULL, NULL, 'EV01', 5, '1990-10-05', '10:00:00', '11:00:00', 'La wea', NULL, 2);
INSERT INTO public.visita (idvisita, idcontrolador, idportero, idestadovisita, idrecluso, fechavisita, horaini, horafin, motivo, numticket, idvisitante) VALUES (2, NULL, NULL, 'EV01', 5, '1990-10-05', '10:00:00', '11:00:00', 'La wea', NULL, 1);


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 198
-- Name: visita_idvisita_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.visita_idvisita_seq', 2, true);


--
-- TOC entry 2352 (class 0 OID 25593)
-- Dependencies: 201
-- Data for Name: visitante; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (2, 2, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (3, 3, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (4, 4, NULL, 'Nick Jr', 'Mendez Sarmiento', '8963214567', 'av 85', '5246987', '1990-05-27');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (5, 5, NULL, 'Maria Luisa', 'Garcia Salazar', '952524495', 'av 47', '9632456', '1997-08-11');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (6, 6, NULL, 'Juan Esteban', 'Quintero Malu', '856585455', 'cl 47', '9657425', '1995-01-11');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (7, 10, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante (idvisitante, idusuario, idarchivo, nombres, apellidos, cedula, direccion, telefono, fechanacimiento) VALUES (1, 1, NULL, 'Alejandro', 'Ramirez', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');


--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 200
-- Name: visitante_idvisitante_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.visitante_idvisitante_seq', 7, true);


--
-- TOC entry 2145 (class 2606 OID 25455)
-- Name: pk_archivo; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivo
    ADD CONSTRAINT pk_archivo PRIMARY KEY (idarchivo);


--
-- TOC entry 2148 (class 2606 OID 25462)
-- Name: pk_archivovisita; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivovisita
    ADD CONSTRAINT pk_archivovisita PRIMARY KEY (idvisita, idarchivo);


--
-- TOC entry 2154 (class 2606 OID 25476)
-- Name: pk_carcel; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carcel
    ADD CONSTRAINT pk_carcel PRIMARY KEY (idcarcel);


--
-- TOC entry 2157 (class 2606 OID 25485)
-- Name: pk_cargo; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT pk_cargo PRIMARY KEY (idcargo);


--
-- TOC entry 2160 (class 2606 OID 25497)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (idempleado);


--
-- TOC entry 2166 (class 2606 OID 25509)
-- Name: pk_estadorecluso; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estadorecluso
    ADD CONSTRAINT pk_estadorecluso PRIMARY KEY (idestado);


--
-- TOC entry 2169 (class 2606 OID 25518)
-- Name: pk_estadovisita; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estadovisita
    ADD CONSTRAINT pk_estadovisita PRIMARY KEY (idestadovisita);


--
-- TOC entry 2172 (class 2606 OID 25527)
-- Name: pk_itemingreso; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itemingreso
    ADD CONSTRAINT pk_itemingreso PRIMARY KEY (iditem);


--
-- TOC entry 2174 (class 2606 OID 25536)
-- Name: pk_itemingresovisita; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itemingresovisita
    ADD CONSTRAINT pk_itemingresovisita PRIMARY KEY (idvisita, iditem);


--
-- TOC entry 2179 (class 2606 OID 25550)
-- Name: pk_recluso; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recluso
    ADD CONSTRAINT pk_recluso PRIMARY KEY (idrecluso);


--
-- TOC entry 2184 (class 2606 OID 25561)
-- Name: pk_tipoarchivo; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipoarchivo
    ADD CONSTRAINT pk_tipoarchivo PRIMARY KEY (idtipoarchivo);


--
-- TOC entry 2187 (class 2606 OID 25573)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);


--
-- TOC entry 2190 (class 2606 OID 25585)
-- Name: pk_visita; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT pk_visita PRIMARY KEY (idvisita);


--
-- TOC entry 2197 (class 2606 OID 25601)
-- Name: pk_visitante; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visitante
    ADD CONSTRAINT pk_visitante PRIMARY KEY (idvisitante);


--
-- TOC entry 2143 (class 1259 OID 25456)
-- Name: archivo_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX archivo_pk ON public.archivo USING btree (idarchivo);


--
-- TOC entry 2152 (class 1259 OID 25477)
-- Name: carcel_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX carcel_pk ON public.carcel USING btree (idcarcel);


--
-- TOC entry 2155 (class 1259 OID 25486)
-- Name: cargo_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cargo_pk ON public.cargo USING btree (idcargo);


--
-- TOC entry 2158 (class 1259 OID 25498)
-- Name: empleado_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX empleado_pk ON public.empleado USING btree (idempleado);


--
-- TOC entry 2164 (class 1259 OID 25510)
-- Name: estadorecluso_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX estadorecluso_pk ON public.estadorecluso USING btree (idestado);


--
-- TOC entry 2167 (class 1259 OID 25519)
-- Name: estadovisita_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX estadovisita_pk ON public.estadovisita USING btree (idestadovisita);


--
-- TOC entry 2170 (class 1259 OID 25528)
-- Name: itemingreso_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX itemingreso_pk ON public.itemingreso USING btree (iditem);


--
-- TOC entry 2180 (class 1259 OID 25551)
-- Name: recluso_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX recluso_pk ON public.recluso USING btree (idrecluso);


--
-- TOC entry 2149 (class 1259 OID 25464)
-- Name: relarchivovisita2_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relarchivovisita2_fk ON public.archivovisita USING btree (idarchivo);


--
-- TOC entry 2150 (class 1259 OID 25465)
-- Name: relarchivovisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relarchivovisita_fk ON public.archivovisita USING btree (idvisita);


--
-- TOC entry 2151 (class 1259 OID 25463)
-- Name: relarchivovisita_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX relarchivovisita_pk ON public.archivovisita USING btree (idvisita, idarchivo);


--
-- TOC entry 2198 (class 1259 OID 25604)
-- Name: relarchivovisitante_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relarchivovisitante_fk ON public.visitante USING btree (idarchivo);


--
-- TOC entry 2161 (class 1259 OID 25499)
-- Name: relcarcelempleado_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relcarcelempleado_fk ON public.empleado USING btree (idcarcel);


--
-- TOC entry 2181 (class 1259 OID 25553)
-- Name: relcarcelrecluso_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relcarcelrecluso_fk ON public.recluso USING btree (idcarcel);


--
-- TOC entry 2162 (class 1259 OID 25500)
-- Name: relcargoempleado_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relcargoempleado_fk ON public.empleado USING btree (idcargo);


--
-- TOC entry 2191 (class 1259 OID 25589)
-- Name: relcontroladorvisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relcontroladorvisita_fk ON public.visita USING btree (idportero);


--
-- TOC entry 2182 (class 1259 OID 25552)
-- Name: relestadorecluso_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relestadorecluso_fk ON public.recluso USING btree (idestado);


--
-- TOC entry 2192 (class 1259 OID 25587)
-- Name: relestadovisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relestadovisita_fk ON public.visita USING btree (idestadovisita);


--
-- TOC entry 2175 (class 1259 OID 25538)
-- Name: relitemingresovisita2_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relitemingresovisita2_fk ON public.itemingresovisita USING btree (iditem);


--
-- TOC entry 2176 (class 1259 OID 25539)
-- Name: relitemingresovisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relitemingresovisita_fk ON public.itemingresovisita USING btree (idvisita);


--
-- TOC entry 2177 (class 1259 OID 25537)
-- Name: relitemingresovisita_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX relitemingresovisita_pk ON public.itemingresovisita USING btree (idvisita, iditem);


--
-- TOC entry 2193 (class 1259 OID 25588)
-- Name: relporterovisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relporterovisita_fk ON public.visita USING btree (idcontrolador);


--
-- TOC entry 2194 (class 1259 OID 25590)
-- Name: relreclusovisita_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relreclusovisita_fk ON public.visita USING btree (idrecluso);


--
-- TOC entry 2146 (class 1259 OID 25457)
-- Name: reltipoarchivo_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reltipoarchivo_fk ON public.archivo USING btree (idtipoarchivo);


--
-- TOC entry 2163 (class 1259 OID 25501)
-- Name: relusuarioempleado_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relusuarioempleado_fk ON public.empleado USING btree (idusuario);


--
-- TOC entry 2199 (class 1259 OID 25603)
-- Name: relusuariovisitante_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relusuariovisitante_fk ON public.visitante USING btree (idusuario);


--
-- TOC entry 2185 (class 1259 OID 25562)
-- Name: tipoarchivo_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX tipoarchivo_pk ON public.tipoarchivo USING btree (idtipoarchivo);


--
-- TOC entry 2188 (class 1259 OID 25574)
-- Name: usuario_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX usuario_pk ON public.usuario USING btree (idusuario);


--
-- TOC entry 2195 (class 1259 OID 25586)
-- Name: visita_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX visita_pk ON public.visita USING btree (idvisita);


--
-- TOC entry 2200 (class 1259 OID 25602)
-- Name: visitante_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX visitante_pk ON public.visitante USING btree (idvisitante);


--
-- TOC entry 2201 (class 2606 OID 25605)
-- Name: fk_archivo_reltipoar_tipoarch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivo
    ADD CONSTRAINT fk_archivo_reltipoar_tipoarch FOREIGN KEY (idtipoarchivo) REFERENCES public.tipoarchivo(idtipoarchivo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2203 (class 2606 OID 25615)
-- Name: fk_archivov_relarchiv_archivo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivovisita
    ADD CONSTRAINT fk_archivov_relarchiv_archivo FOREIGN KEY (idarchivo) REFERENCES public.archivo(idarchivo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2202 (class 2606 OID 25610)
-- Name: fk_archivov_relarchiv_visita; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archivovisita
    ADD CONSTRAINT fk_archivov_relarchiv_visita FOREIGN KEY (idvisita) REFERENCES public.visita(idvisita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2204 (class 2606 OID 25620)
-- Name: fk_empleado_relcarcel_carcel; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_relcarcel_carcel FOREIGN KEY (idcarcel) REFERENCES public.carcel(idcarcel) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2205 (class 2606 OID 25625)
-- Name: fk_empleado_relcargoe_cargo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_relcargoe_cargo FOREIGN KEY (idcargo) REFERENCES public.cargo(idcargo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2206 (class 2606 OID 25630)
-- Name: fk_empleado_relusuari_usuario; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_relusuari_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2208 (class 2606 OID 25640)
-- Name: fk_itemingr_relitemin_itemingr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itemingresovisita
    ADD CONSTRAINT fk_itemingr_relitemin_itemingr FOREIGN KEY (iditem) REFERENCES public.itemingreso(iditem) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2207 (class 2606 OID 25635)
-- Name: fk_itemingr_relitemin_visita; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.itemingresovisita
    ADD CONSTRAINT fk_itemingr_relitemin_visita FOREIGN KEY (idvisita) REFERENCES public.visita(idvisita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2209 (class 2606 OID 25645)
-- Name: fk_recluso_relcarcel_carcel; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recluso
    ADD CONSTRAINT fk_recluso_relcarcel_carcel FOREIGN KEY (idcarcel) REFERENCES public.carcel(idcarcel) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2210 (class 2606 OID 25650)
-- Name: fk_recluso_relestado_estadore; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recluso
    ADD CONSTRAINT fk_recluso_relestado_estadore FOREIGN KEY (idestado) REFERENCES public.estadorecluso(idestado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2211 (class 2606 OID 25655)
-- Name: fk_visita_relcontro_empleado; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT fk_visita_relcontro_empleado FOREIGN KEY (idportero) REFERENCES public.empleado(idempleado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2212 (class 2606 OID 25660)
-- Name: fk_visita_relestado_estadovi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT fk_visita_relestado_estadovi FOREIGN KEY (idestadovisita) REFERENCES public.estadovisita(idestadovisita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2213 (class 2606 OID 25665)
-- Name: fk_visita_relporter_empleado; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT fk_visita_relporter_empleado FOREIGN KEY (idcontrolador) REFERENCES public.empleado(idempleado) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2214 (class 2606 OID 25670)
-- Name: fk_visita_relreclus_recluso; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT fk_visita_relreclus_recluso FOREIGN KEY (idrecluso) REFERENCES public.recluso(idrecluso) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2215 (class 2606 OID 25686)
-- Name: fk_visita_relvisita_visitante; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT fk_visita_relvisita_visitante FOREIGN KEY (idvisitante) REFERENCES public.visitante(idvisitante);


--
-- TOC entry 2216 (class 2606 OID 25675)
-- Name: fk_visitant_relarchiv_archivo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visitante
    ADD CONSTRAINT fk_visitant_relarchiv_archivo FOREIGN KEY (idarchivo) REFERENCES public.archivo(idarchivo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2217 (class 2606 OID 25680)
-- Name: fk_visitant_relusuari_usuario; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.visitante
    ADD CONSTRAINT fk_visitant_relusuari_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

ALTER USER postgres WITH PASSWORD 'postgres';

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-07-10 08:20:30 -05

--
-- PostgreSQL database dump complete
--


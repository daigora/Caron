--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-07-10 08:08:10 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2333 (class 0 OID 25447)
-- Dependencies: 182
-- Data for Name: archivo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 181
-- Name: archivo_idarchivo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archivo_idarchivo_seq', 1, false);


--
-- TOC entry 2334 (class 0 OID 25458)
-- Dependencies: 183
-- Data for Name: archivovisita; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2336 (class 0 OID 25468)
-- Dependencies: 185
-- Data for Name: carcel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carcel VALUES (1, 'La modelo', 'cr56 # 45-25', '7579862');
INSERT INTO public.carcel VALUES (2, 'El buen pastor', 'Av 69 # 8-25', '1258796');


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 184
-- Name: carcel_idcarcel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carcel_idcarcel_seq', 2, true);


--
-- TOC entry 2337 (class 0 OID 25478)
-- Dependencies: 186
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cargo VALUES ('CR01', 'portero');
INSERT INTO public.cargo VALUES ('CR02', 'controlador');


--
-- TOC entry 2339 (class 0 OID 25489)
-- Dependencies: 188
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empleado VALUES (1, 1, 'CR01', 1, 'Richard Mina', 'Perez Perez', '65423169852', 'av 68', '5247896', '1992-10-15');
INSERT INTO public.empleado VALUES (2, 1, 'CR02', 2, 'Michael Jackson', 'Saenz Perez', '68963254789', 'cr 30', '5246987', '1990-05-27');
INSERT INTO public.empleado VALUES (3, 1, 'CR02', 3, 'Alejo Miguel', 'Alonso Paez', '8748752146', 'av 92', '9652478', '1985-02-13');


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 187
-- Name: empleado_idempleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_idempleado_seq', 3, true);


--
-- TOC entry 2340 (class 0 OID 25502)
-- Dependencies: 189
-- Data for Name: estadorecluso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estadorecluso VALUES ('ER01', 'Disponible');
INSERT INTO public.estadorecluso VALUES ('ER02', 'En calabozo');
INSERT INTO public.estadorecluso VALUES ('ER03', 'Fugado');
INSERT INTO public.estadorecluso VALUES ('ER04', 'Hospitalizado');
INSERT INTO public.estadorecluso VALUES ('ER05', 'Liberado');


--
-- TOC entry 2341 (class 0 OID 25511)
-- Dependencies: 190
-- Data for Name: estadovisita; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estadovisita VALUES ('EV01', 'Estado1');
INSERT INTO public.estadovisita VALUES ('EV02', 'Estado2');
INSERT INTO public.estadovisita VALUES ('EV03', 'Estado3');
INSERT INTO public.estadovisita VALUES ('EV04', 'Estado4');
INSERT INTO public.estadovisita VALUES ('EV05', 'Estado5');


--
-- TOC entry 2342 (class 0 OID 25520)
-- Dependencies: 191
-- Data for Name: itemingreso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2343 (class 0 OID 25529)
-- Dependencies: 192
-- Data for Name: itemingresovisita; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2345 (class 0 OID 25542)
-- Dependencies: 194
-- Data for Name: recluso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recluso VALUES (1, 'ER01', 1, 'Pepe Pipe', 'Lula Silva', '1245698752', '1990-05-21', 25, 'A3', 'Asesinato', true);
INSERT INTO public.recluso VALUES (2, 'ER01', 1, 'Juan Felipe', 'Sierra Perez', '5321478965', '1985-09-25', 3, 'B7', 'Trafico de drogas', true);
INSERT INTO public.recluso VALUES (3, 'ER02', 1, 'Dylan Alejandro', 'Medellin Suarez', '7485213654', '1997-07-01', 5, 'C7', 'Violencia intrafamiliar', true);
INSERT INTO public.recluso VALUES (4, 'ER04', 1, 'Brayan Felipe', 'Orlando Suescun', '7854126985', '1998-05-14', 25, 'B2', 'Violacion', true);
INSERT INTO public.recluso VALUES (5, 'ER01', 1, 'Millos Andres', 'Chamuza Gutierritos', '6854187452', '1992-12-12', 1, 'A2', 'Robo a mano armada', false);


--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 193
-- Name: recluso_idrecluso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recluso_idrecluso_seq', 5, true);


--
-- TOC entry 2346 (class 0 OID 25554)
-- Dependencies: 195
-- Data for Name: tipoarchivo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2348 (class 0 OID 25565)
-- Dependencies: 197
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'alejo', 'asd123', 'alejo@gmail.com');
INSERT INTO public.usuario VALUES (2, 'alejin', 'asd123', 'alejin@gmail.com');
INSERT INTO public.usuario VALUES (3, 'alejokun', 'asd123', 'alejokun@gmail.com');
INSERT INTO public.usuario VALUES (4, 'em11111', '12345', 'em11111@inpec.gov.co');
INSERT INTO public.usuario VALUES (5, 'em22222', '12345', 'em22222@inpec.gov.co');
INSERT INTO public.usuario VALUES (6, 'em33333', '12345', 'em33333@inpec.gov.co');
INSERT INTO public.usuario VALUES (7, 'nickmal', '225566', 'nickmal@hotmail.com');
INSERT INTO public.usuario VALUES (8, 'martha64', '225566', 'martha64@hotmail.com');
INSERT INTO public.usuario VALUES (9, 'javibooze', '225566', 'javibooze@hotmail.com');
INSERT INTO public.usuario VALUES (10, 'ggizipapa', 'asd123', 'ggizipapa@gmail.com');


--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_idusuario_seq', 10, true);


--
-- TOC entry 2350 (class 0 OID 25577)
-- Dependencies: 199
-- Data for Name: visita; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.visita VALUES (1, NULL, NULL, 'EV01', 5, '1990-10-05', '10:00:00', '11:00:00', 'La wea', NULL, 2);
INSERT INTO public.visita VALUES (2, NULL, NULL, 'EV01', 5, '1990-10-05', '10:00:00', '11:00:00', 'La wea', NULL, 1);


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 198
-- Name: visita_idvisita_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visita_idvisita_seq', 2, true);


--
-- TOC entry 2352 (class 0 OID 25593)
-- Dependencies: 201
-- Data for Name: visitante; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.visitante VALUES (2, 2, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante VALUES (3, 3, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante VALUES (4, 4, NULL, 'Nick Jr', 'Mendez Sarmiento', '8963214567', 'av 85', '5246987', '1990-05-27');
INSERT INTO public.visitante VALUES (5, 5, NULL, 'Maria Luisa', 'Garcia Salazar', '952524495', 'av 47', '9632456', '1997-08-11');
INSERT INTO public.visitante VALUES (6, 6, NULL, 'Juan Esteban', 'Quintero Malu', '856585455', 'cl 47', '9657425', '1995-01-11');
INSERT INTO public.visitante VALUES (7, 10, NULL, 'Diego', 'Correa', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');
INSERT INTO public.visitante VALUES (1, 1, NULL, 'Alejandro', 'Ramirez', '1032485940', 'Cll 35b#435', '34231233', '2012-04-23');


--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 200
-- Name: visitante_idvisitante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitante_idvisitante_seq', 7, true);


-- Completed on 2018-07-10 08:08:11 -05

--
-- PostgreSQL database dump complete
--


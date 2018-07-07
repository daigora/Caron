INSERT INTO cargo
VALUES ('CR01', 'portero'); 

INSERT INTO cargo
VALUES ('CR02', 'controlador'); 

INSERT INTO estadorecluso
VALUES ('ER01', 'Disponible');

INSERT INTO estadorecluso
VALUES ('ER02', 'En calabozo');

INSERT INTO estadorecluso
VALUES ('ER03', 'Fugado');

INSERT INTO estadorecluso
VALUES ('ER04', 'Hospitalizado');

INSERT INTO carcel
VALUES (DEFAULT, 'La modelo', 'cr56 # 45-25','7579862');

INSERT INTO carcel
VALUES (DEFAULT, 'El buen pastor', 'Av 69 # 8-25','1258796');

INSERT INTO recluso
VALUES (DEFAULT,
	'ER01',
	'1',
	'Pepe Pipe',
	'Lula Silva',
	'1245698752',
	'1990/05/21',
	'25',
	'A3',
	'Asesinato',
	'true');

INSERT INTO recluso
VALUES (DEFAULT,
	'ER01',
	'1',
	'Juan Felipe',
	'Sierra Perez',
	'5321478965',
	'1985/09/25',
	'3',
	'B7',
	'Trafico de drogas',
	'true');

INSERT INTO recluso
VALUES (DEFAULT,
	'ER02',
	'1',
	'Dylan Alejandro',
	'Medellin Suarez',
	'7485213654',
	'1997/07/1',
	'5',
	'C7',
	'Violencia intrafamiliar',
	'true');

INSERT INTO recluso
VALUES (DEFAULT,
	'ER04',
	'1',
	'Brayan Felipe',
	'Orlando Suescun',
	'7854126985',
	'1998/05/14',
	'25',
	'B2',
	'Violacion',
	'true');

INSERT INTO recluso
VALUES (DEFAULT,
	'ER01',
	'1',
	'Millos Andres',
	'Chamuza Gutierritos',
	'6854187452',
	'1992/12/12',
	'1',
	'A2',
	'Robo a mano armada',
	'false');

INSERT INTO usuario
VALUES (DEFAULT, 'em11111', '12345','em11111@inpec.gov.co');

INSERT INTO usuario
VALUES (DEFAULT, 'em22222', '12345','em22222@inpec.gov.co');

INSERT INTO usuario
VALUES (DEFAULT, 'em33333', '12345','em33333@inpec.gov.co');

INSERT INTO empleado
VALUES (DEFAULT,
	'1',
	'CR01',
	'1',
	'Richard Mina',
	'Perez Perez',
	'65423169852',
	'av 68',
	'5247896',
	'1992/10/15');

INSERT INTO empleado
VALUES (DEFAULT,
	'1',
	'CR02',
	'2',
	'Michael Jackson',
	'Saenz Perez',
	'68963254789',
	'cr 30',
	'5246987',
	'1990/05/27');


INSERT INTO empleado
VALUES (DEFAULT,
	'1',
	'CR02',
	'3',
	'Alejo Miguel',
	'Alonso Paez',
	'8748752146',
	'av 92',
	'9652478',
	'1985/02/13');


INSERT INTO usuario
VALUES (DEFAULT, 'nickmal', '225566','nickmal@hotmail.com');

INSERT INTO usuario
VALUES (DEFAULT, 'martha64', '225566','martha64@hotmail.com');

INSERT INTO usuario
VALUES (DEFAULT, 'javibooze', '225566','javibooze@hotmail.com');

INSERT INTO visitante
VALUES (DEFAULT,
	'4',
	NULL,
	'Nick Jr',
	'Mendez Sarmiento',
	'8963214567',
	'av 85',
	'5246987',
	'1990/05/27');

INSERT INTO visitante
VALUES (DEFAULT,
	'5',
	NULL,
	'Maria Luisa',
	'Garcia Salazar',
	'952524495',
	'av 47',
	'9632456',
	'1997/08/11');


INSERT INTO visitante
VALUES (DEFAULT,
	'6',
	NULL,
	'Juan Esteban',
	'Quintero Malu',
	'856585455',
	'cl 47',
	'9657425',
	'1995/01/11');


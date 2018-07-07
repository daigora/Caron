/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     7/07/2018 11:33:32 a.m.                      */
/*==============================================================*/


/*==============================================================*/
/* Table: ARCHIVO                                               */
/*==============================================================*/
create table ARCHIVO (
   IDARCHIVO            SERIAL               not null,
   IDTIPOARCHIVO        TEXT                 not null,
   NOMBREARCHIVO        TEXT                 not null,
   FORMATO              TEXT                 not null,
   URLARCHIVO           TEXT                 not null,
   constraint PK_ARCHIVO primary key (IDARCHIVO)
);

/*==============================================================*/
/* Index: ARCHIVO_PK                                            */
/*==============================================================*/
create unique index ARCHIVO_PK on ARCHIVO (
IDARCHIVO
);

/*==============================================================*/
/* Index: RELTIPOARCHIVO_FK                                     */
/*==============================================================*/
create  index RELTIPOARCHIVO_FK on ARCHIVO (
IDTIPOARCHIVO
);

/*==============================================================*/
/* Table: ARCHIVOVISITA                                         */
/*==============================================================*/
create table ARCHIVOVISITA (
   IDVISITA             INT4                 not null,
   IDARCHIVO            INT4                 not null,
   constraint PK_ARCHIVOVISITA primary key (IDVISITA, IDARCHIVO)
);

/*==============================================================*/
/* Index: RELARCHIVOVISITA_PK                                   */
/*==============================================================*/
create unique index RELARCHIVOVISITA_PK on ARCHIVOVISITA (
IDVISITA,
IDARCHIVO
);

/*==============================================================*/
/* Index: RELARCHIVOVISITA2_FK                                  */
/*==============================================================*/
create  index RELARCHIVOVISITA2_FK on ARCHIVOVISITA (
IDARCHIVO
);

/*==============================================================*/
/* Index: RELARCHIVOVISITA_FK                                   */
/*==============================================================*/
create  index RELARCHIVOVISITA_FK on ARCHIVOVISITA (
IDVISITA
);

/*==============================================================*/
/* Table: CARCEL                                                */
/*==============================================================*/
create table CARCEL (
   IDCARCEL             SERIAL               not null,
   NOMBRECARCEL         TEXT                 not null,
   DIRECCION            TEXT                 not null,
   TELEFONO             TEXT                 not null,
   constraint PK_CARCEL primary key (IDCARCEL)
);

/*==============================================================*/
/* Index: CARCEL_PK                                             */
/*==============================================================*/
create unique index CARCEL_PK on CARCEL (
IDCARCEL
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   IDCARGO              TEXT                 not null,
   DESCRCARGO           TEXT                 not null,
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
IDCARGO
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   IDEMPLEADO           SERIAL               not null,
   IDCARCEL             INT4                 not null,
   IDCARGO              TEXT                 not null,
   IDUSUARIO            INT4                 not null,
   NOMBRES              TEXT                 not null,
   APELLIDOS            TEXT                 not null,
   CEDULA               TEXT                 not null,
   DIRECCION            TEXT                 not null,
   TELEFONO             TEXT                 not null,
   FECHANACIMIENTO      DATE                 not null,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
IDEMPLEADO
);

/*==============================================================*/
/* Index: RELCARCELEMPLEADO_FK                                  */
/*==============================================================*/
create  index RELCARCELEMPLEADO_FK on EMPLEADO (
IDCARCEL
);

/*==============================================================*/
/* Index: RELCARGOEMPLEADO_FK                                   */
/*==============================================================*/
create  index RELCARGOEMPLEADO_FK on EMPLEADO (
IDCARGO
);

/*==============================================================*/
/* Index: RELUSUARIOEMPLEADO_FK                                 */
/*==============================================================*/
create  index RELUSUARIOEMPLEADO_FK on EMPLEADO (
IDUSUARIO
);

/*==============================================================*/
/* Table: ESTADORECLUSO                                         */
/*==============================================================*/
create table ESTADORECLUSO (
   IDESTADO             TEXT                 not null,
   DESCESTADO           TEXT                 not null,
   constraint PK_ESTADORECLUSO primary key (IDESTADO)
);

/*==============================================================*/
/* Index: ESTADORECLUSO_PK                                      */
/*==============================================================*/
create unique index ESTADORECLUSO_PK on ESTADORECLUSO (
IDESTADO
);

/*==============================================================*/
/* Table: ESTADOVISITA                                          */
/*==============================================================*/
create table ESTADOVISITA (
   IDESTADOVISITA       TEXT                 not null,
   DESCRESTADO          TEXT                 not null,
   constraint PK_ESTADOVISITA primary key (IDESTADOVISITA)
);

/*==============================================================*/
/* Index: ESTADOVISITA_PK                                       */
/*==============================================================*/
create unique index ESTADOVISITA_PK on ESTADOVISITA (
IDESTADOVISITA
);

/*==============================================================*/
/* Table: ITEMINGRESO                                           */
/*==============================================================*/
create table ITEMINGRESO (
   IDITEM               TEXT                 not null,
   NOMBREITEM           TEXT                 not null,
   constraint PK_ITEMINGRESO primary key (IDITEM)
);

/*==============================================================*/
/* Index: ITEMINGRESO_PK                                        */
/*==============================================================*/
create unique index ITEMINGRESO_PK on ITEMINGRESO (
IDITEM
);

/*==============================================================*/
/* Table: ITEMINGRESOVISITA                                     */
/*==============================================================*/
create table ITEMINGRESOVISITA (
   IDVISITA             INT4                 not null,
   IDITEM               TEXT                 not null,
   constraint PK_ITEMINGRESOVISITA primary key (IDVISITA, IDITEM)
);

/*==============================================================*/
/* Index: RELITEMINGRESOVISITA_PK                               */
/*==============================================================*/
create unique index RELITEMINGRESOVISITA_PK on ITEMINGRESOVISITA (
IDVISITA,
IDITEM
);

/*==============================================================*/
/* Index: RELITEMINGRESOVISITA2_FK                              */
/*==============================================================*/
create  index RELITEMINGRESOVISITA2_FK on ITEMINGRESOVISITA (
IDITEM
);

/*==============================================================*/
/* Index: RELITEMINGRESOVISITA_FK                               */
/*==============================================================*/
create  index RELITEMINGRESOVISITA_FK on ITEMINGRESOVISITA (
IDVISITA
);

/*==============================================================*/
/* Table: RECLUSO                                               */
/*==============================================================*/
create table RECLUSO (
   IDRECLUSO            SERIAL               not null,
   IDESTADO             TEXT                 not null,
   IDCARCEL             INT4                 not null,
   NOMBRES              TEXT                 not null,
   APELLIDO             TEXT                 not null,
   CEDULA               TEXT                 not null,
   FECHANACIMIENTO      DATE                 not null,
   NUMCELDA             INT4                 not null,
   PATIO                TEXT                 not null,
   MOTIVORECLUSION      TEXT                 not null,
   VOLUNTADVISITA       BOOL                 not null,
   constraint PK_RECLUSO primary key (IDRECLUSO)
);

/*==============================================================*/
/* Index: RECLUSO_PK                                            */
/*==============================================================*/
create unique index RECLUSO_PK on RECLUSO (
IDRECLUSO
);

/*==============================================================*/
/* Index: RELESTADORECLUSO_FK                                   */
/*==============================================================*/
create  index RELESTADORECLUSO_FK on RECLUSO (
IDESTADO
);

/*==============================================================*/
/* Index: RELCARCELRECLUSO_FK                                   */
/*==============================================================*/
create  index RELCARCELRECLUSO_FK on RECLUSO (
IDCARCEL
);

/*==============================================================*/
/* Table: TIPOARCHIVO                                           */
/*==============================================================*/
create table TIPOARCHIVO (
   IDTIPOARCHIVO        TEXT                 not null,
   DESCTIPOARCHIVO      TEXT                 not null,
   constraint PK_TIPOARCHIVO primary key (IDTIPOARCHIVO)
);

/*==============================================================*/
/* Index: TIPOARCHIVO_PK                                        */
/*==============================================================*/
create unique index TIPOARCHIVO_PK on TIPOARCHIVO (
IDTIPOARCHIVO
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   IDUSUARIO            SERIAL               not null,
   NICKNAME             TEXT                 not null,
   CONTRASENA           TEXT                 not null,
   EMAIL                TEXT                 not null,
   constraint PK_USUARIO primary key (IDUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
IDUSUARIO
);

/*==============================================================*/
/* Table: VISITA                                                */
/*==============================================================*/
create table VISITA (
   IDVISITA             SERIAL               not null,
   IDCONTROLADOR        INT4                 null,
   IDPORTERO            INT4                 null,
   IDESTADOVISITA       TEXT                 not null,
   IDRECLUSO            INT4                 not null,
   FECHAVISITA          DATE                 not null,
   HORAINI              TIME                 not null,
   HORAFIN              TIME                 not null,
   MOTIVO               TEXT                 not null,
   NUMTICKET            TEXT                 null,
   constraint PK_VISITA primary key (IDVISITA)
);

/*==============================================================*/
/* Index: VISITA_PK                                             */
/*==============================================================*/
create unique index VISITA_PK on VISITA (
IDVISITA
);

/*==============================================================*/
/* Index: RELESTADOVISITA_FK                                    */
/*==============================================================*/
create  index RELESTADOVISITA_FK on VISITA (
IDESTADOVISITA
);

/*==============================================================*/
/* Index: RELPORTEROVISITA_FK                                   */
/*==============================================================*/
create  index RELPORTEROVISITA_FK on VISITA (
IDCONTROLADOR
);

/*==============================================================*/
/* Index: RELCONTROLADORVISITA_FK                               */
/*==============================================================*/
create  index RELCONTROLADORVISITA_FK on VISITA (
IDPORTERO
);

/*==============================================================*/
/* Index: RELRECLUSOVISITA_FK                                   */
/*==============================================================*/
create  index RELRECLUSOVISITA_FK on VISITA (
IDRECLUSO
);

/*==============================================================*/
/* Table: VISITANTE                                             */
/*==============================================================*/
create table VISITANTE (
   IDVISITANTE          SERIAL               not null,
   IDUSUARIO            INT4                 not null,
   IDARCHIVO            INT4                 null,
   NOMBRES              TEXT                 not null,
   APELLIDOS            TEXT                 not null,
   CEDULA               TEXT                 not null,
   DIRECCION            TEXT                 not null,
   TELEFONO             TEXT                 not null,
   FECHANACIMIENTO      DATE                 not null,
   constraint PK_VISITANTE primary key (IDVISITANTE)
);

/*==============================================================*/
/* Index: VISITANTE_PK                                          */
/*==============================================================*/
create unique index VISITANTE_PK on VISITANTE (
IDVISITANTE
);

/*==============================================================*/
/* Index: RELUSUARIOVISITANTE_FK                                */
/*==============================================================*/
create  index RELUSUARIOVISITANTE_FK on VISITANTE (
IDUSUARIO
);

/*==============================================================*/
/* Index: RELARCHIVOVISITANTE_FK                                */
/*==============================================================*/
create  index RELARCHIVOVISITANTE_FK on VISITANTE (
IDARCHIVO
);

alter table ARCHIVO
   add constraint FK_ARCHIVO_RELTIPOAR_TIPOARCH foreign key (IDTIPOARCHIVO)
      references TIPOARCHIVO (IDTIPOARCHIVO)
      on delete restrict on update restrict;

alter table ARCHIVOVISITA
   add constraint FK_ARCHIVOV_RELARCHIV_VISITA foreign key (IDVISITA)
      references VISITA (IDVISITA)
      on delete restrict on update restrict;

alter table ARCHIVOVISITA
   add constraint FK_ARCHIVOV_RELARCHIV_ARCHIVO foreign key (IDARCHIVO)
      references ARCHIVO (IDARCHIVO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELCARCEL_CARCEL foreign key (IDCARCEL)
      references CARCEL (IDCARCEL)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELCARGOE_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELUSUARI_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
      on delete restrict on update restrict;

alter table ITEMINGRESOVISITA
   add constraint FK_ITEMINGR_RELITEMIN_VISITA foreign key (IDVISITA)
      references VISITA (IDVISITA)
      on delete restrict on update restrict;

alter table ITEMINGRESOVISITA
   add constraint FK_ITEMINGR_RELITEMIN_ITEMINGR foreign key (IDITEM)
      references ITEMINGRESO (IDITEM)
      on delete restrict on update restrict;

alter table RECLUSO
   add constraint FK_RECLUSO_RELCARCEL_CARCEL foreign key (IDCARCEL)
      references CARCEL (IDCARCEL)
      on delete restrict on update restrict;

alter table RECLUSO
   add constraint FK_RECLUSO_RELESTADO_ESTADORE foreign key (IDESTADO)
      references ESTADORECLUSO (IDESTADO)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELCONTRO_EMPLEADO foreign key (IDPORTERO)
      references EMPLEADO (IDEMPLEADO)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELESTADO_ESTADOVI foreign key (IDESTADOVISITA)
      references ESTADOVISITA (IDESTADOVISITA)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELPORTER_EMPLEADO foreign key (IDCONTROLADOR)
      references EMPLEADO (IDEMPLEADO)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELRECLUS_RECLUSO foreign key (IDRECLUSO)
      references RECLUSO (IDRECLUSO)
      on delete restrict on update restrict;

alter table VISITANTE
   add constraint FK_VISITANT_RELARCHIV_ARCHIVO foreign key (IDARCHIVO)
      references ARCHIVO (IDARCHIVO)
      on delete restrict on update restrict;

alter table VISITANTE
   add constraint FK_VISITANT_RELUSUARI_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
      on delete restrict on update restrict;


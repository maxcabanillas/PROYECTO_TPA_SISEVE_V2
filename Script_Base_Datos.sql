use master
go

if not db_id('kataleyabd') is null
	drop database [kataleyabd]
go

create database [kataleyabd]
go

use [kataleyabd]
go

create table [dbo].[usuario]
(
	[idusuario] [int] identity(1,1) not null,
	[login] [varchar](20) not null,
	[claveacceso] [varchar](20) not null,
	[indexpiracionclave] [char](1) not null,
	[fechaexpiracionclave] [datetime] null,
	[dni] [varchar](8) not null,
	[apellidopaterno] [varchar](30) not null,
	[apellidomaterno] [varchar](30) not null,
	[nombre] [varchar](50) not null,
	[situacionregistro] [char](1) null,
	[fechacreacion] [datetime] not null,
	[usuariocreacion] [int] not null,
	
 constraint [pk_usuario] primary key clustered ([idusuario] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on, fillfactor = 90) on [primary]
) on [primary]
go


create table [dbo].[vehiculo_cotiza]
(
	[idcotizacion] [int] not null,
	[idvehiculo] [int] not null,
	[anio] [smallint] null,
	[idcategoria_veh] [int] null,
	[idubicacion] [int] null,
	[idtipo_timon] [int] null,
	[marca_americana] [char](1) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_vehiculo_cotiza] primary key clustered ([idcotizacion] asc, [idvehiculo] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[scoring](
	[idscoring] [int] identity(1,1) not null,
	[idplan] [int] null,
	[rango_ini] [smallint] null,
	[rango_fin] [smallint] null,
	[grupo1] [varchar](10) null,
	[grupo2] [varchar](10) null,
	[grupo3] [varchar](10) null,
	[tipo_valor] [char](1) null,
	[valor] [numeric](10, 6) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_scoring] primary key clustered ([idscoring] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[us_usuario]
(
	[usuarioid] [int] not null,
	[claveacceso] [char](50) not null,
	[indexpiracionclave] [char](1) not null,
	[fechaexpiracionclave] [datetime] null,
	[dni] [char](8) not null,
	[apellidopaterno] [char](30) not null,
	[apellidomaterno] [char](30) not null,
	[nombre] [char](50) not null,
	[situacionregistro] [char](1) null,
	[fechasituacion] [datetime] null,
	[fechaacceso] [datetime] null,
	[situacionacceso] [char](1) null,
	[usuariored] [char](50) null,
	[fechacreacion] [datetime] not null,
	[usuariocreacion] [int] not null,
	[fechamodifica] [datetime] not null,
	[usuariomodifica] [int] not null,
 constraint [pk_us_usuario] primary key clustered ([usuarioid] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on, fillfactor = 90) on [primary]
) on [primary]
go


create table [dbo].[uni_neg](
	[iduni_neg] [int] identity(1,1) not null,
	[nombre] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_uni_neg] primary key clustered ([iduni_neg] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[tipo_catalogo](
	[idtipo_catalogo] [int] identity(1,1) not null,
	[nombre] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_tipo_catalogo] primary key clustered ([idtipo_catalogo] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[tarifa](
	[idtarifa] [int] identity(1,1) not null,
	[idplan] [int] null,
	[idcobertura] [int] null,
	[rango_ini] [smallint] null,
	[rango_fin] [smallint] null,
	[grupo1] [varchar](10) null,
	[grupo2] [varchar](10) null,
	[grupo3] [varchar](10) null,
	[tipo_valor] [char](1) null,
	[valor] [numeric](10, 6) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_tarifa] primary key clustered 
(
	[idtarifa] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[mig_catalogo_vehiculo_rimac](
	[idmarca] [varchar](10) null,
	[marca] [varchar](50) null,
	[idmodelo] [varchar](10) null,
	[modelo] [varchar](50) null,
	[idclase_veh] [varchar](10) null,
	[clase_veh] [varchar](50) null,
	[idtipo_veh] [varchar](10) null,
	[tipo_veh] [varchar](50) null,
	[idcategoria_veh] [varchar](10) null,
	[categoria_veh] [varchar](50) null
) on [primary]
go


create table [dbo].[mig_catalogo_vehiculo_pacifico](
	[idmarca] [varchar](10) null,
	[marca] [varchar](50) null,
	[idmodelo] [varchar](10) null,
	[modelo] [varchar](50) null,
	[anio] [varchar](10) null,
	[valor_comercial] [varchar](10) null,
	[idclase_veh] [varchar](10) null,
	[clase] [varchar](50) null,
	[idcategoria_veh] [varchar](10) null,
	[categoria] [varchar](50) null,
	[marca_gps] [varchar](10) null
) on [primary]
go

create table [dbo].[mig_catalogo_vehiculo_apeseg](
	[cod_marca_apeseg] [varchar](20) null,
	[cod_modelo_apeseg] [varchar](20) null,
	[valor0] [varchar](10) null,
	[valor1] [varchar](10) null,
	[valor2] [varchar](10) null,
	[valor3] [varchar](10) null,
	[valor4] [varchar](10) null,
	[valor5] [varchar](10) null,
	[valor6] [varchar](10) null,
	[valor7] [varchar](10) null,
	[valor8] [varchar](10) null,
	[valor9] [varchar](10) null,
	[valor10] [varchar](10) null,
	[valor11] [varchar](10) null,
	[valor12] [varchar](10) null,
	[valor13] [varchar](10) null,
	[valor14] [varchar](10) null,
	[valor15] [varchar](10) null,
	[marca] [varchar](100) null,
	[modelo] [varchar](100) null,
	[marca_aseg] [varchar](5) null,
	[fec_reg] [varchar](20) null,
	[fec_mod] [varchar](20) null,
	[tipo_riesgo] [varchar](5) null,
	[marca_timon] [varchar](5) null,
	[marca_americana] [varchar](5) null,
	[origen] [varchar](10) null
) on [primary]
go


create table [dbo].[marca](
	[idmarca] [int] identity(1,1) not null,
	[nombre] [varchar](50) null,
	[idorigen] [int] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_marca] primary key clustered ([idmarca] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[impuesto](
	[idimpuesto] [int] identity(1,1) not null,
	[idplan] [int] null,
	[orden] [smallint] null,
	[idgrupo_impuesto] [int] null,
	[idtipo_impuesto] [int] null,
	[tipo_valor] [char](1) null,
	[valor] [numeric](10, 6) null,
	[marca_incluir_suma] [char](1) null,
	[marca_sobre_suma] [char](1) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_impuesto] primary key clustered ([idimpuesto] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[cia_seg](
	[idcia_seg] [int] identity(1,1) not null,
	[nombre] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_cia_seg_1] primary key clustered ([idcia_seg] asc) with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go


create table [dbo].[catalogo](
	[idcatalogo] [int] identity(1,1) not null,
	[idtipo_catalogo] [int] null,
	[nombre] [varchar](50) null,
	[abrev] [varchar](10) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_catalogo] primary key clustered 
(
	[idcatalogo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[producto]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[producto](
	[idproducto] [int] identity(1,1) not null,
	[nombre] [varchar](100) null,
	[descripcion] [varchar](200) null,
	[idcia_seg] [int] null,
	[idramo] [int] null,
	[moneda] [char](3) null,
	[dias_vigencia] [smallint] null,
	[marca_deremi] [char](1) null,
	[marca_impuesto] [char](1) null,
	[dias_carencia] [smallint] null,
	[dias_gracia] [smallint] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_producto] primary key clustered 
(
	[idproducto] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[prima_minima]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[prima_minima](
	[idprima_minima] [int] identity(1,1) not null,
	[idplan] [int] null,
	[grupo1] [varchar](10) null,
	[grupo2] [varchar](10) null,
	[grupo3] [varchar](10) null,
	[valor_min] [numeric](10, 4) null,
	[valor_max] [numeric](10, 4) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_prima_minima] primary key clustered 
(
	[idprima_minima] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[persona]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[persona](
	[idpersona] [int] identity(1,1) not null,
	[nro_documento] [varchar](15) null,
	[nombres] [varchar](50) null,
	[apellidos] [varchar](50) null,
	[fec_nacimiento] [datetime] null,
	[telefono] [varchar](20) null,
	[email] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_persona] primary key clustered 
(
	[idpersona] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[modelo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[modelo](
	[idmodelo] [int] identity(1,1) not null,
	[idmarca] [int] null,
	[nombre] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_modelo] primary key clustered 
(
	[idmodelo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[cobertura]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[cobertura](
	[idcobertura] [int] identity(1,1) not null,
	[nombre] [varchar](100) null,
	[abrev] [varchar](10) null,
	[idcia_seg] [int] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_cobertura] primary key clustered 
(
	[idcobertura] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[plan]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[plan](
	[idplan] [int] not null,
	[nombre] [varchar](50) null,
	[descripcion] [varchar](50) null,
	[idproducto] [int] not null,
	[idprima_minima] [int] not null,
	[tipo_vigencia] [varchar](50) null,
	[suma_aseg_min] [numeric](10, 4) null,
	[suma_aseg_max] [numeric](10, 4) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_plan] primary key clustered 
(
	[idplan] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[plan_scoring]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[plan_scoring](
	[idplan] [int] not null,
	[idscoring] [int] not null,
	[estado_scoring] [char](1) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[canal]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[canal](
	[idcanal] [int] identity(1,1) not null,
	[nombre] [varchar](50) null,
	[iduni_neg] [int] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_canal_1] primary key clustered 
(
	[idcanal] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[grupo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[grupo_vehiculo](
	[idgrupo_vehiculo] [int] not null,
	[idplan] [int] not null,
	[idclase_veh] [int] not null,
	[idtipo_timon] [int] not null,
	[idcategoria_veh] [int] not null,
	[iduso_veh] [int] not null,
	[grupo_veh] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_grupo_vehiculo] primary key clustered 
(
	[idgrupo_vehiculo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[plan_impuesto]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[plan_impuesto](
	[idplan] [int] not null,
	[idimpuesto] [int] not null,
	[estado_impuesto] [char](1) null,
 constraint [pk_plan_impuesto] primary key clustered 
(
	[idplan] asc,
	[idimpuesto] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[cobertura_plan]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[cobertura_plan](
	[idplan] [int] not null,
	[idcobertura] [int] not null,
	[idregla_tarifa] [int] not null,
	[marca_principal] [varchar](50) null,
	[suma_asegurada] [numeric](10, 4) null,
	[deducible] [numeric](10, 4) null,
	[descripcion] [varchar](50) null,
	[orden] [varchar](50) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_cobertura_plan] primary key clustered 
(
	[idplan] asc,
	[idcobertura] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[submodelo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[submodelo](
	[idsubmodelo] [int] identity(1,1) not null,
	[idmodelo] [int] null,
	[nombre] [varchar](20) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_submodelo] primary key clustered 
(
	[idsubmodelo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[producto_canal]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[producto_canal](
	[idcanal] [int] not null,
	[idproducto] [int] not null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_producto_canal] primary key clustered 
(
	[idcanal] asc,
	[idproducto] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[vehiculo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[vehiculo](
	[idvehiculo] [int] identity(1,1) not null,
	[idcia_seg] [int] null,
	[idmarca] [int] null,
	[idmodelo] [int] null,
	[idsubmodelo] [int] null,
	[nombre] [varchar](70) null,
	[idclase_veh] [int] null,
	[idtipo_veh] [int] null,
	[idcategoria_veh] [int] null,
	[nro_asientos] [smallint] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_vehiculo] primary key clustered 
(
	[idvehiculo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[detalle_grupo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[detalle_grupo_vehiculo](
	[idvehiculo] [int] not null,
	[idgrupo_vehiculo] [int] not null,
	[estado_grupo] [char](1) null,
 constraint [pk_detalle_grupo_vehiculo] primary key clustered 
(
	[idvehiculo] asc,
	[idgrupo_vehiculo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[cotizacion]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[cotizacion](
	[idcotizacion] [int] not null,
	[nro_cotiza] [varchar](10) null,
	[idcliente] [int] null,
	[iduni_neg] [int] null,
	[idcanal] [int] null,
	[idcia_seg] [int] null,
	[idramo] [int] null,
	[idproducto] [int] null,
	[idplan] [int] null,
	[idvehiculo] [int] null,
	[suma_asegurada] [numeric](10, 4) null,
	[moneda] [char](3) null,
	[tasa] [numeric](10, 6) null,
	[prima_neta] [numeric](10, 4) null,
	[descuento] [numeric](10, 4) null,
	[recargo] [numeric](10, 4) null,
	[derecho_emision] [numeric](10, 4) null,
	[impuesto] [numeric](10, 4) null,
	[prima_total] [numeric](10, 4) null,
	[usu_cotiza] [int] null,
	[fec_cotiza] [datetime] null,
	[fec_expira] [datetime] null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_cotizacion] primary key clustered 
(
	[idcotizacion] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[catalogo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[catalogo_vehiculo](
	[idcia_seg] [int] not null,
	[idvehiculo] [int] not null,
	[anio] [date] null,
	[moneda] [money] null,
	[valor_comercial] [numeric](10, 4) null,
	[estado] [char](1) null,
	[usu_reg] [int] null,
	[fec_reg] [datetime] null,
 constraint [pk_catalogo_vehiculo] primary key clustered 
(
	[idcia_seg] asc,
	[idvehiculo] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[certificado_vehicular]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[certificado_vehicular](
	[nro_poliza] [int] not null,
	[nro_certificado] [int] not null,
	[idcotizacion] [int] not null,
	[moneda] [money] null,
	[prima_neta] [numeric](10, 4) null,
	[descuento] [numeric](10, 4) null,
	[prima_tecnica] [numeric](10, 4) null,
	[derecho_emision] [numeric](10, 4) null,
	[impuesto] [numeric](10, 6) null,
	[prima_total] [numeric](10, 4) null,
	[estado] [char](1) null,
 constraint [pk_certificado_vehicular] primary key clustered 
(
	[nro_poliza] asc,
	[nro_certificado] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[documento_pago]    script date: 09/07/2014 17:16:34 ******/
set ansi_nulls on
go
set quoted_identifier on
go
create table [dbo].[documento_pago](
	[iddocumento] [int] not null,
	[nro_poliza] [int] not null,
	[nro_certificado] [int] not null,
	[nro_cuota] [int] null,
	[fec_vencimiento] [date] null,
 constraint [pk_documento_pago] primary key clustered 
(
	[iddocumento] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
/****** object:  foreignkey [fk_canal_uni_neg]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[canal]  with check add  constraint [fk_canal_uni_neg] foreign key([iduni_neg])
references [dbo].[uni_neg] ([iduni_neg])
go
alter table [dbo].[canal] check constraint [fk_canal_uni_neg]
go
/****** object:  foreignkey [fk_catalogo_vehiculo_cia_seg]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[catalogo_vehiculo]  with check add  constraint [fk_catalogo_vehiculo_cia_seg] foreign key([idcia_seg])
references [dbo].[cia_seg] ([idcia_seg])
go
alter table [dbo].[catalogo_vehiculo] check constraint [fk_catalogo_vehiculo_cia_seg]
go
/****** object:  foreignkey [fk_catalogo_vehiculo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[catalogo_vehiculo]  with check add  constraint [fk_catalogo_vehiculo_vehiculo] foreign key([idvehiculo])
references [dbo].[vehiculo] ([idvehiculo])
go
alter table [dbo].[catalogo_vehiculo] check constraint [fk_catalogo_vehiculo_vehiculo]
go
/****** object:  foreignkey [fk_certificado_vehicular_cotizacion]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[certificado_vehicular]  with check add  constraint [fk_certificado_vehicular_cotizacion] foreign key([idcotizacion])
references [dbo].[cotizacion] ([idcotizacion])
go
alter table [dbo].[certificado_vehicular] check constraint [fk_certificado_vehicular_cotizacion]
go
/****** object:  foreignkey [fk_cobertura_cia_seg]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cobertura]  with check add  constraint [fk_cobertura_cia_seg] foreign key([idcia_seg])
references [dbo].[cia_seg] ([idcia_seg])
go
alter table [dbo].[cobertura] check constraint [fk_cobertura_cia_seg]
go
/****** object:  foreignkey [fk_cobertura_plan_cobertura]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cobertura_plan]  with check add  constraint [fk_cobertura_plan_cobertura] foreign key([idcobertura])
references [dbo].[cobertura] ([idcobertura])
go
alter table [dbo].[cobertura_plan] check constraint [fk_cobertura_plan_cobertura]
go
/****** object:  foreignkey [fk_cobertura_plan_plan]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cobertura_plan]  with check add  constraint [fk_cobertura_plan_plan] foreign key([idplan])
references [dbo].[plan] ([idplan])
go
alter table [dbo].[cobertura_plan] check constraint [fk_cobertura_plan_plan]
go
/****** object:  foreignkey [fk_cotizacion_canal]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cotizacion]  with check add  constraint [fk_cotizacion_canal] foreign key([idcanal])
references [dbo].[canal] ([idcanal])
go
alter table [dbo].[cotizacion] check constraint [fk_cotizacion_canal]
go
/****** object:  foreignkey [fk_cotizacion_persona]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cotizacion]  with check add  constraint [fk_cotizacion_persona] foreign key([idcliente])
references [dbo].[persona] ([idpersona])
go
alter table [dbo].[cotizacion] check constraint [fk_cotizacion_persona]
go
/****** object:  foreignkey [fk_cotizacion_plan]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cotizacion]  with check add  constraint [fk_cotizacion_plan] foreign key([idplan])
references [dbo].[plan] ([idplan])
go
alter table [dbo].[cotizacion] check constraint [fk_cotizacion_plan]
go
/****** object:  foreignkey [fk_cotizacion_vehiculo]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[cotizacion]  with check add  constraint [fk_cotizacion_vehiculo] foreign key([idvehiculo])
references [dbo].[vehiculo] ([idvehiculo])
go
alter table [dbo].[cotizacion] check constraint [fk_cotizacion_vehiculo]
go
/****** object:  foreignkey [fk_detalle_grupo_vehiculo_grupo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[detalle_grupo_vehiculo]  with check add  constraint [fk_detalle_grupo_vehiculo_grupo_vehiculo] foreign key([idgrupo_vehiculo])
references [dbo].[grupo_vehiculo] ([idgrupo_vehiculo])
go
alter table [dbo].[detalle_grupo_vehiculo] check constraint [fk_detalle_grupo_vehiculo_grupo_vehiculo]
go
/****** object:  foreignkey [fk_detalle_grupo_vehiculo_vehiculo]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[detalle_grupo_vehiculo]  with check add  constraint [fk_detalle_grupo_vehiculo_vehiculo] foreign key([idvehiculo])
references [dbo].[vehiculo] ([idvehiculo])
go
alter table [dbo].[detalle_grupo_vehiculo] check constraint [fk_detalle_grupo_vehiculo_vehiculo]
go
/****** object:  foreignkey [fk_documento_pago_certificado_vehicular]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[documento_pago]  with check add  constraint [fk_documento_pago_certificado_vehicular] foreign key([nro_poliza], [nro_certificado])
references [dbo].[certificado_vehicular] ([nro_poliza], [nro_certificado])
go
alter table [dbo].[documento_pago] check constraint [fk_documento_pago_certificado_vehicular]
go
/****** object:  foreignkey [fk_grupo_vehiculo_plan]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[grupo_vehiculo]  with check add  constraint [fk_grupo_vehiculo_plan] foreign key([idplan])
references [dbo].[plan] ([idplan])
go
alter table [dbo].[grupo_vehiculo] check constraint [fk_grupo_vehiculo_plan]
go
/****** object:  foreignkey [fk_modelo_marca1]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[modelo]  with check add  constraint [fk_modelo_marca1] foreign key([idmarca])
references [dbo].[marca] ([idmarca])
go
alter table [dbo].[modelo] check constraint [fk_modelo_marca1]
go
/****** object:  foreignkey [fk_plan_prima_minima]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[plan]  with check add  constraint [fk_plan_prima_minima] foreign key([idprima_minima])
references [dbo].[prima_minima] ([idprima_minima])
go
alter table [dbo].[plan] check constraint [fk_plan_prima_minima]
go
/****** object:  foreignkey [fk_plan_producto]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[plan]  with check add  constraint [fk_plan_producto] foreign key([idproducto])
references [dbo].[producto] ([idproducto])
go
alter table [dbo].[plan] check constraint [fk_plan_producto]
go
/****** object:  foreignkey [fk_plan_impuesto_impuesto]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[plan_impuesto]  with check add  constraint [fk_plan_impuesto_impuesto] foreign key([idimpuesto])
references [dbo].[impuesto] ([idimpuesto])
go
alter table [dbo].[plan_impuesto] check constraint [fk_plan_impuesto_impuesto]
go
/****** object:  foreignkey [fk_plan_impuesto_plan]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[plan_impuesto]  with check add  constraint [fk_plan_impuesto_plan] foreign key([idplan])
references [dbo].[plan] ([idplan])
go
alter table [dbo].[plan_impuesto] check constraint [fk_plan_impuesto_plan]
go
/****** object:  foreignkey [fk_plan_scoring_scoring]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[plan_scoring]  with check add  constraint [fk_plan_scoring_scoring] foreign key([idscoring])
references [dbo].[scoring] ([idscoring])
go
alter table [dbo].[plan_scoring] check constraint [fk_plan_scoring_scoring]
go
/****** object:  foreignkey [fk_producto_canal_canal]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[producto_canal]  with check add  constraint [fk_producto_canal_canal] foreign key([idcanal])
references [dbo].[canal] ([idcanal])
go
alter table [dbo].[producto_canal] check constraint [fk_producto_canal_canal]
go
/****** object:  foreignkey [fk_producto_canal_producto]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[producto_canal]  with check add  constraint [fk_producto_canal_producto] foreign key([idproducto])
references [dbo].[producto] ([idproducto])
go
alter table [dbo].[producto_canal] check constraint [fk_producto_canal_producto]
go
/****** object:  foreignkey [fk_submodelo_modelo1]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[submodelo]  with check add  constraint [fk_submodelo_modelo1] foreign key([idmodelo])
references [dbo].[modelo] ([idmodelo])
go
alter table [dbo].[submodelo] check constraint [fk_submodelo_modelo1]
go
/****** object:  foreignkey [fk_vehiculo_submodelo]    script date: 09/07/2014 17:16:34 ******/
alter table [dbo].[vehiculo]  with check add  constraint [fk_vehiculo_submodelo] foreign key([idsubmodelo])
references [dbo].[submodelo] ([idsubmodelo])
go
alter table [dbo].[vehiculo] check constraint [fk_vehiculo_submodelo]
go

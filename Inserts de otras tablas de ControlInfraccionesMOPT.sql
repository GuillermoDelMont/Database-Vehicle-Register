-- Inserts de la tabla Personas.

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (293085857, 2, 'Luigi', 'Napoli', 'Romano', '1983-09-08', 'luiginapoliR@gmail.com', 28987237, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (289524984, 2, 'Francine', 'Montoya', 'Benavides', '2005-07-03', 'francinemb@gmail.com', NULL, 25);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (182948723, 3, 'Shirley Leandra', 'López', 'Vega', '1974-10-10', 'shirleyLLV@gmail.com', 12489127, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (449038902, 1, 'Mario', 'Napoli', 'Romano', '1981-08-11', 'marioNromano@gmail.com', 27581209, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (743927385, 2, 'Lisandra Stefany', 'Ulloa', 'Duarte', '1999-09-27', NULL, NULL, 25);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (237810937, 1, 'Esteban Martin', 'Ruíz', 'Ulloa', '2002-07-02', NULL, NULL, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (390489412, 5, 'Rosalina Nayeli', 'Lindheimer', 'Weiss', '2003-11-01', 'RNayeliLw@gmail.com', 43829782, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (715346912, 5, 'Elsa Jasmine', 'Fallas', 'Delgado', '1980-02-29', 'EJfallasdelgado@gmail.com', 34298681, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (234012476, 1, 'Felipe Roberto', 'Camacho', 'Rodríguez', '2006-06-14', 'FRobertoCamRod@gmail.com', NULL, 15);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (434501982, 4, 'Eduardo', 'Fallas', 'Delgado', '1984-01-31', 'EdFallasD@gmail.com', 28732218, 25);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (245317600, 2, 'Daisy Alejandra', 'Lindheimer', 'Weiss', '1997-04-21', 'DAlejandra@gmail.com', 94369541, 30);

Insert into Personas
(NumeroLicencia, TipoDeLicencia, Nombre, Apellido1, Apellido2,
FechaNacimiento, CorreoElectronico, TelefonoRegistrado, CantidadPuntosDisponibles)
VALUES (745227468, 2, 'Francisco', 'Piedra', 'Solís', '2000-11-14', 'franpiesolís@gmail.com', 37124512, 20);

-- Inserts de la tabla TipoLicencia.

Insert into TipoLicencia
(IdentificadorTipo, DescripcionTipo, CantidadPuntosDefecto)
VALUES (1, 'Para bicimotos y motocicletas sin límite de cilindrada
o potencia. Es decir, los conductores con esta licencia podrán
conducir todos los vehículos autorizados para las licencias clase 1.', 30);

Insert into TipoLicencia
(IdentificadorTipo, DescripcionTipo, CantidadPuntosDefecto)
VALUES (2, 'Para vehículos de 4 o más neumáticos de todo peso,
incluyendo vehículos pesados articulados.', 30);

Insert into TipoLicencia
(IdentificadorTipo, DescripcionTipo, CantidadPuntosDefecto)
VALUES (3, 'Permite conducir vehículos de transporte público
de personas en modalidad de taxi, autobús, buseta y microbús.', 30);

Insert into TipoLicencia
(IdentificadorTipo, DescripcionTipo, CantidadPuntosDefecto)
VALUES (4, 'Autoriza a conducir vehículos de equipo especial no
como excavadoras de construcción, aplanadoras o grúas de carga;
además de tractores.', 30);

Insert into TipoLicencia
(IdentificadorTipo, DescripcionTipo, CantidadPuntosDefecto)
VALUES (5, 'Permite manejar todo tipo de vehículo,
excepto los de transporte público.', 30);

-- Inserts de la tabla Vehiculos.

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('74369', 'Mercedez Benz', 'Torino', 2010, 45, 182948723);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('238496', 'Honda', 'Honda Cub', 2011, 2, 234012476);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('32194', 'Yamaha', 'Yamaha Roadster Chopper', 2009, 2, 237810937);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('EUS-832', 'BMW', 'Serie 2', 2013, 7, 245317600);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('124012', 'Audi', 'S5', 2019, 7, 289524984);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('452636', 'Ferrari', 'F12', 2014, 7, 293085857);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('SMG-007', 'Hyundai', 'Sonata', 2017, 7, 390489412);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('DCG-111', 'Ebro', '470', 2004, 1, 434501982);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('FCV-128', 'Suzuki', 'GT750', 2003, 2, 449038902);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('938411', 'Toyota', 'Corolla', 2019, 7, 715346912);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('PDF-291', 'Maserati', 'Quattroporte', 2015,7 , 743927385);

Insert into Vehiculos
(NumeroPlaca, Marca, Modelo, Anho, CapacidadPasajeros, NumeroLicenciaDuenhoRegistral)
VALUES ('IKR-236', 'Isuzu', 'D-Max', 2016, 7, 745227468);

-- Inserts de la tabla Infracciones.

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2017-04-30 11:37:02', 'Juan Diego Castro Fonseca', 5, 100000.00, NULL, NULL);

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2019-11-09 18:29:32', 'Juan Diego Castro Fonseca', 5, 100000.00, NULL, '882361');

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2022-12-24 21:19:37', 'Melanie Gamboa Serrano', 10, 200000.00, 342872891, 'DCF-902');

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2023-01-01 09:54:57', 'Melanie Gamboa Serrano', 15, 300000.00, NULL, 'RDS-323');

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2023-04-24 19:30:58', 'Sofía Guzmán Pérez', 10, 200000.00, 873574231, '34782');

Insert into Infracciones
(FechaHora, InspectorTransito, TotalDePuntosPorRebajar, MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado)
VALUES ('2023-04-24 19:43:42', 'Sofía Guzmán Pérez', 5, 100000.00, 782561729, NULL)

UPDATE Infracciones
SET TotalDePuntosPorRebajar = 60, MontoTotalInfraccion = 1200000.00
WHERE NumeroInfraccion = 4;

-- Inserts de la tabla DetalleInfracciones.

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (1, 38245, 5, 100000.00, 17);

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (2, 23785, 5, 100000.00, 20);

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (3, 93253, 10, 200000.00, 9);

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (4, 12578, 10, 200000.00, 8);

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (5, 95239, 15, 300000.00, 5);

Insert into DetalleInfracciones
(NumeroInfraccion, NumeroDetalle, PuntosPorRebajar, MontoInfraccion, IdTipoInfraccion)
VALUES (6, 23459, 15, 300000.00, 2);
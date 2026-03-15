-- ControlMOPT código DDL para la creación de las tablas.

CREATE TABLE Personas (
     NumeroLicencia INT NOT NULL,
	 TipoDeLicencia INT NOT NULL,
	 Nombre VARCHAR (20),
	 Apellido1 VARCHAR (20),
	 Apellido2 VARCHAR (20),
	 FechaNacimiento DATE,
	 CorreoElectronico VARCHAR (100),
	 TelefonoRegistrado INT,
	 CantidadPuntosDisponibles INT,
	 PRIMARY KEY (NumeroLicencia, TipoDeLicencia)
);

ALTER TABLE Personas
ADD FOREIGN KEY (TipoDeLicencia) REFERENCES TipoLicencia (IdentificadorTipo);

CREATE TABLE TipoLicencia (
     IdentificadorTipo INT NOT NULL,
	 DescripcionTipo VARCHAR (500),
	 CantidadPuntosDefecto INT,
	 PRIMARY KEY (IdentificadorTipo),
);

CREATE TABLE Vehiculos (
     NumeroPlaca VARCHAR (7) UNIQUE NOT NULL,
	 Marca VARCHAR (20),
	 Modelo VARCHAR (30),
	 Anho INT,
	 CapacidadPasajeros INT,
	 NumeroLicenciaDuenhoRegistral INT NOT NULL,
	 PRIMARY KEY (NumeroPlaca)
);

ALTER TABLE Vehiculos
ADD FOREIGN KEY (NumeroLicenciaDuenhoRegistral) REFERENCES Personas (NumeroLicencia, TipoDeLicencia);

CREATE TABLE Infracciones (
     NumeroInfraccion INT IDENTITY(1,1) NOT NULL,
	 FechaHora DATETIME,
	 InspectorTransito VARCHAR (50),
	 TotalDePuntosPorRebajar INT,
	 MontoTotalInfraccion DECIMAL (10,2),
	 LicenciaAsociada VARCHAR (9),
	 PlacaVehiculoAsociado VARCHAR (7),
	 PRIMARY KEY (NumeroInfraccion)
);

CREATE TABLE DetalleInfracciones (
     NumeroInfraccion INT NOT NULL,
	 NumeroDetalle INT NOT NULL,
	 PuntosPorRebajar INT,
	 MontoInfraccion DECIMAL (10,2),
	 IdTipoInfraccion INT,
	 PRIMARY KEY (NumeroInfraccion, NumeroDetalle)
);

ALTER TABLE DetalleInfracciones
ADD FOREIGN KEY (IdTipoInfraccion) REFERENCES CatalogoInfracciones (IdTipoInfraccion);

CREATE TABLE CatalogoInfracciones (
     IdTipoInfraccion INT IDENTITY(1,1) NOT NULL,
	 DescripcionFalta VARCHAR (500),
	 CantidadPuntosDeduce INT,
	 MontoInfraccion DECIMAL (10,2),
	 PRIMARY KEY (IdTipoInfraccion)
);
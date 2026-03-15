-- Ejercicio 3
-- Creación del Stored Procedure que calcule los puntos
-- a rebajar y monto total de la infracción.

CREATE PROCEDURE TotalPuntosBaja_TotalMontoInfraccion @NumeroInfraccion INT
AS
BEGIN
     SELECT NumeroInfraccion, PuntosPorRebajar, MontoInfraccion
	      FROM DetalleInfracciones
		  WHERE NumeroInfraccion = @NumeroInfraccion
END

SELECT SUM(PuntosPorRebajar) AS TotalPuntosPorRebajar FROM DetalleInfracciones
SELECT SUM(MontoInfraccion) AS TotalMontoInfraccion FROM DetalleInfracciones

EXEC TotalPuntosBaja_TotalMontoInfraccion 1

UPDATE Infracciones
SET TotalDePuntosPorRebajar = 60, MontoTotalInfraccion = 1200000.00
WHERE NumeroInfraccion = 1



-- Ejercicio 4
-- Creación del Trigger de la tabla Personas.

CREATE TABLE PersonasAudit (
     IDOperacionAuditada INT IDENTITY NOT NULL,
	 NumeroLicencia INT UNIQUE NOT NULL,
	 TipoDeLicencia VARCHAR (2) NOT NULL,
	 Nombre VARCHAR (20),
	 Apellido1 VARCHAR (20),
	 Apellido2 VARCHAR (20),
	 FechaNacimiento DATE,
	 CorreoElectronico VARCHAR (100),
	 TelefonoRegistrado INT,
	 CantidadPuntosDisponibles INT,
	 PRIMARY KEY (IDOperacionAuditada)
);

CREATE TRIGGER PersonasAuditUpdate
  ON Personas
  FOR UPDATE
  AS DECLARE
     @NumeroLicencia INT,
	 @TipoDeLicencia VARCHAR (2),
	 @Nombre VARCHAR (20),
	 @Apellido1 VARCHAR (20),
	 @Apellido2 VARCHAR (20),
	 @FechaNacimiento DATE,
	 @CorreoElectronico VARCHAR (100),
	 @TelefonoRegistrado INT,
	 @CantidadPuntosDisponibles INT;

	 SELECT @NumeroLicencia = ins.NumeroLicencia FROM INSERTED ins;
	 SELECT @TipoDeLicencia = ins.TipoDeLicencia FROM INSERTED ins;
	 SELECT @Nombre = ins.Nombre FROM INSERTED ins;
	 SELECT @Apellido1 = ins.Apellido1 FROM INSERTED ins;
	 SELECT @Apellido2 = ins.Apellido2 FROM INSERTED ins;
	 SELECT @FechaNacimiento = ins.FechaNacimiento FROM INSERTED ins;
	 SELECT @CorreoElectronico = ins.CorreoElectronico FROM INSERTED ins;
	 SELECT @TelefonoRegistrado = ins.TelefonoRegistrado FROM INSERTED ins;
	 SELECT @CantidadPuntosDisponibles = ins.CantidadPuntosDisponibles FROM INSERTED ins;

  BEGIN
     SET NOCOUNT ON;
	 INSERT INTO Personas (NumeroLicencia, TipoDeLicencia, Nombre, Apellido1,
	 Apellido2, FechaNacimiento, CorreoElectronico, TelefonoRegistrado,
	 CantidadPuntosDisponibles)
	 VALUES (@NumeroLicencia, @TipoDeLicencia, @Nombre, @Apellido1,
	 @Apellido2, @FechaNacimiento, @CorreoElectronico, @TelefonoRegistrado,
	 @CantidadPuntosDisponibles);
  END

  SELECT * FROM Personas;

  UPDATE Personas
  SET CantidadPuntosDisponibles = 30
  WHERE NumeroLicencia = 234012476

  SELECT * FROM PersonasAudit;

-- Ejercicio 5
-- Creación del Stored Procedure que muestre el detalle de las
-- infracciones registradas por persona y monto total de la infracción.

CREATE PROCEDURE DetalleInfracciones_TotalMontoInfraccion @NumeroLicencia INT
AS
BEGIN
  IF NOT EXISTS (SELECT * FROM Infracciones WHERE LicenciaAsociada = @NumeroLicencia)
  BEGIN
     SELECT 'El número de licencia buscado no existe.' AS ERROR
	 RETURN -1;
  END

     SELECT NumeroLicencia, Nombre, Apellido1, Apellido2,
	 MontoTotalInfraccion, LicenciaAsociada, PlacaVehiculoAsociado
	      FROM Personas, Infracciones
		  WHERE LicenciaAsociada = @NumeroLicencia
END

SELECT * FROM Infracciones WHERE LicenciaAsociada = @NumeroLicencia

EXEC DetalleInfracciones_TotalMontoInfraccion 428342713
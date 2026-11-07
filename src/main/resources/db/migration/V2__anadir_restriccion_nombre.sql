-- Opcional pero recomendado: limpiar o actualizar registros previos que podrían violar la regla
UPDATE alumnos SET nombre = 'Desconocido' WHERE nombre IS NULL OR TRIM(nombre) = '';

-- Añadir la restricción de que el nombre no puede ser nulo
ALTER TABLE alumnos ALTER COLUMN nombre SET NOT NULL;
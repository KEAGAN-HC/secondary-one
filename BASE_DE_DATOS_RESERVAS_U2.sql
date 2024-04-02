CREATE table rooms (
	room_id INT PRIMARY KEY,
	room_capacity INT NOT NULL,
	room_number INT NOT NULL,
	room_price INT NOT NULL,
	room_type VARCHAR NOT NULL
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR NOT NULL,
	address TEXT NOT NULL,
	email VARCHAR(50) NOT NULL,
	phone_number BIGINT NOT NULL
);

CREATE TABLE bookings (
  booking_id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  room_id INTEGER NOT NULL,
  arrival_date DATE NOT NULL,
  departure_date DATE NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  status VARCHAR(255) NOT NULL,
  payment_method VARCHAR(255) NOT NULL
);

CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  booking_id INTEGER NOT NULL,
  payment_date DATE NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  payment_method VARCHAR(255) NOT NULL
);

INSERT INTO rooms (room_id, room_number, room_capacity, room_price, room_type)
VALUES
  (1, 101, 2, 80, 'Individual'),
  (2, 102, 2, 80, 'Individual'),
  (3, 103, 2, 100, 'Doble'),
  (4, 104, 2, 100, 'Doble'),
  (5, 105, 4, 150, 'Familiar'),
  (6, 106, 4, 150, 'Familiar'), 
  (7, 201, 2, 80, 'Individual'),
  (8, 202, 2, 100, 'Doble'),
  (9, 203, 2, 100, 'Doble'),
  (10, 204, 4, 175, 'Familiar'),
  (11, 205, 4, 175, 'Familiar'),
  (12, 301, 2, 90, 'Individual'),
  (13, 302, 2, 110, 'Doble'),
  (14, 303, 4, 180, 'Familiar'),
  (15, 304, 2, 85, 'Individual'),
  (16, 305, 2, 105, 'Doble'),
  (17, 306, 4, 160, 'Familiar'),
  (18, 401, 2, 150, 'Suite'),
  (19, 402, 2, 150, 'Suite'),
  (20, 403, 4, 200, 'Familiar Suite');
  
SELECT * FROM rooms;

SELECT * FROM rooms WHERE room_type = 'Suite';

ALTER TABLE customers RENAME COLUMN client_id TO customer_id; 

ALTER TABLE customers ALTER COLUMN customer_id TYPE VARCHAR;


INSERT INTO customers (customer_id, customer_name, address, email, phone_number)
VALUES
(1, 'Juan Perez', 'Calle Principal 123, Ciudad de Mexico', 'juan.perez@email.com', '5512345678'),
(2, 'Maria Gonzalez', 'Avenida Siempreviva 742, Springfield', 'maria.gonzalez@example.com', '5551234567'),
(3, 'Pedro Lopez', 'Calle del Sol 54, Guadalajara', 'pedro.lopez@hotmail.com', '52333445566'),
(4, 'Ana Martinez', 'Avenida Juarez 100, Monterrey', 'ana.martinez@gmail.com', '52818283848'),
(5, 'Roberto Garcia', 'Calle Vallarta 20, Tijuana', 'roberto.garcia@yahoo.com', '52666778899'),
(6, 'Sofia Rodriguez', 'Calle Belisario Dominguez 11, Chihuahua', 'sofia.rodriguez@outlook.com', '521555667788'),
(7, 'David Hernandez', 'Avenida Constitucion 34, Hermosillo', 'david.hernandez@live.com', '526465667789'),
(8, 'Laura Flores', 'Calle Independencia 56, Puebla', 'laura.flores@icloud.com', '522223344556'),
(9, 'Miguel Diaz', 'Avenida Reforma 78, Veracruz', 'miguel.diaz@protonmail.com', '524445566778'),
(10, 'Isabel Morales', 'Calle Morelos 90, Oaxaca', 'isabel.morales@tutanota.com', '527778899001'),
(11, 'Carlos Romero', 'Avenida Hidalgo 12, Chiapas', 'carlos.romero@yandex.com', '529990011223'),
(12, 'Mariana Silva', 'Calle Guerrero 14, Yucatan', 'mariana.silva@zoho.com', '523334455667'),
(13, 'Jorge Torres', 'Avenida Madero 16, Quintana Roo', 'jorge.torres@aol.com', '525556677889'),
(14, 'Diana Mendoza', 'Calle Benito Juarez 18, Tabasco', 'diana.mendoza@gmx.com', '524445566779'),
(15, 'Alejandro Nunez', 'Avenida Cuauhtemoc 20, Campeche', 'alejandro.nunez@mail.com', '526667788990'),
(16, 'Patricia Perez', 'Calle 5 de Mayo 22, Coahuila', 'patricia.perez@inbox.com', '528182838481'),
(17, 'Enrique Garcia', 'Avenida Tecnologico 24, Nuevo Leon', 'enrique.garcia@fastmail.com', '521555667789'),
(18, 'Gabriela Martinez', 'Calle Francisco I. Madero 26, San Luis Potosi', 'gabriela.martinez@protonmail.com', '522223344557'),
(19, 'Ricardo Lopez', 'Avenida Ninos Heroes 28, Tamaulipas', 'ricardo.lopez@tutanota.com', '524445566780'),
(20, 'Sandra Rodriguez', 'Calle Independencia 30, Guanajuato', 'sandra.rodriguez@inbox.com', '525556677891');

TRUNCATE TABLE customers

SELECT * FROM customers;

INSERT INTO customers (customer_id, customer_name, address, email, phone_number)
VALUES
(1, 'Juan Perez', 'Calle Principal 123, Ciudad de Mexico', 'juan.perez@email.com', '5512345678'),
(2, 'Maria Gonzalez', 'Avenida Siempreviva 742, Springfield', 'maria.gonzalez@example.com', '5551234567'),
(3, 'Pedro Lopez', 'Calle del Sol 54, Guadalajara', 'pedro.lopez@hotmail.com', '52333445566'),
(4, 'Ana Martinez', 'Avenida Juarez 100, Monterrey', 'ana.martinez@gmail.com', '52818283848'),
(5, 'Roberto Garcia', 'Calle Vallarta 20, Tijuana', 'roberto.garcia@yahoo.com', '52666778899'),
(6, 'Sofia Rodriguez', 'Calle Belisario Dominguez 11, Chihuahua', 'sofia.rodriguez@outlook.com', '521555667788'),
(7, 'David Hernandez', 'Avenida Constitucion 34, Hermosillo', 'david.hernandez@live.com', '526465667789'),
(8, 'Laura Flores', 'Calle Independencia 56, Puebla', 'laura.flores@icloud.com', '522223344556'),
(9, 'Miguel Diaz', 'Avenida Reforma 78, Veracruz', 'miguel.diaz@protonmail.com', '524445566778'),
(10, 'Isabel Morales', 'Calle Morelos 90, Oaxaca', 'isabel.morales@tutanota.com', '527778899001'),
(11, 'Carlos Romero', 'Avenida Hidalgo 12, Chiapas', 'carlos.romero@yandex.com', '529990011223'),
(12, 'Mariana Silva', 'Calle Guerrero 14, Yucatan', 'mariana.silva@zoho.com', '523334455667'),
(13, 'Jorge Torres', 'Avenida Madero 16, Quintana Roo', 'jorge.torres@aol.com', '525556677889'),
(14, 'Diana Mendoza', 'Calle Benito Juarez 18, Tabasco', 'diana.mendoza@gmx.com', '524445566779'),
(15, 'Alejandro Nunez', 'Avenida Cuauhtemoc 20, Campeche', 'alejandro.nunez@mail.com', '526667788990'),
(16, 'Patricia Perez', 'Calle 5 de Mayo 22, Coahuila', 'patricia.perez@inbox.com', '528182838481');


INSERT INTO bookings (customer_id, room_id, arrival_date, departure_date, price, status, payment_method)
VALUES
(1, 1, '2024-04-01', '2024-04-03', 80, 'Confirmada', 'Tarjeta de crédito'),
(2, 2, '2024-04-01', '2024-04-03', 160, 'Confirmada', 'Transferencia bancaria'),
(2, 3, '2024-04-01', '2024-04-03', 160, 'Confirmada', 'Transferencia bancaria'),
(3, 4, '2024-04-01', '2024-04-03', 100, 'Confirmada', 'Efectivo'),
(4, 5, '2024-04-01', '2024-04-03', 200, 'Confirmada', 'Tarjeta de crédito'),
(4, 6, '2024-04-01', '2024-04-03', 200, 'Confirmada', 'Tarjeta de crédito'),
(5, 7, '2024-04-01', '2024-04-03', 160, 'Confirmada', 'Efectivo'),
(5, 8, '2024-04-01', '2024-04-03', 160, 'Confirmada', 'Efectivo'),
(6, 9, '2024-04-01', '2024-04-03', 150, 'Confirmada', 'Transferencia bancaria'),
(7, 10, '2024-04-01', '2024-04-03', 300, 'Confirmada', 'Efectivo'),
(7, 11, '2024-04-01', '2024-04-03', 300, 'Confirmada', 'Efectivo'),
(8, 12, '2024-04-01', '2024-04-03', 90, 'Confirmada', 'Tarjeta de crédito'),
(9, 13, '2024-04-01', '2024-04-03', 210, 'Confirmada', 'Transferencia bancaria'),
(9, 14, '2024-04-01', '2024-04-03', 210, 'Confirmada', 'Transferencia bancaria'),
(10, 15, '2024-04-01', '2024-04-03', 85, 'Confirmada', 'Efectivo'),
(11, 16, '2024-04-01', '2024-04-03', 105, 'Confirmada', 'Tarjeta de crédito'),
(12, 17, '2024-04-01', '2024-04-03', 320, 'Confirmada', 'Efectivo'),
(12, 18, '2024-04-01', '2024-04-03', 320, 'Confirmada', 'Efectivo'),
(13, 19, '2024-04-01', '2024-04-03', 150, 'Confirmada', 'Transferencia bancaria'),
(14, 20, '2024-04-01', '2024-04-03', 360, 'Confirmada', 'Efectivo'),
(14, 1, '2024-04-01', '2024-04-03', 360, 'Confirmada', 'Efectivo'),
(15, 2, '2024-04-01', '2024-04-03', 160, 'Confirmada', 'Tarjeta de crédito'),
(16, 3, '2024-04-01', '2024-04-03', 210, 'Confirmada', 'Transferencia bancaria'),
(16, 4, '2024-04-01', '2024-04-03', 210, 'Confirmada', 'Transferencia bancaria');

INSERT INTO bookings (customer_id, room_id, arrival_date, departure_date, price, status, payment_method)
VALUES (17, 5, '2024-04-01', '2024-04-03', 200, 'Confirmada', 'Tarjeta de crédito');

SELECT * FROM bookings;



CREATE OR REPLACE FUNCTION agregar_nueva_reserva(
    IN customer_id INT,
    IN room_ids INT[],
    IN arrival_date DATE,
    IN departure_date DATE,
    IN status VARCHAR(255),
    IN payment_method VARCHAR(255)
)
RETURNS VOID
AS $$
DECLARE
    total_price DECIMAL(10, 2);
BEGIN
    SELECT SUM(room_price) INTO total_price
    FROM rooms
    WHERE room_id = ANY(room_ids);
    
    INSERT INTO bookings (customer_id, room_id, arrival_date, departure_date, price, status, payment_method)
    VALUES
    (customer_id, unnest(room_ids), arrival_date, departure_date, total_price, status, payment_method);
END;
$$ LANGUAGE plpgsql;




SELECT agregar_nueva_reserva(
    17,
    ARRAY[1, 2],
    '2024-04-01',
    '2024-04-03',
    'Confirmada',
    'Tarjeta de crédito'
);


INSERT INTO payments (booking_id, payment_date, amount, payment_method)
SELECT booking_id, CURRENT_DATE, price, payment_method
FROM bookings;

SELECT * FROM payments;

TRUNCATE TABLE payments


DELETE FROM bookings
WHERE booking_id = 17;



UPDATE rooms
SET room_price = 120
WHERE room_id = 1;




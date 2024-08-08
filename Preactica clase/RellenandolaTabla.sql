
      USE bd_tienda;

      -- Insertar datos en la tabla `categorias`
      INSERT INTO `bd_tienda`.`categorias` (`nombre`)
      VALUES 
      ('Portátiles'),
      ('Accesorios'),
      ('Impresoras'),
      ('Cámaras'),
      ('Discos Duros');

      -- Insertar datos en la tabla `productos`
      INSERT INTO `bd_tienda`.`productos` (`nombre`, `descripcion`, `precio`, `stock`, `fecha_creacion`, `estado`, `id_categorias`)
      VALUES
      ('Asus ZenBook 14', 'Portátil ultradelgado con procesador Intel Core i7', 1200.00, 10, NOW(), 1, 1),
      ('Lenovo ThinkPad X1', 'Portátil empresarial con teclado retroiluminado', 1500.00, 8, NOW(), 1, 1),
      ('Dell Inspiron 15', 'Portátil con pantalla de 15.6 pulgadas', 800.00, 15, NOW(), 1, 1),
      ('HP Spectre x360', 'Portátil convertible 2 en 1', 1400.00, 12, NOW(), 1, 1),
      ('Canon EOS 5D Mark IV', 'Cámara DSLR profesional', 2500.00, 5, NOW(), 1, 4),
      ('Canon EOS Rebel T7', 'Cámara DSLR de nivel de entrada', 600.00, 7, NOW(), 1, 4),
      ('HP OfficeJet Pro 9015', 'Impresora todo en uno', 300.00, 20, NOW(), 1, 3),
      ('Epson EcoTank ET-2760', 'Impresora con tanque de tinta recargable', 250.00, 18, NOW(), 1, 3),
      ('Logitech MX Master 3', 'Ratón ergonómico para profesionales', 100.00, 30, NOW(), 1, 2),
      ('Razer BlackWidow V3', 'Teclado mecánico para gaming', 130.00, 25, NOW(), 1, 2),
      ('Logitech C920', 'Webcam Full HD', 70.00, 22, NOW(), 1, 2),
      ('WD My Passport 2TB', 'Disco duro externo de 2TB', 120.00, 30, NOW(), 1, 5),
      ('Seagate Backup Plus 4TB', 'Disco duro externo de 4TB', 150.00, 20, NOW(), 1, 5),
      ('Asus ROG Strix', 'Portátil gaming con pantalla de 17.3 pulgadas', 1800.00, 6, NOW(), 1, 1),
      ('Lenovo Legion 5', 'Portátil para gaming con GPU NVIDIA GTX 1650', 1300.00, 9, NOW(), 1, 1),
      ('Dell XPS 13', 'Portátil con pantalla InfinityEdge', 1300.00, 11, NOW(), 1, 1),
      ('HP Envy 13', 'Portátil con pantalla Full HD', 1100.00, 14, NOW(), 1, 1),
      ('Canon PowerShot G7 X', 'Cámara compacta de alta calidad', 700.00, 8, NOW(), 1, 4),
      ('Nikon D3500', 'Cámara DSLR de iniciación', 500.00, 10, NOW(), 1, 4),
      ('Brother MFC-L2750DW', 'Impresora láser multifunción', 400.00, 12, NOW(), 1, 3),
      ('HP LaserJet Pro MFP M428fdw', 'Impresora láser multifunción', 350.00, 15, NOW(), 1, 3),
      ('Corsair K95 RGB', 'Teclado mecánico con retroiluminación RGB', 160.00, 18, NOW(), 1, 2),
      ('SteelSeries Rival 600', 'Ratón para gaming con sensores duales', 90.00, 25, NOW(), 1, 2),
      ('Logitech Brio', 'Webcam 4K Ultra HD', 150.00, 12, NOW(), 1, 2),
      ('Samsung T7 1TB', 'Disco duro externo SSD de 1TB', 150.00, 28, NOW(), 1, 5),
      ('SanDisk Extreme 2TB', 'Disco duro externo SSD de 2TB', 200.00, 16, NOW(), 1, 5),
      ('Acer Nitro 5', 'Portátil gaming con GPU NVIDIA GTX 1650', 1200.00, 7, NOW(), 1, 1),
      ('MSI GF65 Thin', 'Portátil para gaming con GPU NVIDIA RTX 3060', 1400.00, 10, NOW(), 1, 1),
      ('HP Pavilion 15', 'Portátil con procesador AMD Ryzen', 850.00, 13, NOW(), 1, 1),
      ('Dell G5 15', 'Portátil gaming con pantalla de 15.6 pulgadas', 1300.00, 11, NOW(), 1, 1),
      ('Canon EOS M50', 'Cámara sin espejo con objetivo intercambiable', 700.00, 9, NOW(), 1, 4),
      ('Sony Alpha A6400', 'Cámara sin espejo con enfoque automático rápido', 900.00, 6, NOW(), 1, 4),
      ('HP DeskJet Plus 4155', 'Impresora todo en uno económica', 120.00, 25, NOW(), 1, 3),
      ('Canon PIXMA TR4520', 'Impresora multifuncional con Wi-Fi', 150.00, 22, NOW(), 1, 3),
      ('Razer DeathAdder V2', 'Ratón para gaming con sensor óptico', 80.00, 27, NOW(), 1, 2),
      ('Corsair K70 RGB MK.2', 'Teclado mecánico con retroiluminación RGB', 140.00, 20, NOW(), 1, 2),
      ('Logitech G922', 'Webcam con enfoque automático', 90.00, 18, NOW(), 1, 2),
      ('Seagate Expansion 1TB', 'Disco duro externo de 1TB', 70.00, 35, NOW(), 1, 5),
      ('WD Elements 1TB', 'Disco duro externo de 1TB', 65.00, 30, NOW(), 1, 5),
      ('MSI Creator Z16', 'Portátil para creadores de contenido', 2000.00, 5, NOW(), 1, 1),
      ('Gigabyte Aero 15', 'Portátil de alto rendimiento para creadores', 1800.00, 7, NOW(), 1, 1),
      ('Asus TUF Gaming A15', 'Portátil gaming con GPU NVIDIA GTX 1650', 1100.00, 10, NOW(), 1, 1),
      ('HP Omen 15', 'Portátil gaming con pantalla de 15.6 pulgadas', 1300.00, 8, NOW(), 1, 1),
      ('Canon EOS Rebel T8i', 'Cámara DSLR con pantalla táctil', 750.00, 7, NOW(), 1, 4),
      ('Olympus OM-D E-M10 Mark III', 'Cámara sin espejo compacta', 600.00, 8, NOW(), 1, 4),
      ('Brother HL-L2350DW', 'Impresora láser monocromo', 200.00, 15, NOW(), 1, 3),
      ('HP Color LaserJet Pro MFP M479fdw', 'Impresora láser multifunción a color', 500.00, 12, NOW(), 1, 3),
      ('Razer Viper Ultimate', 'Ratón para gaming inalámbrico', 120.00, 20, NOW(), 1, 2),
      ('Corsair Scimitar RGB Elite', 'Teclado mecánico para juegos MMO', 130.00, 15, NOW(), 1, 2),
      ('Logitech StreamCam', 'Webcam para streaming', 130.00, 16, NOW(), 1, 2),
      ('WD My Book 8TB', 'Disco duro externo de 8TB', 300.00, 10, NOW(), 1, 5);
      
      -- Insertar datos en la tabla `clientes`
      INSERT INTO `bd_tienda`.`clientes` (`nombres`, `correo`, `direccion`, `fecha_creacion`, `estado`)
      VALUES
      ('Juan Pérez', 'juan.perez@example.com', 'Calle Falsa 123', NOW(), 1),
      ('María Gómez', 'maria.gomez@example.com', 'Avenida Siempre Viva 456', NOW(), 1),
      ('Carlos López', 'carlos.lopez@example.com', 'Boulevard de los Sueños 789', NOW(), 1),
      ('Ana Martínez', 'ana.martinez@example.com', 'Plaza Mayor 101', NOW(), 1),
      ('Luis Rodríguez', 'luis.rodriguez@example.com', 'Calle del Sol 202', NOW(), 1),
      ('Laura Fernández', 'laura.fernandez@example.com', 'Calle Luna 303', NOW(), 1),
      ('Miguel Álvarez', 'miguel.alvarez@example.com', 'Avenida del Mar 404', NOW(), 1),
      ('Sofía Morales', 'sofia.morales@example.com', 'Calle del Viento 505', NOW(), 1),
      ('Javier Castro', 'javier.castro@example.com', 'Calle del Río 606', NOW(), 1),
      ('Isabel Ruiz', 'isabel.ruiz@example.com', 'Avenida de la Estrella 707', NOW(), 1),
      ('Roberto Ortega', 'roberto.ortega@example.com', 'Calle del Campo 808', NOW(), 1),
      ('Patricia Romero', 'patricia.romero@example.com', 'Calle del Bosque 909', NOW(), 1),
      ('Andrés Sánchez', 'andres.sanchez@example.com', 'Calle de la Luna 1001', NOW(), 1),
      ('Beatriz López', 'beatriz.lopez@example.com', 'Avenida de la Noche 1102', NOW(), 1),
      ('Ricardo González', 'ricardo.gonzalez@example.com', 'Calle del Horizonte 1203', NOW(), 1),
      ('Silvia Moreno', 'silvia.moreno@example.com', 'Calle de la Brisa 1304', NOW(), 1),
      ('Fernando Díaz', 'fernando.diaz@example.com', 'Calle del Cielo 1405', NOW(), 1),
      ('Gloria Jiménez', 'gloria.jimenez@example.com', 'Avenida de la Primavera 1506', NOW(), 1),
      ('Pedro Molina', 'pedro.molina@example.com', 'Calle de la Flor 1607', NOW(), 1),
      ('Carmen Vargas', 'carmen.vargas@example.com', 'Calle del Reloj 1708', NOW(), 1);
      
      INSERT INTO `facturas` (`fecha_factura`, `fecha_creacion`, `id_clientes`) VALUES
      ('2024-04-15 14:23:12', '2024-04-20 09:11:45', 1),
      ('2024-05-03 10:15:22', '2024-05-10 16:22:30', 2),
      ('2024-06-21 08:45:33', '2024-06-25 13:44:59', 3),
      ('2024-07-11 17:59:44', '2024-07-15 18:30:12', 4),
      ('2024-08-02 12:30:55', '2024-08-05 11:22:45', 5),
      ('2024-04-28 09:15:20', '2024-04-30 10:20:10', 6),
      ('2024-05-17 11:45:50', '2024-05-22 15:30:55', 7),
      ('2024-06-10 14:23:35', '2024-06-14 12:10:15', 8),
      ('2024-07-23 16:30:25', '2024-07-27 17:45:20', 9),
      ('2024-08-15 13:40:10', '2024-08-20 19:05:35', 10),
      ('2024-04-06 10:15:45', '2024-04-10 14:22:30', 11),
      ('2024-05-19 15:30:55', '2024-05-25 09:20:25', 12),
      ('2024-06-14 12:45:12', '2024-06-18 16:33:00', 13),
      ('2024-07-08 08:30:35', '2024-07-12 10:15:45', 14),
      ('2024-08-05 11:22:45', '2024-08-10 14:00:20', 15),
      ('2024-04-22 09:05:30', '2024-04-26 12:45:55', 16),
      ('2024-05-28 13:30:25', '2024-06-01 16:00:15', 17),
      ('2024-06-12 10:20:10', '2024-06-17 14:55:30', 18),
      ('2024-07-20 16:45:55', '2024-07-25 13:15:40', 19),
      ('2024-08-18 12:33:25', '2024-08-22 17:40:10', 20),
      ('2024-04-30 08:55:40', '2024-05-05 11:30:50', 1),
      ('2024-05-22 15:10:30', '2024-05-28 09:25:35', 2),
      ('2024-06-09 11:45:55', '2024-06-14 16:20:10', 3),
      ('2024-07-02 09:33:25', '2024-07-08 14:00:45', 4),
      ('2024-08-10 13:50:35', '2024-08-15 16:22:25', 5),
      ('2024-04-20 10:20:40', '2024-04-25 12:55:15', 6),
      ('2024-05-08 09:50:55', '2024-05-13 11:40:10', 7),
      ('2024-06-16 14:33:30', '2024-06-21 15:55:35', 8),
      ('2024-07-25 12:10:45', '2024-07-30 18:25:00', 9),
      ('2024-08-09 16:00:20', '2024-08-13 19:45:55', 10);


      INSERT INTO `bd_tienda`.`detalle_factura` (`cantidad`, `id_facturas`, `id_productos`) VALUES
      -- Factura 1
      (1, 1, 1), (2, 1, 2), (1, 1, 3), (3, 1, 4), (2, 1, 5),
      -- Factura 2
      (1, 2, 6), (2, 2, 7), (1, 2, 8), (3, 2, 9), (2, 2, 10),
      -- Factura 3
      (1, 3, 11), (2, 3, 12), (1, 3, 13), (3, 3, 14), (2, 3, 15),
      -- Factura 4
      (1, 4, 16), (2, 4, 17), (1, 4, 18), (3, 4, 19), (2, 4, 20),
      -- Factura 5
      (1, 5, 21), (2, 5, 22), (1, 5, 23), (3, 5, 24), (2, 5, 25),
      -- Factura 6
      (1, 6, 26), (2, 6, 27), (1, 6, 28), (3, 6, 29), (2, 6, 30),
      -- Factura 7
      (1, 7, 31), (2, 7, 32), (1, 7, 33), (3, 7, 34), (2, 7, 35),
      -- Factura 8
      (1, 8, 36), (2, 8, 37), (1, 8, 38), (3, 8, 39), (2, 8, 40),
      -- Factura 9
      (1, 9, 41), (2, 9, 42), (1, 9, 43), (3, 9, 44), (2, 9, 45),
      -- Factura 10
      (1, 10, 46), (2, 10, 47), (1, 10, 48), (3, 10, 49), (2, 10, 50),
      -- Factura 11
      (1, 11, 51), (2, 11, 1), (1, 11, 2), (3, 11, 3), (2, 11, 4),
      -- Factura 12
      (1, 12, 5), (2, 12, 6), (1, 12, 7), (3, 12, 8), (2, 12, 9),
      -- Factura 13
      (1, 13, 10), (2, 13, 11), (1, 13, 12), (3, 13, 13), (2, 13, 14),
      -- Factura 14
      (1, 14, 15), (2, 14, 16), (1, 14, 17), (3, 14, 18), (2, 14, 19),
      -- Factura 15
      (1, 15, 20), (2, 15, 21), (1, 15, 22), (3, 15, 23), (2, 15, 24),
      -- Factura 16
      (1, 16, 25), (2, 16, 26), (1, 16, 27), (3, 16, 28), (2, 16, 29),
      -- Factura 17
      (1, 17, 30), (2, 17, 31), (1, 17, 32), (3, 17, 33), (2, 17, 34),
      -- Factura 18
      (1, 18, 35), (2, 18, 36), (1, 18, 37), (3, 18, 38), (2, 18, 39),
      -- Factura 19
      (1, 19, 40), (2, 19, 41), (1, 19, 42), (3, 19, 43), (2, 19, 44),
      -- Factura 20
      (1, 20, 45), (2, 20, 46), (1, 20, 47), (3, 20, 48), (2, 20, 49),
      -- Factura 21
      (1, 21, 50), (2, 21, 51), (1, 21, 1), (3, 21, 2), (2, 21, 3),
      -- Factura 22
      (1, 22, 4), (2, 22, 5), (1, 22, 6), (3, 22, 7), (2, 22, 8),
      -- Factura 23
      (1, 23, 9), (2, 23, 10), (1, 23, 11), (3, 23, 12), (2, 23, 13),
      -- Factura 24
      (1, 24, 14), (2, 24, 15), (1, 24, 16), (3, 24, 17), (2, 24, 18),
      -- Factura 25
      (1, 25, 19), (2, 25, 20), (1, 25, 21), (3, 25, 22), (2, 25, 23),
      -- Factura 26
      (1, 26, 24), (2, 26, 25), (1, 26, 26), (3, 26, 27), (2, 26, 28),
      -- Factura 27
      (1, 27, 29), (2, 27, 30), (1, 27, 31), (3, 27, 32), (2, 27, 33),
      -- Factura 28
      (1, 28, 34), (2, 28, 35), (1, 28, 36), (3, 28, 37), (2, 28, 38),
      -- Factura 29
      (1, 29, 39), (2, 29, 40), (1, 29, 41), (3, 29, 42), (2, 29, 43),
      -- Factura 30
      (1, 30, 44), (2, 30, 45), (1, 30, 46), (3, 30, 47), (2, 30, 48);
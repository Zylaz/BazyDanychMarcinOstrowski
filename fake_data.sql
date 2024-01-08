-- Wstawianie przyk³adowych danych do tabeli ProductDetails
INSERT INTO ProductDetails(DetailName)
VALUES ('Electronics'), ('Apparel'), ('House'), ('Food'), ('Cars'), ('Garden'), ('Books');

-- Wstawianie przyk³adowych danych do tabeli Products
INSERT INTO Products (ProductName, Cena, ProductDetailsID)
VALUES 
    ('TV 50"', 2400.00, 1),
    ('Tuxedo', 1550.99, 2),
    ('Sofa', 750.50, 3),
    ('Box of Chocolades', 29.99, 4),
	('Winter Tires', 500.00, 5),
	('Lawnmower', 1800.99, 6),
	('Book: Introduction to SQL', 39.90, 7);

-- Wstawianie przyk³adowych danych do tabeli Clients
INSERT INTO Clients (FirstName, LastName, Budget, DataOfRegister, AdditionalInformation)
VALUES 
    ('Anna', 'Kowalska', 2000.00, '2022-01-15T10:30:00', '{"telefon": "123-456-789", "email": "anna@example.com"}'),
    ('Marcin', 'Nowak', 3500.50, '2022-02-20T14:45:00', '{"telefon": "987-654-321", "email": "marcin@example.com"}'),
    ('Iga', 'Przyk³adowa', 15500.00, '2022-03-10T04:15:00', '{"telefon": "111-222-333", "email": "igaprzykladowa@example.com"}'),
	('Józef', 'Kowalski', 52000.00, '2019-08-15T06:30:00', '{"telefon": "121-454-787", "email": "kowalskij@example.com"}'),
    ('Mariusz', 'Jeziorak', 35200.50, '2020-01-20T10:45:00', '{"telefon": "987-123-321", "email": "jezioraknieoborak@example.com"}'),
    ('Magdalena', 'Madzia', 1500.00, '2018-03-10T09:15:00', '{"telefon": "707-808-909", "email": "magdaalena@example.com"}'),
	('Iwona', 'Kowalczyk', 27000.00, '2017-04-15T20:30:00', '{"telefon": "125-456-789", "email": "kowalczyki@example.com"}'),
    ('Arkadiusz', 'Kondratowicz', 31500.00, '2020-11-20T16:45:00', '{"telefon": "521-654-321", "email": "arekk@example.com"}'),
    ('Aloizy', 'Gabka', 50000.00, '2021-12-12T08:15:30', '{"telefon": "333-222-333", "email": "aloiz@example.com"}'),
	('Katarzyna', 'Nowak', 8000.00, '2023-01-05T14:30:00', '{"telefon": "999-888-777", "email": "katarzyna@example.com"}');

-- Wstawianie przyk³adowych danych do tabeli Adresses
INSERT INTO Adresses (ClientID, Street, City, PostalCode)
VALUES 
    (1, 'ul. Kwiatowa 7', 'Warszawa', '00-001'),
    (2, 'ul. S³oneczna 15', 'Kraków', '30-002'),
    (3, 'ul. Leœna 3', 'Gdañsk', '80-003'),
	(4, 'ul. Przemian 9', 'Warszawa', '03-001'),
    (5, 'ul. Prosta 20', 'Bydgoszcz', '10-002'),
    (6, 'ul. Morska 4', 'Gdynia', '00-103'),
	(7, 'ul. Krzywa 1', 'Katowice', '00-001'),
    (8, 'ul. Ukoœna 10', 'Zakopane', '30-002'),
    (9, 'ul. Przek¹tna 11/3', '£ódŸ', '08-008'),
	(10, 'ul. Spacerowa 2', 'Poznañ', '60-060');

-- Wstawianie przyk³adowych danych do tabeli Orders
INSERT INTO Orders (ClientID, DataZamowienia, Status)
VALUES 
    (1, '2023-07-15T12:00:00', 'W trakcie realizacji'),
    (2, '2023-03-18T09:30:00', 'Zrealizowane'),
    (3, '2023-02-20T14:00:00', 'Wys³ane'),
	(4, '2023-01-15T21:00:00', 'Anulowane'),
    (5, '2023-04-18T04:30:00', 'Wys³ane'),
    (6, '2023-08-20T16:30:00', 'Wys³ane'),
	(7, '2023-09-15T12:00:00', 'W trakcie realizacji'),
    (8, '2023-10-18T09:45:00', 'Zrealizowane'),
    (9, '2023-12-20T15:15:00', 'OpóŸnione'),
	(10, '2023-05-10T08:30:00', 'Wys³ane');

-- Wstawianie przyk³adowych danych do tabeli OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES 
    (1, 1, 2),
    (1, 3, 1),
    (1, 4, 3),
    (2, 1, 1),
	(3, 4, 2),
    (4, 5, 1),
    (5, 1, 3),
	(5, 2, 3),
    (6, 6, 1),
	(7, 1, 2),
    (8, 1, 1),
	(8, 2, 1),
	(8, 3, 1),
	(8, 4, 1),
    (9, 3, 3),
    (10, 4, 1);

-- Wstawianie przyk³adowych danych do tabeli PaymentHistory
INSERT INTO PaymentHistory(ClientID, Amount, PaymentDate)
VALUES 
    (1, 1200.00, '2022-03-16T15:30:00'),
    (2, 250.50, '2022-01-19T11:45:00'),
    (3, 699.99, '2022-05-21T08:00:00'),
	(4, 1120.00, '2022-11-16T15:30:00'),
    (5, 2501.50, '2022-10-19T11:45:00'),
    (6, 6999.99, '2022-12-21T08:00:00'),
	(7, 12000.00, '2022-07-16T15:30:00'),
    (8, 2500.50, '2022-06-19T11:45:00'),
    (9, 898.99, '2022-05-21T08:00:00'),
	(10, 1800.00, '2023-02-28T14:30:00');

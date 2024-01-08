-- Tworz� now� baz� danych
CREATE DATABASE ClientManagement;
GO

-- Inicjuj� u�ywanie nowej bazy danych
USE ClientManagement;
GO

-- Tworzenie tabeli z danymi klient�w
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Budget MONEY NOT NULL,
    DataOfRegister DATETIME NOT NULL,
    AdditionalInformation NVARCHAR(MAX)
);
GO

-- Tworzenie tabeli zawieraj�cej adresy klient�w
CREATE TABLE Adresses (
    AdresID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    Street NVARCHAR(100),
    City NVARCHAR(50),
    PostalCode NVARCHAR(10)
);
GO

-- Tworzenie tabeli z rodzajami produkt�w
CREATE TABLE ProductDetails (
    ProductDetailsID INT PRIMARY KEY IDENTITY(1,1),
    DetailName NVARCHAR(50) NOT NULL UNIQUE
);
GO

-- Tworzenie tabeli zawieraj�cej informacje o produktach
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Cena MONEY NOT NULL,
    ProductDetailsID INT FOREIGN KEY REFERENCES ProductDetails(ProductDetailsID)
);
GO

-- Tworzenie tabeli z zam�wieniami
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    DataZamowienia DATETIMEOFFSET NOT NULL,
    Status NVARCHAR(50)
);
GO

-- Tworzenie tabeli OrderDetails
CREATE TABLE OrderDetails (
    DetailsID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT
);
GO

-- Tworzenie tabeli zawieraj�cej histori� p�atno�ci
CREATE TABLE PaymentHistory (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    Amount MONEY,
    PaymentDate DATETIMEOFFSET
);
GO



-- Tworzenie indeksu na kolumnie DetailName w tabeli ProductDetails
CREATE INDEX IDX_ProductDetails_DetailName ON ProductDetails(DetailName);

-- Tworzenie indeksu na kolumnie ProductName w tabeli Products
CREATE INDEX IDX_Products_ProductName ON Products(ProductName);

-- Tworzenie indeksu na kolumnie ClientID w tabeli Adresses
CREATE INDEX IDX_Adresses_ClientID ON Adresses(ClientID);

-- Tworzenie indeksu na kolumnie DataZamowienia w tabeli Orders
CREATE INDEX IDX_Orders_DataZamowienia ON Orders(DataZamowienia);

-- Tworzenie indeksu na kolumnie Status w tabeli Orders
CREATE INDEX IDX_Orders_Status ON Orders(Status);

-- Tworzenie indeksu na kolumnie ProductID w tabeli OrderDetails
CREATE INDEX IDX_OrderDetails_ProductID ON OrderDetails(ProductID);

-- Tworzenie indeksu na kolumnie PaymentDate w tabeli PaymentHistory
CREATE INDEX IDX_PaymentHistory_PaymentDate ON PaymentHistory(PaymentDate);

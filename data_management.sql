CREATE PROCEDURE ProcessClientTransaction
    @ClientID INT
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Aktualizacja bud¿etu wybranego przez nas klienta
        UPDATE Clients
        SET Budget = Budget - 500.00
        WHERE ClientID = @ClientID;

        -- Dodanie nowego produktu, jeœli bud¿et klienta po aktualizacji jest wiêkszy ni¿ 10000.00
		-- mo¿na myœleæ o tym jako o prezencie jeœli klient oszczêdza
        IF (SELECT Budget FROM Clients WHERE ClientID = @ClientID) > 10000.00
        BEGIN
            INSERT INTO Products (ProductName, Cena, ProductDetailsID)
            VALUES ('Laptop Dell', 1500.00, 1);

            DECLARE @NewProductID INT = SCOPE_IDENTITY();

            -- Dodanie nowego zamówienia, jeœli zosta³ dodany nowy produkt
            IF @NewProductID IS NOT NULL
            BEGIN
                INSERT INTO Orders (ClientID, DataZamowienia, Status)
                VALUES (@ClientID, '2024-01-12T10:00:00', 'Nowe');

                DECLARE @NewOrderID INT = SCOPE_IDENTITY();

                -- Dodanie nowego szczegó³u zamówienia
                INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
                VALUES (@NewOrderID, @NewProductID, 1);
            END
        END

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
    END CATCH;
END;

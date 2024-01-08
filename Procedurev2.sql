CREATE PROCEDURE InformacjeOZamowieniach
    @KlientID INT
AS
BEGIN
    SELECT 
        C.FirstName + ' ' + C.LastName AS NazwaKlienta,
        O.OrderID,
        O.DataZamowienia,
        OD.ProductID,
        P.ProductName,
        OD.Quantity,
        P.Cena * OD.Quantity AS Kwota
    FROM 
        Clients C
    JOIN 
        Orders O ON C.ClientID = O.ClientID
    JOIN 
        OrderDetails OD ON O.OrderID = OD.OrderID
    JOIN 
        Products P ON OD.ProductID = P.ProductID
    WHERE 
        C.ClientID = @KlientID;

    -- Obliczenie sumy kwot zamówieñ dla danego klienta
    SELECT 
        SUM(P.Cena * OD.Quantity) AS SumaKwotZamowien
    FROM 
        Clients C
    JOIN 
        Orders O ON C.ClientID = O.ClientID
    JOIN 
        OrderDetails OD ON O.OrderID = OD.OrderID
    JOIN 
        Products P ON OD.ProductID = P.ProductID
    WHERE 
        C.ClientID = @KlientID;
END;

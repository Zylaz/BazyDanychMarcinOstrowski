Znajduje się tutaj opis drugiej pracy domowej wykonanej na przedmiot Bazy Danych w semestrze zimowym 2023/2024.

# Opis Bazy Danych
Umieściłem tutaj, zgodnie ze wskazaniami z polecenia, skrypt tworzący bazę danych, kolejne skrypty będące rozwiązaniami kolejnych poleceń oraz backup bazy danych. Baza danych różni się od tej którą zrobiłem w poprzedniej pracy domowej, gdyż chciałem mieć trochę więcej swobody w rozwiązywaniu poleceń. Dlatego też utworzyłem bazę od nowa, lecz główny koncept pozostał ten sam. Sama baza danych składa się z siedmiu tabel
- Clients - tabela zawierająca informacje o klientach, klucz główny ClientID, kolumny: ClientID INT, FirstName NVARCHAR, LastName NVARCHAR, Budget MONEY, DataOfRegistration DATETIME, ADDITIONALINFORMATION NVARCHAR, 
- Adresses - adresy klientów, klucz główny AdressID, klucz obcy ClientID, kolumny: AdressID INT, ClientID INT, Street NVARCHAR, City NVARCHAR, PostalCode NVARCHAR, 
- Orders - zamówienia klientów, klucz główny OrderID, klucz obcy ClientID, kolumny: OrderID INT, ClientID INT, DataZamowienia DATETIMEOFFSET, Status NVARCHAR, 
- OrderDetails - szczegóły zamówień, klucz główny DetailsID, klucze obce OrderID i ProductID, kolumny: DetailsID INT, OrderID INT, ClientID INT, Quantity INT, 
- PaymentHistory - historia płatności danego klienta, klucz główny PaymentID, klucz obcy ClientID, kolumny: PaymentID INT, ClientID INT, PaymentDate DATETIMEOFFSET, Amount MONEY, 
- Products - produkty kupowane przez naszych klientów, klucz główny ProductID, klucz obcy ProductDetailsID, kolumny: ProductID INT, ProductDetailsID INT, ProductName NVARCHAR, Cena MONEY, 
- ProductDetails - szczegóły dotyczące produktów, klucz główny ProductDetailsID, kolumny: ProductDetailsID INT, DetailName NVARCHAR, 
# Opis Skryptów
## create_database
Tworzy bazę danych ClientManagement o tabelach takich jak opisane powyżej. 
## fake_data
Zgodnie z poleceniem wstawiam dane do tabel. Wstawiam więcej danych gdyż skrypt ten wykonałem przed tym jak pojawiło się to ograniczenie w pracy domowej. 
## data_management
Jest to procedura składowa która przyjmuje jako parametr ID klienta. Procedura ta zmniejsza budżet klienta o 500 o ile ma wystarczająco środków i sprawdza czy klient po tej transakcji ma na koncie więcej środków niż 10000. Jeśli tak to klient ten dostaje w prezencie laptopa o wartości 1500, który jest zakwalifikowany jako nowe zamówienie. Procedura dodaje też informacje o tym nowym zamówieniu. Pomysł polega na tym, że chcemy nagrodzić klientów, którzy po jakiejś wpłacie, powiedzmy na konto oszczędnościowe w wysokości 500 mają wciąż odpowiednio dużo środków na koncie. Dlatego nie zwracam tych środków jeśli ktoś nie będzie miał conajmniej 10000 na koncie. Zakładamy, że proponujemy wpłatę na konto odcięte od budżetu danego klienta i tyle, klient tych pieniędzy nie traci.
## Procedurev2
Procedura zwracająca informacje o zamówieniach dla danego klienta. Pobiera informacje o zamówieniach dla określonego klienta, obejmujące nazwę klienta, ID zamówienia, datę zamówienia, ID produktu, nazwę produktu, ilość i kwotę. Oblicza sumę kwot wszystkich zamówień dla danego klienta.
## indices
Tworzę indeksy zgodnie z opisem w poleceniu. 


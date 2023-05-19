SELECT * FROM Employees

--------------------------------

-- 1) Adının ilk iki harfi LA, LN, AA veya AN olanlar

SELECT * FROM EmployeesTest
WHERE
FirstName like 'LA%' or
FirstName like 'LN%' or
FirstName like 'AA%' or
FirstName like 'AN%'

-----------------------------------

-- 2) Adının içerisinde _ geçen isimleri listeleyiniz ( içeride kayıt yok diye yazmamazlık yapmayınız, bi zahmet 2 satır datayı güncelleyin :))

SELECT * FROM Employees
WHERE
FirstName like '%[_]%'

-----------------------------------

-- 3) Customers tablosundan CustomerID'sinin 2. harfi A, 4. harfi T olanların %10'luk kısmını getiren sorguyu yazınız.

SELECT TOP(10) PERCENT * FROM Customers
WHERE CustomerID like '_A_T%'

-----------------------------------

-- 4) Adının 2. harfi A veya T olmayanlar

SELECT * FROM Customers
WHERE CompanyName not like '_[AT]%'

-----------------------------------

-- 5) Adının ilk harfi A ile I aralığında bulunmayanlar

SELECT * FROM Customers
WHERE CompanyName not like '[A-I]%'

-----------------------------------

-- 6) Adı T ile bitmeyenler

SELECT * FROM Customers
WHERE CompanyName not like '%T'

-----------------------------------

-- Function Odev :) -> Yaş hesaplama :) verdiğiniz tarihe göre, kişinin parametrede gönderdiğiniz yaşı doldurup doldurmadığı geriye dönünüz

SELECT * FROM Employees
WHERE
MONTH(GETDATE()) =   MONTH(BirthDate) AND 
DAY(GETDATE())   =   DAY(BirthDate)
--SELECT * FROM USERS
--SELECT * FROM ADDRESS
--SELECT * FROM INVOICEDETAILS

--Kullan�c� Ad� , Ad Soyad, �l, �l�e, Semt, A��k Adres
--Sipari� ID, Tarih, Toplam Tutar, �deme Tarihi
--Banka Onay Kodu, Fatura Tarihi, Kargo Fi� No

--SELECT
--U.USERNAME_ AS KULLANICIADI,
--U.NAMESURNAME AS ADSOYAD,
--CT.CITY AS IL, T.TOWN AS ILCE, D.DISTRICT AS SEMT, A.ADDRESSTEXT AS
--ACIKADRES, O.ID AS SIPARISID, O.DATE_ AS TARIH, O.TOTALPRICE AS TOPLAMTUTAR, P.DATE_ AS ODEMETARIHI,
--P.APPROVECODE AS BANKAONAYKODU,
--I.DATE_ AS FATURATARIHI, I.CARGOFICHENO AS KARGOFISNO
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID

--WHERE U.NAMESURNAME='CEYDA GEZG�NC�'

--SELECT
--U.USERNAME_ AS KULLANICIADI,
--U.NAMESURNAME AS ADSOYAD,
--CT.CITY AS IL, T.TOWN AS ILCE, D.DISTRICT AS SEMT, A.ADDRESSTEXT AS
--ACIKADRES, O.ID AS SIPARISID, O.DATE_ AS TARIH, O.TOTALPRICE AS TOPLAMTUTAR, P.DATE_ AS ODEMETARIHI,
--P.APPROVECODE AS BANKAONAYKODU,
--I.DATE_ AS FATURATARIHI, I.CARGOFICHENO AS KARGOFISNO,
--ITM.ITEMCODE AS URUNKODU, ITM.ITEMNAME AS URUNADI, OD.AMOUNT AS MIKTAR,
--OD.UNITPRICE AS BIRIMFIYAT, OD.LINETOTAL AS SATIRTOPLAMI

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--WHERE --O.ID=26121
----U.NAMESURNAME='CEYDA GEZG�NC�'

--sehirlere gore verilen siparisleri toplam olarak listeleme

--SELECT
--CT.CITY AS SEHIRADI,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

--GROUP BY CT.CITY
----ORDER BY CT.CITY
----ORDER BY SUM(OD.LINETOTAL) DESC
--ORDER BY COUNT(OD.ID) DESC

--URUN KATEGORILERINE GORE SIPARIS DAGILIMINI GETIREN SORGU

--SELECT 
--ITM.CATEGORY1,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--GROUP BY ITM.CATEGORY1
--ORDER BY 2 DESC

--SELECT 
--ITM.CATEGORY1, ITM.CATEGORY2,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--WHERE ITM.CATEGORY1='EV'
--GROUP BY ITM.CATEGORY1,ITM.CATEGORY2
--ORDER BY 3 DESC

--SELECT 
--ITM.CATEGORY1, ITM.CATEGORY2, ITM.CATEGORY3,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--WHERE ITM.CATEGORY1='KOZMETIK'
--GROUP BY ITM.CATEGORY1,ITM.CATEGORY2,ITM.CATEGORY3
--ORDER BY 4 DESC

--SELECT 
--ITM.CATEGORY1,ITM.CATEGORY2,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI,
--SUM(OD.LINETOTAL)/SUM(OD.AMOUNT) AS ORTALAMABIRIMFIYAT
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
----WHERE ITM.CATEGORY1='KOZMETIK'
--GROUP BY ITM.CATEGORY1,ITM.CATEGORY2
--ORDER BY 1 

--TARIHE GORE SIPARIS DAGILIMINI GETIREN SORGU

--SELECT 
--CONVERT(DATE,O.DATE_) TARIH,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--GROUP BY CONVERT(date,O.DATE_) 
--ORDER BY CONVERT(date,O.DATE_)

--AYLARA GORE SIPARIS DAGILIMINI GETIREN SORGU

--SELECT 
--DATEPART(MONTH,O.DATE_) AY,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--GROUP BY DATEPART(MONTH,O.DATE_) 
--ORDER BY DATEPART(MONTH,O.DATE_)

--SELECT 
--DATEPART(YEAR,O.DATE_) YIL,
--DATEPART(MONTH,O.DATE_) AY,
--CASE 
--WHEN DATEPART(MONTH,O.DATE_)=1 THEN 'OCAK'
--WHEN DATEPART(MONTH,O.DATE_)=2 THEN '�UBAT'
--WHEN DATEPART(MONTH,O.DATE_)=3 THEN 'MART'
--WHEN DATEPART(MONTH,O.DATE_)=4 THEN 'N�SAN'
--WHEN DATEPART(MONTH,O.DATE_)=5 THEN 'MAYIS'
--WHEN DATEPART(MONTH,O.DATE_)=6 THEN 'HAZ�RAN'
--WHEN DATEPART(MONTH,O.DATE_)=7 THEN 'TEMMUZ'
--WHEN DATEPART(MONTH,O.DATE_)=8 THEN 'A�USTOS'
--WHEN DATEPART(MONTH,O.DATE_)=9 THEN 'EYL�L'
--WHEN DATEPART(MONTH,O.DATE_)=10 THEN 'EK�M'
--WHEN DATEPART(MONTH,O.DATE_)=11 THEN 'KASIM'
--WHEN DATEPART(MONTH,O.DATE_)=12 THEN 'ARALIK'
--END AS AY_ADI,
--SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
--SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
--COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--GROUP BY DATEPART(MONTH,O.DATE_), DATEPART(YEAR,O.DATE_)
--ORDER BY DATEPART(YEAR,O.DATE_), DATEPART(MONTH,O.DATE_)

--ODEME TURUNE GORE DAGILIM 

--SELECT * FROM PAYMENTS

--SELECT 
--PAYMENTTYPE AS ODEMETURU,
--CASE 
--WHEN PAYMENTTYPE=1 THEN 'KRED� KARTI'
--WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
--END AS ODEMETURU_ACIKLAMA,
--SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
--FROM PAYMENTS

--GROUP BY PAYMENTTYPE

--SELECT 
--DATEPART(YEAR,DATE_) AS YEAR_,
--DATEPART(MONTH,DATE_) AS AY,
--CASE 
--WHEN PAYMENTTYPE=1 THEN 'KRED� KARTI'
--WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
--END AS ODEMETURU_ACIKLAMA,
--SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
--FROM PAYMENTS

--GROUP BY DATEPART(MONTH,DATE_),PAYMENTTYPE,DATEPART(YEAR,DATE_)
--ORDER BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_)

--ORTALAMA TESLIMAT SURESI

--SELECT
----O.ID AS SIPARISID,
----O.DATE_ AS SIPARISTARIHI,
----I.DATE_ AS FATURATARIHI,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMATSURESI_SAAT

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID

--SELECT
--MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMATSURESI_SAAT,
--MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMATSURESI_SAAT,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID

--SELECT
--U.ID,U.NAMESURNAME,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ORTALAMA_TESLIMAT_SURESI
--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--GROUP BY
--U.ID,U.NAMESURNAME
--HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
--ORDER BY 3 DESC

--SELECT
--U.ID,U.NAMESURNAME,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ORTALAMA_TESLIMAT_SURESI,
--MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENKISA_TESLIMAT_SURESI,
--MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENUZUN_TESLIMAT_SURESI,
--SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
--COUNT(O.ID) AS SIPARISSAYISI

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--GROUP BY
--U.ID,U.NAMESURNAME
--HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
--ORDER BY 6 DESC

--SELECT
--DATEPART(YEAR,O.DATE_) AS YIL,
--DATEPART(MONTH,O.DATE_) AS AY,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ORTALAMA_TESLIMAT_SURESI,
--MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENKISA_TESLIMAT_SURESI,
--MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENUZUN_TESLIMAT_SURESI,
--SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
--COUNT(O.ID) AS SIPARISSAYISI

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--GROUP BY
--DATEPART(YEAR,O.DATE_) , DATEPART(MONTH,O.DATE_)
--ORDER BY 1,2


--SELECT
--CT.CITY,
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ORTALAMA_TESLIMAT_SURESI,
--MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENKISA_TESLIMAT_SURESI,
--MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) ENUZUN_TESLIMAT_SURESI,
--SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
--COUNT(O.ID) AS SIPARISSAYISI

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--GROUP BY
--CT.CITY
--ORDER BY 2 DESC

--URUNLERIN FIYAT ANALIZI

--SELECT 
--ITM.ITEMCODE AS URUNKODU,
--ITM.ITEMNAME AS URUNADI,
--MIN(OD.UNITPRICE) AS ENDUSUKFIYAT,
--MAX(OD.UNITPRICE) AS ENYUKSEKFIYAT,
--AVG(OD.UNITPRICE) AS ORTALAMAFIYAT,
--SUM(OD.AMOUNT) AS TOPLAMADET

--FROM ORDERS O
--INNER JOIN USERS U ON U.ID=O.USERID
--INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
--INNER JOIN CITIES CT ON CT.ID=A.CITYID
--INNER JOIN TOWNS T ON T.ID=A.TOWNID
--INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
--INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
--INNER JOIN INVOICES I ON I.ORDERID=O.ID
--INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
--INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID
--GROUP BY ITM.ITEMCODE, ITM.ITEMNAME

--SET STATISTICS IO ON
--SELECT ITM.ITEMCODE AS URUNKODU,
--ITM.ITEMNAME AS URUNADI,
--(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFIYAT,
--(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFIYAT,
--(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
--(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,
--(SELECT SUM(LINETOTAL) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMTUTAR

--FROM ITEMS ITM
--ORDER BY ITM.ITEMNAME

--URUNLERIN FIYAT ANALIZI, EN COK HANGI AY SATILDI


--SET STATISTICS IO ON
--SELECT ITM.ITEMCODE AS URUNKODU,
--ITM.ITEMNAME AS URUNADI,
--(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFIYAT,
--(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFIYAT,
--(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
--(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,
--(
--SELECT TOP 1 DATEPART(MONTH,O.DATE_) AS AY FROM ORDERDETAILS OD
--INNER JOIN ORDERS O ON OD.ORDERID=O.ID
--WHERE OD.ITEMID=ITM.ID
--GROUP BY DATEPART(MONTH,O.DATE_)
--ORDER BY SUM(AMOUNT) DESC
--) AS ENCOKSATILANAY

--FROM ITEMS ITM
--WHERE ITEMCODE IN ('10740','11396')
--ORDER BY 3


--SET STATISTICS IO ON
--SELECT ITM.ITEMCODE AS URUNKODU,
--ITM.ITEMNAME AS URUNADI,
--(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFIYAT,
--(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFIYAT,
--(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
--(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,
--(
--SELECT TOP 1 DATEPART(MONTH,O.DATE_) AS AY FROM ORDERDETAILS OD
--INNER JOIN ORDERS O ON OD.ORDERID=O.ID
--WHERE OD.ITEMID=ITM.ID
--GROUP BY DATEPART(MONTH,O.DATE_)
--ORDER BY SUM(AMOUNT) DESC
--) AS ENCOKSATILANAY

--FROM ITEMS ITM
--WHERE (SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) IS NULL
--ORDER BY 3

--SET STATISTICS IO ON
--SELECT ITM.ITEMCODE AS URUNKODU,
--ITM.ITEMNAME AS URUNADI,
--(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFIYAT,
--(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFIYAT,
--(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
--(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,
--(
--SELECT TOP 1 DATEPART(MONTH,O.DATE_) AS AY FROM ORDERDETAILS OD
--INNER JOIN ORDERS O ON OD.ORDERID=O.ID
--WHERE OD.ITEMID=ITM.ID
--GROUP BY DATEPART(MONTH,O.DATE_)
--ORDER BY SUM(AMOUNT) DESC
--) AS ENCOKSATILANAY

--FROM ITEMS ITM
--WHERE ITM.ID NOT IN (SELECT ITEMID FROM ORDERDETAILS)
--ORDER BY 3

--KULLANICININ SON ADRESINI BULMA

--SELECT U.*,A.ADDRESSTEXT,A.ID FROM 
--USERS U
--INNER JOIN ADDRESS A ON U.ID=A.USERID

--WHERE U.ID=1
--ORDER BY A.ID DESC

--SELECT U.*,
--(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID) ILKADRES,
--(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID DESC) SONADRES,
--(SELECT COUNT(ADDRESSTEXT) FROM ADDRESS WHERE USERID=U.ID) ADRESSAYISI
--FROM
--USERS U

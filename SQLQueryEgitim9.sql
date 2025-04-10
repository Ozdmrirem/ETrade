--ASCII VE CHAR FONKSIYONLARI

--SELECT ASCII ('A') --> 65
--SELECT ASCII ('�') --> 214
--SELECT ASCII ('3') --> 51
--SELECT CHAR(214) --> �
--SELECT ASCII('1') --> 49
--SELECT CHAR(49)  --> 1
--SELECT ASCII(CHAR(49)) --> 49
--SELECT CHAR(ASCII('�')) --> �
--SELECT ASCII('?') --> 63
--SELECT CHAR(63) --> ?

--SUBSTRING FONKSIYONU

--SELECT SUBSTRING('�REM �ZDEM�R',1,4) --> 1.karakterden itibaren 4 karakter al�yor.
--SELECT * FROM USERS WHERE USERNAME_ LIKE 'O%' --> kullan�c� ad� O ile ba�layanlar
--SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,1,1)='O' --> ilk harfi O olanlar
--SELECT * FROM USERS WHERE USERNAME_ LIKE '%O' --> kullan�c� ad� O ile bitenler
--SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O' --> son harfi O olanlar
--SELECT LEN('A_KALKMAZO')
--SELECT SUBSTRING('A_KALKMAZO',10,1)

--CHARINDEX FONKSIYONU

--SELECT CHARINDEX('D','�REM �ZDEM�R',1) --> 8
--SELECT CHARINDEX('�','�REM �ZDEM�R',1) --> 0

--CONCAT FONKSIYONU

--SELECT '�REM'+'�ZDEM�R' -->�REM�ZDEM�R
--SELECT CONCAT('�MER',' ','FARUK',' ','�OLAKO�LU') --> �MER FARUK �OLAKO�LU
--SELECT CONCAT_WS(' ','�MER','FARUK','�OLAKO�LU') --> �MER FARUK �OLAKO�LU

--SELECT 
--USERNAME_ + ' ' + PASSWORD_ + ' ' + NAMESURNAME,
--CONCAT(USERNAME_ , ' ' , PASSWORD_ , ' ' , NAMESURNAME),
--CONCAT_WS(' ',USERNAME_ , PASSWORD_ ,NAMESURNAME),
--* FROM USERS

--FORMAT FONKSIYONU

--SELECT FORMAT(GETDATE(),'d','en-us') --> 4/10/2025
--SELECT FORMAT(GETDATE(),'D','en-us') --> Thursday, April 10, 2025

--LEFT , RIGHT , LEN FONKSIYONLARI

--SELECT LEFT('�REM �ZDEM�R',4) --> en ba�tan 4 karakter ald�, �REM
--SELECT RIGHT('�REM �ZDEM�R',7) --> en sondan 7 karakter ald�, �ZDEM�R
--SELECT LEN('�REM �ZDEM�R') --> karakter uzunlu�u , 12

--SELECT LEFT('�MER �OLAKO�LU',CHARINDEX(' ','�MER �OLAKO�LU')),RIGHT('�MER �OLAKO�LU',LEN('�MER �OLAKO�LU')-CHARINDEX(' ','�MER �OLAKO�LU')) --> isim soyisimi yanyana yazd�rd� 

--SELECT 
--LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),
--RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) 
--FROM USERS  --> isim soyisimi yanyana yazd�rd� 

--TRIM , LTRIM , RTRIM FONKSIYONLARI

--SELECT TRIM('    �REM    �ZDEM�R   ') --> ba�taki ve sondaki bo�lu�u temizledi
--SELECT LTRIM('    �REM    �ZDEM�R   ') --> sadece ba�taki bo�lu�u temizledi
--SELECT RTRIM('    �REM    �ZDEM�R   ') --> sadece sondaki bo�lu�u temizledi    
--SELECT LTRIM(RTRIM('    �REM    �ZDEM�R   ')) --> TRIM ile ayn� sonucu getirir

--LOWER , UPPER , REVERSE , REPLICATE FONKSIYONLARI

--SELECT LOWER('�REM') --> k���k harfe �evirdi
--SELECT UPPER('�zdemir') --> b�y�k harfe �evirdi
--SELECT REVERSE('MERHABA') --> tersten yazar, abahrem
--SELECT REPLICATE('0',10) --> 10 tane 0'� yanyana yazd�rd�

--SELECT *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(varchar,SIRANO) FROM TEST 
--UPDATE TEST SET SIRANO2=REPLICATE('0',8-LEN(SIRANO))+CONVERT(varchar,SIRANO)

--REPLACE FONKSIYONU

--SELECT '�MER �OLAKO�LU'
--SELECT REPLACE('�MER �OLAKO�LU','�MER','�MER FARUK')  --> �MER FARUK �OLAKO�LU

--DECLARE @CUMLE AS VARCHAR(MAX)

--SET @CUMLE='Delikanl� evine d�nd�, kendisini merakla bekleyen annesiyle babas�na neler oldu�unu anlatt�. 
--Anlatt�k�a da kendisine �ok anlams�z gelen bu hareketi so�uk konu�mas� nedeniyle k�zd��� ustaya olan �fkesi art�yordu. 
--G�nler ge�meye ba�lad�. Gen� s�rekli s�yleniyor, ama avucunu hi� a�m�yordu: �Nas�l olurda b�yle budalaca bir �ey yapmam� ister�
--Birde �lkenin en iyi m�cevhercisi olacak � Bu sa�mal��a bir y�l boyunca nas�l katlan�r�m, b�yle bir eziyetle nas�l ya�ar�m?...
--Bu ne bi�im ustal�k?...Ustal�k kaprisi yapacaksa bari ba��ndan yapmasayd�..�
--Devaml� s�yleniyor, her �n�ne gelene ustadan yak�n�yor, ama avucunu a�m�yordu. 
--Avucu kapal� uyuyor, b�t�n i�lerini di�er eliyle yap�yordu. Ve bu duruma da giderek al��maya di�er elini �ok rahat kullanmaya ba�lad�. 
--Uyurken de yanl��l�kla avucu a��l�p d��mesin diye hep yar� uyan�k uyuyordu.
--B�ylece bir y�l ge�ti, her g�nk� zorluklarla dolu, her gecesi yar�m uykuyla ya�anm�� bir y�l� tamamlam��t�.
--Ve o g�n geldi. Gen� tam bir y�l sonra b�y�k ustan�n kar��s�na ��kt�. 
--Usta onu bir s�re beklettikten sonra yan�na gelince, gen� adam ne kadar sa�ma bulursa bulsun,
--bu s�nav� ba�ar�yla tamamlam�� olman�n verdi�i gururla elini uzatt�, avuncu a�t�.'

--SET @CUMLE=REPLACE(@CUMLE,'Delikanl�','Gen�')
--SET @CUMLE=REPLACE(@CUMLE,'Evine','yuvas�na')
--SELECT @CUMLE

--DECLARE @CUMLE AS VARCHAR(MAX)
--SET @CUMLE='Delikanl� evine d�nd�, kendisini merakla bekleyen annesiyle babas�na neler oldu�unu anlatt�.
--Anlatt�k�a da kendisine �ok anlams�z gelen bu hareketi so�uk konu�mas� nedeniyle k�zd��� ustaya olan �fkesi art�yordu.
--G�nler ge�meye ba�lad�. Gen� s�rekli s�yleniyor, ama avucunu hi� a�m�yordu: �Nas�l olurda b�yle budalaca bir �ey yapmam� ister�
--Birde �lkenin en iyi m�cevhercisi olacak � Bu sa�mal��a bir y�l boyunca nas�l katlan�r�m, b�yle bir eziyetle nas�l ya�ar�m?...
--Bu ne bi�im ustal�k?...Ustal�k kaprisi yapacaksa bari ba��ndan yapmasayd�..�
--Devaml� s�yleniyor, her �n�ne gelene ustadan yak�n�yor, ama avucunu a�m�yordu.
--Avucu kapal� uyuyor, b�t�n i�lerini di�er eliyle yap�yordu. Ve bu duruma da giderek al��maya di�er elini �ok rahat kullanmaya ba�lad�. 
--Uyurken de yanl��l�kla avucu a��l�p d��mesin diye hep yar� uyan�k uyuyordu.
--B�ylece bir y�l ge�ti, her g�nk� zorluklarla dolu, her gecesi yar�m uykuyla ya�anm�� bir y�l� tamamlam��t�.
--Ve o g�n geldi. Gen� tam bir y�l sonra b�y�k ustan�n kar��s�na ��kt�.
--Usta onu bir s�re beklettikten sonra yan�na gelince, gen� adam ne kadar sa�ma bulursa bulsun,
--bu s�nav� ba�ar�yla tamamlam�� olman�n verdi�i gururla elini uzatt�, avuncu a�t�.'
--DECLARE @LEN1 AS INT
--SET @LEN1=LEN(@CUMLE)
--DECLARE @LEN2 AS INT
--SET @CUMLE=REPLACE(@CUMLE,'Nas�l','')
--SET @LEN2=LEN(@CUMLE)
--SELECT (@LEN1-@LEN2)/LEN('Nas�l') --> paragrafta 3 tane nas�l kelimesi ge�iyor.


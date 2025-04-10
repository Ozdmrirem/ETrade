--ASCII VE CHAR FONKSIYONLARI

--SELECT ASCII ('A') --> 65
--SELECT ASCII ('Ö') --> 214
--SELECT ASCII ('3') --> 51
--SELECT CHAR(214) --> Ö
--SELECT ASCII('1') --> 49
--SELECT CHAR(49)  --> 1
--SELECT ASCII(CHAR(49)) --> 49
--SELECT CHAR(ASCII('Ö')) --> Ö
--SELECT ASCII('?') --> 63
--SELECT CHAR(63) --> ?

--SUBSTRING FONKSIYONU

--SELECT SUBSTRING('İREM ÖZDEMİR',1,4) --> 1.karakterden itibaren 4 karakter alıyor.
--SELECT * FROM USERS WHERE USERNAME_ LIKE 'O%' --> kullanıcı adı O ile başlayanlar
--SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,1,1)='O' --> ilk harfi O olanlar
--SELECT * FROM USERS WHERE USERNAME_ LIKE '%O' --> kullanıcı adı O ile bitenler
--SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O' --> son harfi O olanlar
--SELECT LEN('A_KALKMAZO')
--SELECT SUBSTRING('A_KALKMAZO',10,1)

--CHARINDEX FONKSIYONU

--SELECT CHARINDEX('D','İREM ÖZDEMİR',1) --> 8
--SELECT CHARINDEX('Ğ','İREM ÖZDEMİR',1) --> 0

--CONCAT FONKSIYONU

--SELECT 'İREM'+'ÖZDEMİR' -->İREMÖZDEMİR
--SELECT CONCAT('ÖMER',' ','FARUK',' ','ÇOLAKOĞLU') --> ÖMER FARUK ÇOLAKOĞLU
--SELECT CONCAT_WS(' ','ÖMER','FARUK','ÇOLAKOĞLU') --> ÖMER FARUK ÇOLAKOĞLU

--SELECT 
--USERNAME_ + ' ' + PASSWORD_ + ' ' + NAMESURNAME,
--CONCAT(USERNAME_ , ' ' , PASSWORD_ , ' ' , NAMESURNAME),
--CONCAT_WS(' ',USERNAME_ , PASSWORD_ ,NAMESURNAME),
--* FROM USERS

--FORMAT FONKSIYONU

--SELECT FORMAT(GETDATE(),'d','en-us') --> 4/10/2025
--SELECT FORMAT(GETDATE(),'D','en-us') --> Thursday, April 10, 2025

--LEFT , RIGHT , LEN FONKSIYONLARI

--SELECT LEFT('İREM ÖZDEMİR',4) --> en baştan 4 karakter aldı, İREM
--SELECT RIGHT('İREM ÖZDEMİR',7) --> en sondan 7 karakter aldı, ÖZDEMİR
--SELECT LEN('İREM ÖZDEMİR') --> karakter uzunluğu , 12

--SELECT LEFT('ÖMER ÇOLAKOĞLU',CHARINDEX(' ','ÖMER ÇOLAKOĞLU')),RIGHT('ÖMER ÇOLAKOĞLU',LEN('ÖMER ÇOLAKOĞLU')-CHARINDEX(' ','ÖMER ÇOLAKOĞLU')) --> isim soyisimi yanyana yazdırdı 

--SELECT 
--LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),
--RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) 
--FROM USERS  --> isim soyisimi yanyana yazdırdı 

--TRIM , LTRIM , RTRIM FONKSIYONLARI

--SELECT TRIM('    İREM    ÖZDEMİR   ') --> baştaki ve sondaki boşluğu temizledi
--SELECT LTRIM('    İREM    ÖZDEMİR   ') --> sadece baştaki boşluğu temizledi
--SELECT RTRIM('    İREM    ÖZDEMİR   ') --> sadece sondaki boşluğu temizledi    
--SELECT LTRIM(RTRIM('    İREM    ÖZDEMİR   ')) --> TRIM ile aynı sonucu getirir

--LOWER , UPPER , REVERSE , REPLICATE FONKSIYONLARI

--SELECT LOWER('İREM') --> küçük harfe çevirdi
--SELECT UPPER('özdemir') --> büyük harfe çevirdi
--SELECT REVERSE('MERHABA') --> tersten yazar, abahrem
--SELECT REPLICATE('0',10) --> 10 tane 0'ı yanyana yazdırdı

--SELECT *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(varchar,SIRANO) FROM TEST 
--UPDATE TEST SET SIRANO2=REPLICATE('0',8-LEN(SIRANO))+CONVERT(varchar,SIRANO)

--REPLACE FONKSIYONU

--SELECT 'ÖMER ÇOLAKOĞLU'
--SELECT REPLACE('ÖMER ÇOLAKOĞLU','ÖMER','ÖMER FARUK')  --> ÖMER FARUK ÇOLAKOĞLU

--DECLARE @CUMLE AS VARCHAR(MAX)

--SET @CUMLE='Delikanlı evine döndü, kendisini merakla bekleyen annesiyle babasına neler olduğunu anlattı. 
--Anlattıkça da kendisine çok anlamsız gelen bu hareketi soğuk konuşması nedeniyle kızdığı ustaya olan öfkesi artıyordu. 
--Günler geçmeye başladı. Genç sürekli söyleniyor, ama avucunu hiç açmıyordu: ‘Nasıl olurda böyle budalaca bir şey yapmamı ister…
--Birde ülkenin en iyi mücevhercisi olacak … Bu saçmalığa bir yıl boyunca nasıl katlanırım, böyle bir eziyetle nasıl yaşarım?...
--Bu ne biçim ustalık?...Ustalık kaprisi yapacaksa bari başından yapmasaydı..’
--Devamlı söyleniyor, her önüne gelene ustadan yakınıyor, ama avucunu açmıyordu. 
--Avucu kapalı uyuyor, bütün işlerini diğer eliyle yapıyordu. Ve bu duruma da giderek alışmaya diğer elini çok rahat kullanmaya başladı. 
--Uyurken de yanlışlıkla avucu açılıp düşmesin diye hep yarı uyanık uyuyordu.
--Böylece bir yıl geçti, her günkü zorluklarla dolu, her gecesi yarım uykuyla yaşanmış bir yılı tamamlamıştı.
--Ve o gün geldi. Genç tam bir yıl sonra büyük ustanın karşısına çıktı. 
--Usta onu bir süre beklettikten sonra yanına gelince, genç adam ne kadar saçma bulursa bulsun,
--bu sınavı başarıyla tamamlamış olmanın verdiği gururla elini uzattı, avuncu açtı.'

--SET @CUMLE=REPLACE(@CUMLE,'Delikanlı','Genç')
--SET @CUMLE=REPLACE(@CUMLE,'Evine','yuvasına')
--SELECT @CUMLE

--DECLARE @CUMLE AS VARCHAR(MAX)
--SET @CUMLE='Delikanlı evine döndü, kendisini merakla bekleyen annesiyle babasına neler olduğunu anlattı.
--Anlattıkça da kendisine çok anlamsız gelen bu hareketi soğuk konuşması nedeniyle kızdığı ustaya olan öfkesi artıyordu.
--Günler geçmeye başladı. Genç sürekli söyleniyor, ama avucunu hiç açmıyordu: ‘Nasıl olurda böyle budalaca bir şey yapmamı ister…
--Birde ülkenin en iyi mücevhercisi olacak … Bu saçmalığa bir yıl boyunca nasıl katlanırım, böyle bir eziyetle nasıl yaşarım?...
--Bu ne biçim ustalık?...Ustalık kaprisi yapacaksa bari başından yapmasaydı..’
--Devamlı söyleniyor, her önüne gelene ustadan yakınıyor, ama avucunu açmıyordu.
--Avucu kapalı uyuyor, bütün işlerini diğer eliyle yapıyordu. Ve bu duruma da giderek alışmaya diğer elini çok rahat kullanmaya başladı. 
--Uyurken de yanlışlıkla avucu açılıp düşmesin diye hep yarı uyanık uyuyordu.
--Böylece bir yıl geçti, her günkü zorluklarla dolu, her gecesi yarım uykuyla yaşanmış bir yılı tamamlamıştı.
--Ve o gün geldi. Genç tam bir yıl sonra büyük ustanın karşısına çıktı.
--Usta onu bir süre beklettikten sonra yanına gelince, genç adam ne kadar saçma bulursa bulsun,
--bu sınavı başarıyla tamamlamış olmanın verdiği gururla elini uzattı, avuncu açtı.'
--DECLARE @LEN1 AS INT
--SET @LEN1=LEN(@CUMLE)
--DECLARE @LEN2 AS INT
--SET @CUMLE=REPLACE(@CUMLE,'Nasıl','')
--SET @LEN2=LEN(@CUMLE)
--SELECT (@LEN1-@LEN2)/LEN('Nasıl') --> paragrafta 3 tane nasıl kelimesi geçiyor.


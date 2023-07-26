SET DATEFORMAT DMY;
USE HappiNovel

--Account 
INSERT INTO ACCOUNT VALUES('30',N'Nguyen Trong Tin',N'Rio','Milk'
,N'Super idol ...✨'
,N'Nghien',N'Simp lord','15-10-2003'
,'img30.png','pcover30.png','0','21-7-2023','2','0916814636')
--Admin có viết

INSERT INTO ACCOUNT VALUES('31',N'NTT1',N'Siro','DNA'
,N'Super simp ...✨'
,N'An kem',N'Ước mơ được làm Sieu nhan','15-10-2003'
,'img31.png','pcover31.png','0','21-7-2023','1','0943018665')--Mod ko viết

INSERT INTO ACCOUNT VALUES('32',N'NTT2',N'Lee Sin','nagasaki'
,N'Data Structure and Algorithms!✨'
,N'Uer',N'Không thích viết gì cả','15-10-2003'
,'img32.jpg','pcover32.png','0','21-7-2023','0','0943018665') --User ko viết

INSERT INTO ACCOUNT VALUES('33',N'NTT3',N'Dr Han','ilovebingchilling'
,N'Life is just one story… ✨'
,N'Lãnh đao ĐCSVN',N'Nhân dân VN','15-10-2003'
,'img33.jpg','pcover33.png','1','21-7-2023','0','0943018665') --User bị ban

INSERT INTO ACCOUNT VALUES('34',N'NTT4',N'Trgg Tin','ntt'
,N'Sieu nhan den day... ✨'
,N'Game gủng ',N'Viết :>>>','15-10-2003'
,'img34.jpg','pcover34.png','0','21-7-2023','0','0943018665')--User có viết

INSERT INTO ACCOUNT VALUES('35',N'NTT5',N'Con páo','ehe'
,N'Life is story… ✨'
,N'Nhà páo',N'Páo','15-10-2003'
,'img35.jpg','pcover35.png','0','21-7-2023','0','0943018665') --user có viết

INSERT INTO ACCOUNT VALUES('36',N'NTT6',N'Tộc Tộc','qwerty'
,N'Life… ✨'
,N'The Rock',N'Kids','15-10-2003'
,'img36.jpg','pcover36.png','0','21-7-2023','1','0943018665')--mod có viết

INSERT INTO ACCOUNT VALUES('37',N'NTT7',N'Cô ca cô la ','watch'
,N'…✨'
,N'NPC Company',N'Kids','115-10-2003'
,'img37.jpg','pcover37.png','0','21-7-2023','0','0943018665') --user ko viết

INSERT INTO ACCOUNT VALUES('38',N'NTT8',N'Thịnh bjp','bjp'
,N'✨'
,N'ChatLGBT',N'Child','15-10-2003'
,'img38.jpg','pcover38.png','0','21-7-2023','0','0943018665')--user ko viết

INSERT INTO ACCOUNT VALUES('38',N'NTT9',N'Thịnh bjp','bjp'
,N'✨'
,N'ChatLGBT',N'Child','15-10-2003'
,'img39.jpg','pcover39.jpg','0','21-7-2023','0','0943018665')--user ko viết

--Book
INSERT INTO BOOK VALUES('30',N'Nữ Thần Lớp Tôi Có Gì Đó Lạ Lắm.','30'
,'note30.docx'
,'summary30.docx'
,'25-07-2023','coverImg30.png','1','25072003','0')
--Book1 của user 30 

INSERT INTO BOOK VALUES('31',N'Khi bắt đầu làm công việc nhà bán thời gian, tôi được gia đình của Idol trường học để ý lúc nào không hay','30'
,'note31.docx'
,'summary31.docx'
,'25-07-2023','coverImg31.png','2','20250','0')
--Book2 của user 30 

INSERT INTO BOOK VALUES('32',N'Làm bạn với cô gái đáng yêu thứ hai lớp','34'
,'note32.docx'
,'summary32.docx'
,'25-07-2023','coverImg32.png','0','29250','0')
--Book3 của user 34 

INSERT INTO BOOK VALUES('33',N'"Cậu không thể hôn được, phải chứ?" Khi tôi khiến cô bạn thuở nhỏ luôn trêu chọc mình hiểu chuyện, cô ấy đột nhiên trở nên dễ thương hơn nhiều','35'
,'note33.docx'
,'summary33.docx'
,'25-07-2023','coverImg33.png','0','1250','0')
--Book4 của user 35 

INSERT INTO BOOK VALUES('34',N'Tôi là Tác giả, phải không?','31'
,'note34.docx'
,'summary34.docx'
,'25-07-2023','coverImg34.png','0','1250','0')
--Book5 của user 31 

INSERT INTO BOOK VALUES('35',N'Bức Thư Tình Đến Từ Tương Lai','31'
,'note35.docx'
,'summary35.docx'
,'25-07-2023','coverImg35.png','0','1250','0')
--Book6 của user 31

--Volume/Chapter
--30
INSERT INTO VOLUME VALUES('30','1',N'Cuộc sống học đường bất ổn.')
INSERT INTO CHAPTER VALUES('30','1','1',N'Chương 01: Chỉ bởi vì thua cuộc.','26/07/2023','chap1_1_30.docx','0')
INSERT INTO CHAPTER VALUES('30','1','2',N'Chương 02: Tình huống bất ngờ.','26/07/2023','chap2_1_30.docx','0')
INSERT INTO CHAPTER VALUES('30','1','3',N'Chương 03: Ra đây mới là cô sao.','26/07/2023','chap3_1_30.docx','0')

INSERT INTO VOLUME VALUES('30','2',N'Kế hoạch, tiến triển đi chứ.	')
INSERT INTO CHAPTER VALUES('30','2','1',N'Chương 01: Theo chân Nữ Thần (1).','26/07/2023','chap1_2_30.docx','0')
INSERT INTO CHAPTER VALUES('30','2','2',N'Chương 02: Theo chân Nữ Thần (2).','26/07/2023','chap2_2_30.docx','0')
INSERT INTO CHAPTER VALUES('30','2','3',N'Chương 03: Theo chân Nữ Thần (3).','26/07/2023','chap3_2_30.docx','0')

--31
INSERT INTO VOLUME VALUES('31','1',N'Tập 1')
INSERT INTO CHAPTER VALUES('31','1','1',N'Chương 01','26/07/2023','chap1_1_31.docx','0')
INSERT INTO CHAPTER VALUES('31','1','2',N'Chương 02','26/07/2023','chap2_1_31.docx','0')
INSERT INTO CHAPTER VALUES('31','1','3',N'Chương 03','26/07/2023','chap3_1_31.docx','0')

INSERT INTO VOLUME VALUES('31','2',N'Tập 2')
INSERT INTO CHAPTER VALUES('31','2','1',N'Chương 01','26/07/2023','chap1_2_31.docx','0')
INSERT INTO CHAPTER VALUES('31','2','2',N'Chương 02','26/07/2023','chap2_2_31.docx','0')
INSERT INTO CHAPTER VALUES('31','2','3',N'Chương 03','26/07/2023','chap3_2_31.docx','0')

--32
INSERT INTO VOLUME VALUES('32','1',N'WN Vol.1: Cô gái đáng yêu thứ hai lớp (ĐÃ HOÀN THÀNH)')
INSERT INTO CHAPTER VALUES('32','1','1',N'Chap 1: Cô gái đáng yêu thứ hai trong lớp','26/07/2023','chap1_1_32.docx','0')
INSERT INTO CHAPTER VALUES('32','1','2',N'Chap 2: Khởi đầu của cuộc gặp gỡ (1)','26/07/2023','chap2_1_32.docx','0')
INSERT INTO CHAPTER VALUES('32','1','3',N'Chap 3: Khởi đầu của cuộc gặp gỡ (2)','26/07/2023','chap3_1_32.docx','0')

INSERT INTO VOLUME VALUES('32','2',N'WN Vol.2: Giáng sinh (ĐÃ HOÀN THÀNH)')
INSERT INTO CHAPTER VALUES('32','2','1',N'Chương 64 - Một khởi đầu mới','26/07/2023','chap1_2_32.docx','0')
INSERT INTO CHAPTER VALUES('32','2','2',N'Chương 65 - Lời mời','26/07/2023','chap2_2_32.docx','0')
INSERT INTO CHAPTER VALUES('32','2','3',N'Chương 66 - Cuộc nói chuyện ngượng ngùng','26/07/2023','chap3_2_32.docx','0')

--33
INSERT INTO VOLUME VALUES('33','1',N'Vol 1')
INSERT INTO CHAPTER VALUES('33','1','1',N'Chương mở đầu','26/07/2023','chap1_1_33.docx','0')
INSERT INTO CHAPTER VALUES('33','1','2',N'Chương 01: Dạy một bài học từ nụ hôn đầu (Phần 1)','26/07/2023','chap2_1_33.docx','0')
INSERT INTO CHAPTER VALUES('33','1','3',N'Chương 01 (Phần 2)','26/07/2023','chap3_1_33.docx','0')

INSERT INTO VOLUME VALUES('33','2',N'Vol 2')
INSERT INTO CHAPTER VALUES('33','2','1',N'Chương 02: Màn Kabedon khiến tim loạn nhịp (Phần 1)','26/07/2023','chap1_2_33.docx','0')
INSERT INTO CHAPTER VALUES('33','2','2',N'Chương 02 (Phần 2)','26/07/2023','chap2_2_33.docx','0')
INSERT INTO CHAPTER VALUES('33','2','3',N'Chương 03: Bài học từ một trò đùa (Phần 1)','26/07/2023','chap3_2_33.docx','0')

--34
INSERT INTO VOLUME VALUES('34','1',N'Khởi đầu')
INSERT INTO CHAPTER VALUES('34','1','1',N'Chương 01: Bình Minh','26/07/2023','chap1_1_34.docx','0')
INSERT INTO CHAPTER VALUES('34','1','2',N'Chương 02 : Bình Minh (2)','26/07/2023','chap2_1_34.docx','0')
INSERT INTO CHAPTER VALUES('34','1','3',N'Chương 03 : Khởi động','26/07/2023','chap3_1_34.docx','0')

INSERT INTO VOLUME VALUES('34','2',N'Kết thúc')
INSERT INTO CHAPTER VALUES('34','2','1',N'Chương 04 : Khởi động (2)','26/07/2023','chap1_2_34.docx','0')
INSERT INTO CHAPTER VALUES('34','2','2',N'Chương 05 : Khởi Động (3)','26/07/2023','chap2_2_34.docx','0')
INSERT INTO CHAPTER VALUES('34','2','3',N'Chương 06 : Chạm mặt','26/07/2023','chap3_2_34.docx','0')

--35
INSERT INTO VOLUME VALUES('35','1',N'Vol 1. Bức Thư Đầu Tiên*')
INSERT INTO CHAPTER VALUES('35','1','1',N'Chương 01','chap1_1_35.docx','0')
INSERT INTO CHAPTER VALUES('35','1','2',N'Chương 02','26/07/2023','chap2_1_35.docx','0')
INSERT INTO CHAPTER VALUES('35','1','3',N'Chương 03','26/07/2023','chap3_1_35.docx','0')

INSERT INTO VOLUME VALUES('35','2',N'Vol 2. BỨc thư thứ hai')
INSERT INTO CHAPTER VALUES('35','2','1',N'Chương 01','26/07/2023','chap1_2_35.docx','0')
INSERT INTO CHAPTER VALUES('35','2','2',N'Chương 02','26/07/2023','chap2_2_35.docx','0')
INSERT INTO CHAPTER VALUES('35','2','3',N'Chương 03','26/07/2023','chap3_2_35.docx','0')

--hai sach pending
--36
INSERT INTO BOOK VALUES('36',N'Anh tưởng tái sinh là thoát được sao, Nii-san?','32'
,'note36.docx'
,'summary36.docx'
,'25-07-2023','coverImg36.png','0','0','1')
--Book36 của user 32

INSERT INTO VOLUME VALUES('36','1',N'Arc 1: Quyết định của đứa bé sơ sinh - Sự chuyển sinh của 2 anh em')
INSERT INTO CHAPTER VALUES('36','1','1',N'Chương 1: Nữ Thần nói','chap1_1_36.docx','1')
INSERT INTO CHAPTER VALUES('36','1','2',N'Chương 2: Gia đình, khả năng, quyết tâm','26/07/2023','chap2_1_36.docx','1')
INSERT INTO CHAPTER VALUES('36','1','3',N'Chương 3: Ác Mộng','26/07/2023','chap3_1_36.docx','1')

INSERT INTO BOOKGENRES VALUES('36','30')
INSERT INTO BOOKGENRES VALUES('36','31')
INSERT INTO BOOKGENRES VALUES('36','39')
INSERT INTO BOOKGENRES VALUES('36','35')
INSERT INTO BOOKGENRES VALUES('36','84')

--37
INSERT INTO BOOK VALUES('37',N'Nắng hạ cứ vậy tan mất','32'
,'note37.docx'
,'summary37.docx'
,'25-07-2023','coverImg37.png','0','0','1')
--Book37 của user 32

INSERT INTO VOLUME VALUES('37','1',N'Tập 01: Mối quan hệ kì lạ với một cậu trai không quen biết.')
INSERT INTO CHAPTER VALUES('37','1','1',N'Chương 01','chap1_1_37.docx','1')
INSERT INTO CHAPTER VALUES('37','1','2',N'Chương 02','26/07/2023','chap2_1_37.docx','1')
INSERT INTO CHAPTER VALUES('37','1','3',N'Chương 03','26/07/2023','chap3_1_37.docx','1')

INSERT INTO VOLUME VALUES('37','2',N'Tập 02 Ngọn gió lạ thoảng qua giữa mùa thu. *')
INSERT INTO CHAPTER VALUES('37','2','1',N'Chương 01','26/07/2023','chap1_2_37.docx','1')
INSERT INTO CHAPTER VALUES('37','2','2',N'Chương 02','26/07/2023','chap2_2_37.docx','1')
INSERT INTO CHAPTER VALUES('37','2','3',N'Chương 03','26/07/2023','chap3_2_37.docx','1')

INSERT INTO BOOKGENRES VALUES('37','30')
INSERT INTO BOOKGENRES VALUES('37','31')
INSERT INTO BOOKGENRES VALUES('37','32')
INSERT INTO BOOKGENRES VALUES('37','34')
INSERT INTO BOOKGENRES VALUES('37','81')

--total the loai 
INSERT INTO GENRE (GENREID, GENRENAME)
VALUES
		('30',N'Drama')
		('31',N'Romance')
		('32',N'School life')
		('33',N'Comdey')
		('34',N'Slice of life')
		('35',N'Web Novel')
		('36',N'Adapted to Manga')
		('37',N'Action')
		('38',N'Adventure')
		('39',N'Fantasy')
		('80',N'Harem')
		('81',N'Supernatural')
		('82',N'Mystery')
		('83',N'Character Growth')
		('84',N'Isekai')
		('85',N'Magic')
		('86',N'Martial Art')
		('87',N'Super Power')

--book genres
--30
INSERT INTO BOOKGENRES VALUES('30','30')
INSERT INTO BOOKGENRES VALUES('30','31')
INSERT INTO BOOKGENRES VALUES('30','32')
INSERT INTO BOOKGENRES VALUES('30','33')

--31
INSERT INTO BOOKGENRES VALUES('31','30')
INSERT INTO BOOKGENRES VALUES('31','31')
INSERT INTO BOOKGENRES VALUES('31','32')
INSERT INTO BOOKGENRES VALUES('31','33')
INSERT INTO BOOKGENRES VALUES('31','34')

--32
INSERT INTO BOOKGENRES VALUES('32','30')
INSERT INTO BOOKGENRES VALUES('32','31')
INSERT INTO BOOKGENRES VALUES('32','32')
INSERT INTO BOOKGENRES VALUES('32','33')
INSERT INTO BOOKGENRES VALUES('32','34')
INSERT INTO BOOKGENRES VALUES('32','35')
INSERT INTO BOOKGENRES VALUES('32','36')

--33
INSERT INTO BOOKGENRES VALUES('33','31')
INSERT INTO BOOKGENRES VALUES('33','32')
INSERT INTO BOOKGENRES VALUES('33','33')

--34
INSERT INTO BOOKGENRES VALUES('34','37')
INSERT INTO BOOKGENRES VALUES('34','38')
INSERT INTO BOOKGENRES VALUES('34','39')
INSERT INTO BOOKGENRES VALUES('34','83')
INSERT INTO BOOKGENRES VALUES('34','84')
INSERT INTO BOOKGENRES VALUES('34','85')
INSERT INTO BOOKGENRES VALUES('34','86')
INSERT INTO BOOKGENRES VALUES('34','87')

--35
INSERT INTO BOOKGENRES VALUES('35','32')
INSERT INTO BOOKGENRES VALUES('35','35')
INSERT INTO BOOKGENRES VALUES('35','37')
INSERT INTO BOOKGENRES VALUES('35','38')
INSERT INTO BOOKGENRES VALUES('35','80')
INSERT INTO BOOKGENRES VALUES('35','82')
INSERT INTO BOOKGENRES VALUES('35','81')
INSERT INTO BOOKGENRES VALUES('35','39')

--bookmark + reading his
--30
INSERT INTO BOOKMARKS VALUES('30','31')
INSERT INTO BOOKMARKS VALUES('30','33')
INSERT INTO BOOKMARKS VALUES('30','34')
INSERT INTO BOOKMARKS VALUES('30','35')
INSERT INTO BOOKMARKS VALUES('30','30')

INSERT INTO READINGHISTORY VALUES('30','30','1','3')
INSERT INTO READINGHISTORY VALUES('30','31','1','2')
INSERT INTO READINGHISTORY VALUES('30','32','1','1')
INSERT INTO READINGHISTORY VALUES('30','33','2','2')
INSERT INTO READINGHISTORY VALUES('30','34','2','2')

--31
INSERT INTO BOOKMARKS VALUES('31','30')
INSERT INTO BOOKMARKS VALUES('31','31')
INSERT INTO BOOKMARKS VALUES('31','32')
INSERT INTO BOOKMARKS VALUES('31','33')
INSERT INTO BOOKMARKS VALUES('31','34')

INSERT INTO READINGHISTORY VALUES('31','30','2','1')
INSERT INTO READINGHISTORY VALUES('31','31','2','2')
INSERT INTO READINGHISTORY VALUES('31','32','1','2')
INSERT INTO READINGHISTORY VALUES('31','33','2','1')
INSERT INTO READINGHISTORY VALUES('31','34','1','3')

--32
INSERT INTO BOOKMARKS VALUES('32','34')
INSERT INTO BOOKMARKS VALUES('32','33')
INSERT INTO BOOKMARKS VALUES('32','32')
INSERT INTO BOOKMARKS VALUES('32','31')
INSERT INTO BOOKMARKS VALUES('32','30')

INSERT INTO READINGHISTORY VALUES('32','34','1','1')
INSERT INTO READINGHISTORY VALUES('32','33','1','1')
INSERT INTO READINGHISTORY VALUES('32','32','1','1')
INSERT INTO READINGHISTORY VALUES('32','31','1','1')
INSERT INTO READINGHISTORY VALUES('32','30','1','1')

--33
INSERT INTO BOOKMARKS VALUES('33','33')
INSERT INTO BOOKMARKS VALUES('33','31')
INSERT INTO BOOKMARKS VALUES('33','30')
INSERT INTO BOOKMARKS VALUES('33','34')
INSERT INTO BOOKMARKS VALUES('33','35')

INSERT INTO READINGHISTORY VALUES('33','33','2','2')
INSERT INTO READINGHISTORY VALUES('33','31','2','2')
INSERT INTO READINGHISTORY VALUES('33','30','2','2')
INSERT INTO READINGHISTORY VALUES('33','34','2','2')
INSERT INTO READINGHISTORY VALUES('33','35','2','2')

--34
INSERT INTO BOOKMARKS VALUES('34','31')
INSERT INTO BOOKMARKS VALUES('34','32')
INSERT INTO BOOKMARKS VALUES('34','33')
INSERT INTO BOOKMARKS VALUES('34','34')
INSERT INTO BOOKMARKS VALUES('34','35')

INSERT INTO READINGHISTORY VALUES('34','31','1','2')
INSERT INTO READINGHISTORY VALUES('34','32','2','1')
INSERT INTO READINGHISTORY VALUES('34','33','1','2')
INSERT INTO READINGHISTORY VALUES('34','34','2','1')
INSERT INTO READINGHISTORY VALUES('34','35','1','2')

--35
INSERT INTO BOOKMARKS VALUES('35','31')
INSERT INTO BOOKMARKS VALUES('35','33')
INSERT INTO BOOKMARKS VALUES('35','35')
INSERT INTO BOOKMARKS VALUES('35','32')
INSERT INTO BOOKMARKS VALUES('35','34')

INSERT INTO READINGHISTORY VALUES('35','31','2','3')
INSERT INTO READINGHISTORY VALUES('35','33','2','1')
INSERT INTO READINGHISTORY VALUES('35','35','1','3')
INSERT INTO READINGHISTORY VALUES('35','32','1','1')
INSERT INTO READINGHISTORY VALUES('35','34','1','2')

--comments
INSERT INTO COMMENT VALUES ('30','31','35','cmt35_1.docx','21-07-2003','0')
INSERT INTO COMMENT VALUES ('31','32','34','cmt34_5.docx','22-07-2023','1')
INSERT INTO COMMENT VALUES ('32','33','35','cmt35_2.docx','20-07-2023','0')
INSERT INTO COMMENT VALUES ('33','33','33','cmt33_1.docx','20-07-2023','0')
INSERT INTO COMMENT VALUES ('34','34','34','cmt34_1.docx','1-07-2023','0')
INSERT INTO COMMENT VALUES ('35','35','35','cmt35_3.docx','1-07-2023','0')
INSERT INTO COMMENT VALUES ('36','30','34','cmt34_1.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('37','31','33','cmt33_5.docx','21-07-2023','1')
INSERT INTO COMMENT VALUES ('38','32','32','cmt32_1.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('39','33','31','cmt31_1.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('80','32','32','cmt32_5.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('81','31','30','cmt30_1.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('82','32','34','cmt34_3.docx','21-07-2023','0')

--rating
INSERT INTO RATING VALUES ('30', '32', 'rating30.docx', 5.0),
						  ('31', '31', 'rating31.docx', 5.0),
						  ('32', '30', 'rating32.docx', 5.0),
						  ('33', '33', 'rating33.docx', 5.0),
						  ('34', '34', 'rating34.docx', 5.0),
						  ('35', '35', 'rating35.docx', 5.0),

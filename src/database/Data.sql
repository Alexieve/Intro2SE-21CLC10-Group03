use HappiNovel
set DATEFORMAT DMY;

-- ACCOUNT --
INSERT INTO ACCOUNT VALUES('1',N'Lê Chính Nhân',N'Albert de Nafta','Tea'
,N'Life is just one long story about how you died… ✨'
,N'Chủ nô',N'Công cụ chăm chỉ, đặc biệt là giá rẻ khi mua bán','14-06-2003'
,'img1.jpg','pcover1.jpg','0','21-7-2023','2','0943018665')
--Admin có viết

INSERT INTO ACCOUNT VALUES('2',N'LCN2',N'Trebla edle Atfan','ADN'
,N'Life is just one long story about you… ✨'
,N'Ngồi không',N'Ước mơ được làm Admin','14-06-2003'
,'img2.jpg','pcover2.jpg','0','21-7-2023','1','0943018665')--Mod ko viết

INSERT INTO ACCOUNT VALUES('3',N'LCN3',N'Oppenheimer','hiroshima'
,N'Life is just one long story… ✨'
,N'Giáo viên lười',N'Không thích viết gì cả','14-06-2003'
,'img3.jpg','pcover3.jpg','0','21-7-2023','0','0943018665') --User ko viết vì sách bị từ chối

INSERT INTO ACCOUNT VALUES('4',N'LCN4',N'Hít le','ilovejews'
,N'Life is just one story… ✨'
,N'Lãnh đã ĐCSVN',N'Nhân dân VN','14-06-2003'
,'img4.jpg','pcover4.jpg','1','21-7-2023','0','0943018665') --User bị ban

INSERT INTO ACCOUNT VALUES('5',N'LCN5',N'Lê C Nhân','lcn'
,N'Life is just story… ✨'
,N'Viết lách, viết đồ',N'Viết :>>>','14-06-2003'
,'img5.jpg','pcover5.jpg','0','21-7-2023','0','0943018665')--User có viết

INSERT INTO ACCOUNT VALUES('6',N'LCN6',N'Đồng chí Hồ','vn'
,N'Life is story… ✨'
,N'Nhà páo',N'Páo','14-06-2003'
,'img6.jpg','pcover6.jpg','0','21-7-2023','0','0943018665') --user có viết

INSERT INTO ACCOUNT VALUES('7',N'LCN7',N'Tộc lợn','qwerty'
,N'Life… ✨'
,N'Minh Péo',N'Kids','14-06-2003'
,'img7.jpg','pcover7.jpg','0','21-7-2023','1','0943018665')--mod có viết

INSERT INTO ACCOUNT VALUES('8',N'LCN8',N'Sì péc to','watch'
,N'…✨'
,N'Erika Company',N'Kids','14-06-2003'
,'img8.jpg','pcover8.jpg','0','21-7-2023','0','0943018665') --user ko viết

INSERT INTO ACCOUNT VALUES('9',N'LCN9',N'Thịnh bjp','bjp'
,N'✨'
,N'ChatLGBT',N'Child','14-06-2003'
,'img9.jpg','pcover9.jpg','0','21-7-2023','0','0943018665')--user ko viết

Insert into ACCOUNT values('10','solo10',N'BacHuyenTienTon10','yahsure10','What is love?',N'Quý bửu 10',N'hen......suyển','21/12/2012','img10.jpg','pcover10.jpg','0','1/1/2022','0','6663628')--User không có viết sách--
Insert into ACCOUNT values('11','solo11',N'BacHuyenTienTon11','yahsure11','Baby dont hurt me',N'Quý bửu 11',N'hen......suyển','21/12/2012','img11.jpg','pcover11.jpg','1','1/1/2022','0','6663628') --User bị ban--
Insert into ACCOUNT values('12','solo12',N'BacHuyenTienTon12','yahsure12','Dont hurt me',N'Quý bửu 12',N'hen......suyển','21/12/2012','img12.jpg','pcover12.jpg','0','1/1/2022','0','6663628') --User có viết sách--
Insert into ACCOUNT values('13','solo13',N'BacHuyenTienTon13','yahsure13','No more',N'Quý bửu 13',N'hen......suyển','21/12/2012','img13.jpg','pcover13.jpg','0','1/1/2022','1','6663628') --Mod--
Insert into ACCOUNT values('14','solo14',N'BacHuyenTienTon14','yahsure14','What is love? Baby dont hurt me, dont hurt me, no more',N'Quý bửu 14',N'hen......suyển','21/12/2012','img14.jpg','pcover14.jpg','0','1/1/2022','2','6663628') --Admin--

INSERT INTO ACCOUNT (USERID, USERNAME, ACCOUNTNAME, ACCOUNTPASSWORD, BIO, JOBS, FAVORITES, DOB, AVATARURL, COVERURL, ACCOUNTSTATUS, REGDATE, PERMISSION, SDT)
VALUES
    ('20', 'thinh1', N'Thịnh Oce', '12345678', 'Bio text1', 'Software Dev', 'Sports, Music', '15-06-2003', 'img20.jpg', 'pcover20.jpg', 0, '01-06-2023', 0, '1234567890'),
    ('21', 'thinh2', N'Thịnh Too', '12345678', 'Bio text2', 'Designer', 'Movies, Food', '20-10-2003', 'img21.jpg', 'pcover21.jpg', 1, '02-06-2023', 0, '9876543210'),
    ('22', 'thinh3', N'Thịnh Tree', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '12-03-2003', 'img22.jpg', 'pcover22.jpg', 0, '03-06-2023', 0, '4567890123'),
    ('23', 'thinh4', N'Thịnh For', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '13-03-2003', 'img23.jpg', 'pcover23.jpg', 0, '03-06-2023', 1, '4567890124'),
    ('24', 'thinh5', N'Thịnh Fine', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '14-03-2003', 'img24.jpg', 'pcover24.jpg', 0, '03-06-2023', 2, '4567890125');

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
,N'NPC Company',N'Kids','15-10-2003'
,'img37.jpg','pcover37.png','0','21-7-2023','0','0943018665') --user ko viết

INSERT INTO ACCOUNT VALUES('38',N'NTT8',N'Thịnh bjp','bjp'
,N'✨'
,N'ChatLGBT',N'Child','15-10-2003'
,'img38.jpg','pcover38.png','0','21-7-2023','0','0943018665')--user ko viết

INSERT INTO ACCOUNT VALUES('39',N'NTT9',N'Thịnh bjp','bjp'
,N'✨'
,N'ChatLGBT',N'Child','15-10-2003'
,'img39.jpg','pcover39.jpg','0','21-7-2023','0','0943018665')--user ko viết

-- BOOK --

INSERT INTO BOOK VALUES('1',N'The Dictator','1'
,'note1.docx'
,'summary1.docx'
,'25-07-2023','coverImg1.jpg','1','25072003','0')
--Book1 của user 1 

INSERT INTO BOOK VALUES('2',N'Phương trình Schrödinger','1'
,'note2.docx'
,'summary2.docx'
,'25-07-2023','coverImg2.jpg','2','20250','0')
--Book2 của user 1 

INSERT INTO BOOK VALUES('3',N'Robert Oppenheimer','5'
,'note3.docx'
,'summary3.docx'
,'25-07-2023','coverImg3.jpg','0','29250','0')
--Book3 của user 5 

INSERT INTO BOOK VALUES('4',N'WikiLeaks','6'
,'note4.docx'
,'summary4.docx'
,'25-07-2023','coverImg4.jpg','0','1250','0')
--Book4 của user 6 

INSERT INTO BOOK VALUES('5',N'Ta là chúa tể độc ác của Đế Quốc liên thiên hà!','7'
,'note5.docx'
,'summary5.docx'
,'25-07-2023','coverImg5.jpg','0','1250','0')
--Book5 của user 7 

INSERT INTO BOOK VALUES('6',N'Làm bạn với cô gái đáng yêu thứ hai lớp','7'
,'note6.docx'
,'summary6.docx'
,'25-07-2023','coverImg6.jpg','0','1250','0')
--Book6 của user 7 

INSERT INTO BOOK VALUES('7',N'Có lẽ, tôi thật sự thích con nhỏ dễ thương này.','7'
,'note7.docx'
,'summary7.docx'
,'25-07-2023','coverImg7.jpg','0','1250','1')
--Book7 của user 7 --pending

INSERT INTO BOOK VALUES('8',N'Mình Chỉ Muốn Làm Nam Sinh Bình Thường','6'
,'note8.docx'
,'summary8.docx'
,'25-07-2023','coverImg8.jpg','0','1250','0')
--Book8 của user 6 --pending chapter

Insert into BOOK values('10','Kimi to Boku', '12', 'note10.docx','summary10.docx','3/5/2022','coverImg10.jpg','1', 0, 0)
Insert into BOOK values('11','Fake Holy Sword Story', '12', 'note11.docx','summary11.docx','3/5/2022','coverImg11.jpg','1', 0, 0)
Insert into BOOK values('12','Owari no Seraph', '13', 'note12.docx','summary12.docx','3/5/2022','coverImg12.jpg','1', 0, 0)
Insert into BOOK values('13','Kawaii Onnanoko', '14', 'note13.docx','summary13.docx','3/5/2022','coverImg13.jpg','1', 0, 0)
Insert into BOOK values('14','Demon King & Hero', '14', 'note14.docx','summary14.docx','23/5/2022','coverImg14.jpg','2', 0, 0)
Insert into BOOK values('15','Random', '12', 'note15.docx','summary15.docx','20/5/2022','coverImg15.jpg','0', 0, 1)
Insert into BOOK values('16',N'Mình Chỉ', '12', 'note16.docx','summary16.docx','20/7/2022','coverImg16.jpg','1', 0, 1)
Insert into BOOK values('17',N'Làm bạn với cô gái đáng yêu thứ hai lớp', '13', 'note17.docx','summary17.docx','20/11/2022','coverImg17.jpg','1', 0, 0)
Insert into BOOK values('18','Boushoku no Berserk', '14', 'note18.docx','summary18.docx','20/12/2022','coverImg18.jpg','2', 0, 0)
Insert into BOOK values('19','Tearmoon Empire', '12', 'note19.docx','summary19.docx','20/01/2022','coverImg19.jpg','0', 0, 0)
Insert into BOOK values('50',N'RƠI VÀO TRÁI TIM EM','13','note50.docx','summary50.docx','05/03/2022','coverImg50','1',0,1)
Insert into BOOK values('51',N'Đỉnh cấp khí vận','13','note51.docx','summary51.docx','05/12/2022','coverImg51','1',0,1)

INSERT INTO BOOK (BOOKID, TITLE, AUTHOR, NOTE, SUMMARY, PUBLISHDATE, COVERIMAGE, BOOKSTATUS, TOTALVIEW, ispending)
VALUES
    ('20', N'Đệ Đệ Ta Là Thiên Tuyển Chi Tử', '22', 'note20.docx', 'summary20.docx', '20-06-2023', 'coverImg20.jpg', 1, 12000,0),
    ('21', N'Ta Có Một Thân Bị Động Kỹ', '22', 'note21.docx', 'summary21.docx', '20-06-2023', 'coverImg21.jpg', 1, 12000,0),
    ('22', N'Cao Võ: Ta Mang Theo Anime Hệ Thống Giết Điên Rồi', '22', 'note22.docx', 'summary22.docx', '20-06-2023', 'coverImg22.jpg', 1, 12000,0),
    ('23', N'Ta Trù Thần, Tông Môn Trên Dưới Bị Thèm Khóc Rồi', '23', 'note23.docx', 'summary23.docx', '20-06-2023', 'coverImg23.jpg', 1, 12000,0),
    ('24', N'Đan Đạo Tông Sư', '23', 'note24.docx', 'summary24.docx', '20-06-2023', 'coverImg24.jpg', 1, 12000,0),
    ('25', N'Ta Ở Group Chat Mô Phỏng Trường Sinh Lộ', '24', 'note25.docx', 'summary25.docx', '20-06-2023', 'coverImg25.jpg', 1, 12000,0),
    ('26', N'Trường Sinh Từ Thợ Săn Bắt Đầu', '24', 'note26.docx', 'summary26.docx', '20-06-2023', 'coverImg26.jpg', 1, 12000,0),
    ('27', N'Đầu Tư Tộc Nhân,Thực Lực Của Ta Là Tộc Tổng Cộng', '24', 'note27.docx', 'summary27.docx', '20-06-2023', 'coverImg27.jpg', 1, 12000,0),
    ('28', N'Toàn Dân Thức Tỉnh:Bắt Đầu Thần Thoại Thiên Phú', '24', 'note28.docx', 'summary28.docx', '20-06-2023', 'coverImg28.jpg', 1, 12000,0),
    ('29', N'Bán Tiên', '24', 'note29.docx', 'summary29.docx', '20-06-2023', 'coverImg29.jpg', 1, 12000,0),
    ('60', N'Vạn Cổ Đệ Nhất Thần', '22', 'note60.docx', 'summary60.docx', '20-06-2023', 'coverImg60.jpg', 1, 0,1),
    ('61', N'Ta Không Hề Cố Ý Thành Tiên', '22', 'note61.docx', 'summary61.docx', '20-06-2023', 'coverImg61.jpg', 1, 0,1);

INSERT INTO BOOK VALUES('30',N'Nữ Thần Lớp Tôi Có Gì Đó Lạ Lắm.','30'
,'note30.docx'
,'summary30.docx'
,'25-07-2023','coverImg30.png','1','25072003','0')
--Book1 của user 30 

INSERT INTO BOOK VALUES('31',N'Khi bắt đầu làm công việc nhà bán thời gian','30'
,'note31.docx'
,'summary31.docx'
,'25-07-2023','coverImg31.png','2','20250','0')
--Book2 của user 30 

INSERT INTO BOOK VALUES('32',N'Làm bạn với cô gái đáng yêu thứ hai lớp','34'
,'note32.docx'
,'summary32.docx'
,'25-07-2023','coverImg32.png','0','29250','0')
--Book3 của user 34 

INSERT INTO BOOK VALUES('33',N'"Cậu không thể hôn được, phải chứ?"','35'
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

INSERT INTO BOOK VALUES('36',N'Anh tưởng tái sinh là thoát được sao, Nii-san?','32'
,'note36.docx'
,'summary36.docx'
,'25-07-2023','coverImg36.png','0','0','1')

INSERT INTO BOOK VALUES('37',N'Nắng hạ cứ vậy tan mất','32'
,'note37.docx'
,'summary37.docx'
,'25-07-2023','coverImg37.png','0','0','1')


-- GENRE --
INSERT INTO GENRE (GENREID, GENRENAME) VALUES
('1', N'Adapted to Manga'),
('2', N'Bi kịch'),
('3', N'Chính trị'),
('4', N'Drama'),
('5', N'Fantasy'),
('6', N'Giật gân'),
('7', N'Hài hước'),
('8', N'Hành động'),
('9', N'Harem'),
('10', N'Huyền bí'),
('11', N'Huyền huyễn'),
('12', N'Isekai'),
('13', N'Kịch tính'),
('14', N'Lãng mạn'),
('15', N'Ma thuật'),
('16', N'Phiêu lưu'),
('17', N'Quân đội'),
('18', N'Học đường'),
('19', N'Slice of life'),
('20', N'Super Power'),
('21', N'Supernatural'),
('22', N'Tài liệu'),
('23', N'Tâm lý'),
('24', N'Thế giới khác'),
('25', N'Thiếu niên'),
('26', N'Tiên hiệp'),
('27', N'Toàn dân'),
('28', N'Trinh thám'),
('29', N'Truyện giả tưởng'),
('30', N'Web Novel');

-- BOOKGENRES
INSERT INTO BOOKGENRES VALUES('1','1')
INSERT INTO BOOKGENRES VALUES('1','4')
INSERT INTO BOOKGENRES VALUES('1','9')
INSERT INTO BOOKGENRES VALUES('1','7')

INSERT INTO BOOKGENRES VALUES('2','5')
INSERT INTO BOOKGENRES VALUES('2','3')
INSERT INTO BOOKGENRES VALUES('2','7')
INSERT INTO BOOKGENRES VALUES('2','9')

INSERT INTO BOOKGENRES VALUES('3','2')
INSERT INTO BOOKGENRES VALUES('3','3')
INSERT INTO BOOKGENRES VALUES('3','4')
INSERT INTO BOOKGENRES VALUES('3','7')
INSERT INTO BOOKGENRES VALUES('3','8')

INSERT INTO BOOKGENRES VALUES('4','3')
INSERT INTO BOOKGENRES VALUES('4','4')
INSERT INTO BOOKGENRES VALUES('4','7')
INSERT INTO BOOKGENRES VALUES('4','8')
INSERT INTO BOOKGENRES VALUES('4','11')

INSERT INTO BOOKGENRES VALUES('5','1')
INSERT INTO BOOKGENRES VALUES('5','2')
INSERT INTO BOOKGENRES VALUES('5','4')
INSERT INTO BOOKGENRES VALUES('5','6')
INSERT INTO BOOKGENRES VALUES('5','8')
INSERT INTO BOOKGENRES VALUES('5','9')

INSERT INTO BOOKGENRES VALUES('6','1')
INSERT INTO BOOKGENRES VALUES('6','2')
INSERT INTO BOOKGENRES VALUES('6','4')
INSERT INTO BOOKGENRES VALUES('6','5')
INSERT INTO BOOKGENRES VALUES('6','6')

Insert into BOOKGENRES values('10','10')
Insert into BOOKGENRES values('10','13')
Insert into BOOKGENRES values('10','16')
Insert into BOOKGENRES values('10','17')
Insert into BOOKGENRES values('10','21')


Insert into BOOKGENRES values('11','16')
Insert into BOOKGENRES values('11','17')
Insert into BOOKGENRES values('11','23')

Insert into BOOKGENRES values('12','16')
Insert into BOOKGENRES values('12','17')
Insert into BOOKGENRES values('12','18')
Insert into BOOKGENRES values('12','21')

Insert into BOOKGENRES values('13','10')
Insert into BOOKGENRES values('13','12')
Insert into BOOKGENRES values('13','20')
Insert into BOOKGENRES values('13','18')

Insert into BOOKGENRES values('14','16')
Insert into BOOKGENRES values('14','13')
Insert into BOOKGENRES values('14','17')
Insert into BOOKGENRES values('14','22')

Insert into BOOKGENRES values('15','11')
Insert into BOOKGENRES values('15','12')
Insert into BOOKGENRES values('15','15')
Insert into BOOKGENRES values('15','24')
Insert into BOOKGENRES values('15','19')

Insert into BOOKGENRES values('16','17')

Insert into BOOKGENRES values('17','16')
Insert into BOOKGENRES values('17','17')
Insert into BOOKGENRES values('17','18')

Insert into BOOKGENRES values('18','10')
Insert into BOOKGENRES values('18','11')
Insert into BOOKGENRES values('18','12')
Insert into BOOKGENRES values('18','13')
Insert into BOOKGENRES values('18','15')

Insert into BOOKGENRES values('19','12')
Insert into BOOKGENRES values('19','17')
Insert into BOOKGENRES values('19','13')

Insert into BOOKGENRES values('50','12')
Insert into BOOKGENRES values('50','17')
Insert into BOOKGENRES values('50','13')

Insert into BOOKGENRES values('51','15')
Insert into BOOKGENRES values('51','16')
Insert into BOOKGENRES values('51','18')

INSERT INTO BOOKGENRES (BOOKID, GENREID)
VALUES
    ('20', '20'),
    ('20', '21'),
    ('21', '20'),
    ('21', '22'),
    ('22', '24'),
    ('22', '25'),
    ('23', '20'),
    ('23', '22'),
    ('23', '25'),
	('24', '20'),
    ('24', '24'),
    ('24', '25'),
    ('25', '20'),
    ('25', '22'),
    ('25', '25'),
    ('26', '20'),
    ('26', '23'),
    ('26', '25'),
    ('26', '27'),
    ('27', '20'),
    ('27', '25'),
    ('27', '28'),
    ('28', '20'),
    ('28', '25'),
    ('28', '29'),
    ('29', '23'),
    ('29', '30'),
	('60', '20'),
    ('61', '26'),
    ('61', '30');

INSERT INTO BOOKGENRES VALUES('36','30')
INSERT INTO BOOKGENRES VALUES('36','1')
INSERT INTO BOOKGENRES VALUES('36','9')
INSERT INTO BOOKGENRES VALUES('36','5')
INSERT INTO BOOKGENRES VALUES('36','24')
INSERT INTO BOOKGENRES VALUES('37','30')
INSERT INTO BOOKGENRES VALUES('37','1')
INSERT INTO BOOKGENRES VALUES('37','2')
INSERT INTO BOOKGENRES VALUES('37','4')
INSERT INTO BOOKGENRES VALUES('37','21')
INSERT INTO BOOKGENRES VALUES('30','30')
INSERT INTO BOOKGENRES VALUES('30','1')
INSERT INTO BOOKGENRES VALUES('30','2')
INSERT INTO BOOKGENRES VALUES('30','3')

--31
INSERT INTO BOOKGENRES VALUES('31','30')
INSERT INTO BOOKGENRES VALUES('31','1')
INSERT INTO BOOKGENRES VALUES('31','2')
INSERT INTO BOOKGENRES VALUES('31','3')
INSERT INTO BOOKGENRES VALUES('31','4')

--32
INSERT INTO BOOKGENRES VALUES('32','30')
INSERT INTO BOOKGENRES VALUES('32','1')
INSERT INTO BOOKGENRES VALUES('32','2')
INSERT INTO BOOKGENRES VALUES('32','3')
INSERT INTO BOOKGENRES VALUES('32','4')
INSERT INTO BOOKGENRES VALUES('32','5')
INSERT INTO BOOKGENRES VALUES('32','6')

--33
INSERT INTO BOOKGENRES VALUES('33','1')
INSERT INTO BOOKGENRES VALUES('33','2')
INSERT INTO BOOKGENRES VALUES('33','3')

--34
INSERT INTO BOOKGENRES VALUES('34','7')
INSERT INTO BOOKGENRES VALUES('34','8')
INSERT INTO BOOKGENRES VALUES('34','9')
INSERT INTO BOOKGENRES VALUES('34','13')
INSERT INTO BOOKGENRES VALUES('34','14')
INSERT INTO BOOKGENRES VALUES('34','15')
INSERT INTO BOOKGENRES VALUES('34','16')
INSERT INTO BOOKGENRES VALUES('34','17')

--35
INSERT INTO BOOKGENRES VALUES('35','2')
INSERT INTO BOOKGENRES VALUES('35','5')
INSERT INTO BOOKGENRES VALUES('35','7')
INSERT INTO BOOKGENRES VALUES('35','8')
INSERT INTO BOOKGENRES VALUES('35','10')
INSERT INTO BOOKGENRES VALUES('35','12')
INSERT INTO BOOKGENRES VALUES('35','11')
INSERT INTO BOOKGENRES VALUES('35','19')

INSERT INTO VOLUME VALUES('1','1',N'Sự im lặng của bầy cừu')
INSERT INTO VOLUME VALUES('1','2',N'Gambit trên chiến trường')

INSERT INTO VOLUME VALUES('2','1',N'Khởi đầu của sóng')
INSERT INTO VOLUME VALUES('2','2',N'Thế nào là ngẫu nhiên')

INSERT INTO VOLUME VALUES('3','1',N'Khởi nghiệp')
INSERT INTO VOLUME VALUES('3','2',N'Trinity')

INSERT INTO VOLUME VALUES('4','1',N'Lịch sử quản trị')
INSERT INTO VOLUME VALUES('4','2',N'Tài chính và quản bá')

INSERT INTO VOLUME VALUES('5','1',N'Ta là chúa tể độc ác')
INSERT INTO VOLUME VALUES('5','2',N'Đế Quốc liên thiên hà!')

INSERT INTO VOLUME VALUES('6','1',N'Cô gái đáng yêu thứ hai lớp')
INSERT INTO VOLUME VALUES('6','2',N'Giáng sinh')

INSERT INTO VOLUME VALUES('7','1',N'Chuyện kể về một nam sinh')

INSERT INTO VOLUME VALUES('8','1',N'Cuộc sống bình thường và sự cố không mong muốn')

Insert into VOLUME values('10','01',N'Chiến lực tối thượng của hai quốc gia')
Insert into VOLUME values('10','02',N'Elletear')
Insert into VOLUME values('10','03',N'Hoàng đế Yunmelngen')

Insert into VOLUME values('11','01',N'Sự ra đời của thánh kiếm sĩ')
Insert into VOLUME values('11','02',N'Chuyến viếng thăm ngoài ý muốn')
Insert into VOLUME values('11','03',N'Làn sương đen')

Insert into VOLUME values('12','01',N'Chiến dịch liên minh đầu tiên')
Insert into VOLUME values('12','02',N' Sự cám dỗ bên bờ biển')
Insert into VOLUME values('12','03',N'Bằng chứng')

Insert into VOLUME values('13','01',N'Chào mừng tới trường trung học, thằng khốn!')
Insert into VOLUME values('13','02',N'Kẻ săn mồi ẩn nấp.')
Insert into VOLUME values('13','03',N'Cánh tay của quỷ')

Insert into VOLUME values('14','01',N'Ngươi chính là quỷ vương đúng không?')
Insert into VOLUME values('14','02',N'Quỷ vương yêu anh hùng')

Insert into VOLUME values('15','01',N'Fujino Mitsuki')
Insert into VOLUME values('15','02',N'City Hall')

Insert into VOLUME values('16','01',N'Giấc mơ ngọt ngào')
Insert into VOLUME values('16','02',N'Cuộc sống bình thường và sự cố không mong muốn')

Insert into VOLUME values('17','01',N'Cô gái đáng yêu thứ hai lớp')
Insert into VOLUME values('17','02',N'Giáng sinh')
Insert into VOLUME values('17','03',N'Amami Yuu')

Insert into VOLUME values('18','01',N'Kẻ Vô Dụng')
Insert into VOLUME values('18','02',N'Quê Nhà Hoài Niệm')
Insert into VOLUME values('18','03',N'Thế giới tâm linh')

Insert into VOLUME values('19','01',N'Khởi đầu bên chiếc máy chém')
Insert into VOLUME values('19','02',N'Một điềm báo ghê rợn')

Insert into VOLUME values('50','01',N'Tôi yêu em')
Insert into VOLUME values('50','02',N'Hết yêu em rồi')

Insert into VOLUME values('51','01',N'Vận may chó chết')
Insert into VOLUME values('51','02',N'Bắt đầu tu luyện')

INSERT INTO VOLUME (BOOKID, VOLID, VOLNAME)
VALUES
    ('20', '1', 'Volume 1'),
    ('20', '2', 'Volume 2'),
    ('21', '1', 'Volume 1'),
    ('21', '2', 'Volume 2'),
    ('22', '1', 'Volume 1'),
    ('22', '2', 'Volume 2'),
    ('23', '1', 'Volume 1'),
    ('23', '2', 'Volume 2'),
    ('24', '1', 'Volume 1'),
    ('24', '2', 'Volume 2'),
    ('25', '1', 'Volume 1'),
    ('25', '2', 'Volume 2'),
    ('26', '1', 'Volume 1'),
    ('26', '2', 'Volume 2'),
    ('27', '1', 'Volume 1'),
    ('27', '2', 'Volume 2'),
    ('28', '1', 'Volume 1'),
    ('28', '2', 'Volume 2'),
    ('29', '1', 'Volume 1'),
    ('29', '2', 'Volume 2'),
    ('60', '1', 'Volume 1'),
    ('61', '1', 'Volume 1');

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
INSERT INTO VOLUME VALUES('32','1',N'WN Vol.1: Cô gái đáng yêu thứ hai lớp')
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
INSERT INTO CHAPTER VALUES('33','2','1',N'Chương 02: Màn Kabedon khiến tim loạn nhịp','26/07/2023','chap1_2_33.docx','0')
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
INSERT INTO CHAPTER VALUES('35','1','1',N'Chương 01','26/07/2023','chap1_1_35.docx','0')
INSERT INTO CHAPTER VALUES('35','1','2',N'Chương 02','26/07/2023','chap2_1_35.docx','0')
INSERT INTO CHAPTER VALUES('35','1','3',N'Chương 03','26/07/2023','chap3_1_35.docx','0')

INSERT INTO VOLUME VALUES('35','2',N'Vol 2. BỨc thư thứ hai')
INSERT INTO CHAPTER VALUES('35','2','1',N'Chương 01','26/07/2023','chap1_2_35.docx','0')
INSERT INTO CHAPTER VALUES('35','2','2',N'Chương 02','26/07/2023','chap2_2_35.docx','0')
INSERT INTO CHAPTER VALUES('35','2','3',N'Chương 03','26/07/2023','chap3_2_35.docx','0')

INSERT INTO VOLUME VALUES('36','1',N'Arc 1: Quyết định của đứa bé sơ sinh')
INSERT INTO CHAPTER VALUES('36','1','1',N'Chương 1: Nữ Thần nói','26/07/2023','chap1_1_36.docx','1')
INSERT INTO CHAPTER VALUES('36','1','2',N'Chương 2: Gia đình, khả năng, quyết tâm','26/07/2023','chap2_1_36.docx','1')
INSERT INTO CHAPTER VALUES('36','1','3',N'Chương 3: Ác Mộng','26/07/2023','chap3_1_36.docx','1')

INSERT INTO CHAPTER VALUES 
('1','1','1',N'Chọn bạn mà chơi.','21-07-2023','chap1_1_1.docx','0')

INSERT INTO CHAPTER VALUES 
('1','1','2',N'Đi đâu.','21-07-2023','chap2_1_1.docx','0')

INSERT INTO CHAPTER VALUES 
('1','2','1',N'Ngủ.','21-07-2023','chap1_2_1.docx','0')

INSERT INTO CHAPTER VALUES 
('2','1','1',N'Tui luôn muốn.','21-07-2023','chap1_1_2.docx','0')

INSERT INTO CHAPTER VALUES 
('2','1','2',N'Chọn tôi mà chơi.','21-07-2023','chap2_1_2.docx','0')

INSERT INTO CHAPTER VALUES 
('2','2','1',N'Chọn uiuiybạn mà chơi.','21-07-2023','chap2_2_1.docx','0')

INSERT INTO CHAPTER VALUES 
('2','2','2',N'Cuhọn bạn mà chơi.','21-07-2023','chap2_2_2.docx','0')

INSERT INTO CHAPTER VALUES 
('3','1','1',N'Chọniui bạn mà chơi.','21-07-2023','chap1_1_3.docx','0')
INSERT INTO CHAPTER VALUES 
('3','1','2',N'Ngu','21-07-2023','chap2_1_3.docx','0')
INSERT INTO CHAPTER VALUES 
('3','2','1',N'Ăn ăn ăn','21-07-2023','chap1_2_3.docx','0')
INSERT INTO CHAPTER VALUES 
('3','2','2',N'Chó.','21-07-2023','chap2_2_3.docx','0')
INSERT INTO CHAPTER VALUES 
('3','2','3',N'Cô ây','21-07-2023','chap3_2_3.docx','0')
INSERT INTO CHAPTER VALUES 
('4','1','1',N'Ngô Ngọc Liên','21-07-2023','chap1_1_4.docx','0')
INSERT INTO CHAPTER VALUES 
('4','1','2',N'What','21-07-2023','chap2_1_4.docx','0')
INSERT INTO CHAPTER VALUES 
('4','1','3',N'Tôi thích cô ấy','21-07-2023','chap3_1_4.docx','0')
INSERT INTO CHAPTER VALUES 
('4','2','1',N'Ngô Ngọc Liên','21-07-2023','chap1_2_4.docx','0')
INSERT INTO CHAPTER VALUES 
('4','2','2',N'Ngô Ngọc Liên','21-07-2023','chap2_2_4.docx','0')

INSERT INTO CHAPTER VALUES 
('5','1','1',N'Gì zậy chời.','21-07-2023','chap1_1_5.docx','0')
INSERT INTO CHAPTER VALUES 
('5','1','2',N'Ngủ ngủ ngủ.','21-07-2023','chap2_1_5.docx','0')
INSERT INTO CHAPTER VALUES 
('5','1','3',N'Chọn bạn mà chơi.','21-07-2023','chap3_1_5.docx','0')
INSERT INTO CHAPTER VALUES 
('5','2','1',N'Lại ngủ.','21-07-2023','chap1_2_5.docx','0')
INSERT INTO CHAPTER VALUES 
('5','2','2',N'Hít hít le le','21-07-2023','chap2_2_5.docx','0')

INSERT INTO CHAPTER VALUES 
('6','1','1',N'BÌm bịp.','21-07-2023','chap1_1_6.docx','0')
INSERT INTO CHAPTER VALUES 
('6','1','2',N'Ngô Ngọc Liên','21-07-2023','chap2_1_6.docx','0')
INSERT INTO CHAPTER VALUES 
('6','2','1',N'The hell stop','21-07-2023','chap1_2_6.docx','0')
INSERT INTO CHAPTER VALUES 
('6','2','2',N'Ngáo xịt tôm','21-07-2023','chap2_2_6.docx','0')

INSERT INTO CHAPTER VALUES 
('8','1','1',N'Le le điên','21-07-2023','chap1_1_8.docx','1')
INSERT INTO CHAPTER VALUES 
('8','1','2',N'Nhức đầu vcl','21-07-2023','chap2_1_8.docx','1')
--hia chap chời duyệt

Insert into CHAPTER values('10','01','01',N'Thiếu niên cùng ma nữ (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('10','01','02',N'Thiếu niên cùng ma nữ (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('10','01','03',N'Thiếu niên cùng ma nữ (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('10','02','01',N'Người mà ta/bản tiểu thư gặp gỡ là... (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('10','02','02',N'Người mà ta/bản tiểu thư gặp gỡ là... (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('10','02','03',N'Người mà ta/bản tiểu thư gặp gỡ là... (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('10','03','01',N' Đồ vật thắt lại vận mệnh (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('10','03','02',N' Đồ vật thắt lại vận mệnh (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('10','03','03',N' Đồ vật thắt lại vận mệnh (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('11','01','01',N'Thanh mai trúc mã (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('11','01','02',N'Thanh mai trúc mã (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('11','01','03',N'Thanh mai trúc mã (3)','05/07/2022','Chap3.docx', 0)

Insert into CHAPTER values('11','02','01',N'Đi thôi! (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('11','02','02',N'Đi thôi! (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('11','02','03',N'Đi thôi! (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('11','03','01',N' Nụ cười tỏa nắng (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('11','03','02',N' Nụ cười tỏa nắng (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('11','03','03',N' Nụ cười tỏa nắng (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('12','01','01',N' Khi cô gái dùng mưu (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('12','01','02',N' Khi cô gái dùng mưu (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('12','01','03',N' Khi cô gái dùng mưu (3)','05/07/2022','Chap3.docx', 0)

Insert into CHAPTER values('12','02','01',N'Thỏa thuận (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('12','02','02',N'Thỏa thuận (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('12','02','03',N'Thỏa thuận (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('12','03','01',N' Thiên đường (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('12','03','02',N' Thiên đường (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('12','03','03',N' Thiên đường (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('13','01','01',N' Trùm lớp. (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('13','01','02',N' Trùm lớp. (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('13','01','03',N' Trùm lớp. (3)','05/07/2022','Chap3.docx', 0)

Insert into CHAPTER values('13','02','01',N'Shinoa Hiiragi. (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('13','02','02',N'Shinoa Hiiragi. (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('13','02','03',N'Shinoa Hiiragi. (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('13','03','01',N' Vờn chuột (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('13','03','02',N' Vờn chuột (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('13','03','03',N' Vờn chuột (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('14','01','01',N' Dọn dẹp (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('14','01','02',N' Dọn dẹp (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('14','01','03',N' Dọn dẹp (3)','05/06/2022','Chap3.docx', 0)

Insert into CHAPTER values('14','02','01',N'Khu căn cứ (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('14','02','02',N'Khu căn cứ (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('14','02','03',N'Khu căn cứ (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('15','01','01',N' Yêu cầu của Mitsuki (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('15','01','02',N' Yêu cầu của Mitsuki (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('15','01','03',N' Yêu cầu của Mitsuki (3)','05/06/2022','Chap3.docx', 0)

Insert into CHAPTER values('15','02','01',N'Cô đơn (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('15','02','02',N'Cô đơn (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('15','02','03',N'Cô đơn (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('16','01','01',N' Khởi đầu gian nan (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('16','01','02',N' Khởi đầu gian nan (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('16','01','03',N' Khởi đầu gian nan (3)','05/06/2022','Chap3.docx', 0)

Insert into CHAPTER values('16','02','01',N'Mất việc (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('16','02','02',N'Mất việc (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('16','02','03',N'Mất việc (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('17','01','01',N'  Cô gái đáng yêu thứ hai trong lớp (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('17','01','02',N'  Cô gái đáng yêu thứ hai trong lớp (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('17','01','03',N'  Cô gái đáng yêu thứ hai trong lớp (3)','05/07/2022','Chap3.docx', 0)

Insert into CHAPTER values('17','02','01',N'Bí mật của chúng tôi (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('17','02','02',N'Bí mật của chúng tôi (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('17','02','03',N'Bí mật của chúng tôi (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('17','03','01',N' Biệt danh (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('17','03','02',N' Biệt danh (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('17','03','03',N' Biệt danh (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('18','01','01',N'Bạo Thực Kỹ Thức Tỉnh (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('18','01','02',N'Bạo Thực Kỹ Thức Tỉnh (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('18','01','03',N'Bạo Thực Kỹ Thức Tỉnh (3)','05/07/2022','Chap3.docx', 0)

Insert into CHAPTER values('18','02','01',N'Quê Nhà Hoài Niệm (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('18','02','02',N'Quê Nhà Hoài Niệm (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('18','02','03',N'Quê Nhà Hoài Niệm (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('18','03','01',N' Thu Hoạch Với Hắc Liêm (1)','05/02/2022','Chap1.docx', 0)
Insert into CHAPTER values('18','03','02',N' Thu Hoạch Với Hắc Liêm (2)','05/02/2022','Chap2.docx', 0)
Insert into CHAPTER values('18','03','03',N' Thu Hoạch Với Hắc Liêm (3)','05/02/2022','Chap3.docx', 0)

Insert into CHAPTER values('19','01','01',N' Hội ngộ (1)','05/05/2022','Chap1.docx', 0)
Insert into CHAPTER values('19','01','02',N' Hội ngộ (2)','05/06/2022','Chap2.docx', 0)
Insert into CHAPTER values('19','01','03',N' Hội ngộ (3)','05/06/2022','Chap3.docx',0)

Insert into CHAPTER values('19','02','01',N'Người hầu gái trung thành (1)','05/12/2022','Chap1.docx', 0)
Insert into CHAPTER values('19','02','02',N'Người hầu gái trung thành (2)','05/12/2022','Chap2.docx', 0)
Insert into CHAPTER values('19','02','03',N'Người hầu gái trung thành (3)','05/12/2022','Chap3.docx', 0)

Insert into CHAPTER values('50','01','01',N' Cuộc gặp mặt (1)','05/05/2022','Chap1.docx', 1)
Insert into CHAPTER values('50','01','02',N' Cuộc gặp mặt (2)','05/06/2022','Chap2.docx', 1)
Insert into CHAPTER values('50','01','03',N' Cuộc gặp mặt (3)','05/06/2022','Chap3.docx',1)

Insert into CHAPTER values('50','02','01',N'Cuộc chia tay (1)','05/12/2022','Chap1.docx', 1)
Insert into CHAPTER values('50','02','02',N'Cuộc chia tay (2)','05/12/2022','Chap2.docx', 1)
Insert into CHAPTER values('50','02','03',N'Cuộc chia tay (3)','05/12/2022','Chap3.docx', 1)

Insert into CHAPTER values('51','01','01',N' Thử vận may (1)','05/05/2022','Chap1.docx', 1)
Insert into CHAPTER values('51','01','02',N' Thử vận may (2)','05/06/2022','Chap2.docx', 1)
Insert into CHAPTER values('51','01','03',N' Thử vận may (3)','05/06/2022','Chap3.docx',1)

Insert into CHAPTER values('51','02','01',N'Hình Hồng Tuyền (1)','05/12/2022','Chap1.docx', 1)
Insert into CHAPTER values('51','02','02',N'Hình Hồng Tuyền (2)','05/12/2022','Chap2.docx', 1)
Insert into CHAPTER values('51','02','03',N'Hình Hồng Tuyền (3)','05/12/2022','Chap3.docx', 1)

INSERT INTO CHAPTER (BOOKID, VOLID, CHAPID, CHAPNAME, PUBLISHDATE, CONTENTFILE)
VALUES
    ('20', '1', '1', N'Đệ đệ của ta là thiên tuyển chi tử', '22-06-2023', 'chap1_1_20.docx'),
  	('20', '1', '2', N'Con ta có Đại Đế chi tư', '22-06-2023', 'chap2_1_20.docx'),
    ('20', '1', '3', N'Có nội ứng, cấm giao dịch', '22-06-2023', 'chap3_1_20.docx'),
    ('20', '2', '1', N'Dốc lòng trở thành nhanh nhất nam nhân', '22-06-2023', 'chap1_2_20.docx'),
    ('20', '2', '2', N'Tiểu hài tử có thể có cái gì ý đồ xấu', '22-06-2023', 'chap2_2_20.docx'),
    ('20', '2', '3', N'Đại nhân tài lựa chọn, tiểu hài tử tất cả đều muốn', '22-06-2023', 'chap3_2_20.docx'),
    
    ('21', '1', '1', N'Màu đen đĩa quay', '22-06-2023', 'chap1_1_21.docx'),
  	('21', '1', '2', N'Nhặt xác người', '22-06-2023', 'chap2_1_21.docx'),
    ('21', '1', '3', N'Cường tráng', '22-06-2023', 'chap3_1_21.docx'),
    ('21', '2', '1', N'Linh Sự Các', '22-06-2023', 'chap1_2_21.docx'),
    ('21', '2', '2', N'Cái này tu luyện có chút cấp trên', '22-06-2023', 'chap2_2_21.docx'),
    ('21', '2', '3', N'Cuồng kéo cừu hận', '22-06-2023', 'chap3_2_21.docx'),
    
    ('22', '1', '1', N'Lập tức liền có thể lấy bật hack', '22-06-2023', 'chap1_1_22.docx'),
  	('22', '1', '2', N'Ta hi vọng có thể xin phép nghỉ', '22-06-2023', 'chap2_1_22.docx'),
    ('22', '1', '3', N'Hơi Thở của Sấm Sét', '22-06-2023', 'chap3_1_22.docx'),
    ('22', '2', '1', N'Mộ Dung Thanh Ảnh', '22-06-2023', 'chap1_2_22.docx'),
    ('22', '2', '2', N'Xin nghỉ phép sự tình ta là chăm chú', '22-06-2023', 'chap2_2_22.docx'),
    ('22', '2', '3', N'Linh năng vũ khí', '22-06-2023', 'chap3_2_22.docx'),
    
    ('23', '1', '1', N'Mỹ thực hệ thống', '22-06-2023', 'chap1_1_23.docx'),
  	('23', '1', '2', N'Thiên phú gia tăng', '22-06-2023', 'chap2_1_23.docx'),
    ('23', '1', '3', N'Ăn cơm', '22-06-2023', 'chap3_1_23.docx'),
    ('23', '2', '1', N'Ăn điên rồi', '22-06-2023', 'chap1_2_23.docx'),
    ('23', '2', '2', N'Một tô mì hối hận', '22-06-2023', 'chap2_2_23.docx'),
    ('23', '2', '3', N'Thu hoạch tương đối khá', '22-06-2023', 'chap3_2_23.docx'),
    
    ('24', '1', '1', N'Đại tiểu thư giật mình', '22-06-2023', 'chap1_1_24.docx'),
  	('24', '1', '2', N'Trân Bảo lâu', '22-06-2023', 'chap2_1_24.docx'),
    ('24', '1', '3', N'Giá trên trời dược dịch', '22-06-2023', 'chap3_1_24.docx'),
    ('24', '2', '1', N'Thiên hàng đĩa bánh', '22-06-2023', 'chap1_2_24.docx'),
    ('24', '2', '2', N'Về muộn', '22-06-2023', 'chap2_2_24.docx'),
    ('24', '2', '3', N'Trước mặt mọi người luyện dược', '22-06-2023', 'chap3_2_24.docx'),
    
    ('25', '1', '1', N'Cỏ! Ta nghĩ lùi quần!', '22-06-2023', 'chap1_1_25.docx'),
  	('25', '1', '2', N'Xuyên việt giả đồng liêu năm giây GG!', '22-06-2023', 'chap2_1_25.docx'),
    ('25', '1', '3', N'Xuyên việt giả trò gian cách chết!', '22-06-2023', 'chap3_1_25.docx'),
    ('25', '2', '1', N'Ngón tay vàng tới sổ! Nhân sinh máy mô phỏng!', '22-06-2023', 'chap1_2_25.docx'),
    ('25', '2', '2', N'Quần viên ước ao!', '22-06-2023', 'chap2_2_25.docx'),
    ('25', '2', '3', N'Một bước đi nhầm, như rơi xuống vực sâu!', '22-06-2023', 'chap3_2_25.docx'),
    
    ('26', '1', '1', N'Thế gian không muốn người sống', '22-06-2023', 'chap1_1_26.docx'),
  	('26', '1', '2', N'Đột phá', '22-06-2023', 'chap2_1_26.docx'),
    ('26', '1', '3', N'Loạn thế', '22-06-2023', 'chap3_1_26.docx'),
    ('26', '2', '1', N'Ăn tuyệt hậu', '22-06-2023', 'chap1_2_26.docx'),
    ('26', '2', '2', N'Bức bách', '22-06-2023', 'chap2_2_26.docx'),
    ('26', '2', '3', N'Bắn giết', '22-06-2023', 'chap3_2_26.docx'),
    
    ('27', '1', '1', N'Bắt đầu thu được Tiên Thiên Thánh Thể Đạo Thai!', '22-06-2023', 'chap1_1_27.docx'),
  	('27', '1', '2', N'Cẩu lợi sinh tử, há vì họa phúc tránh xu thế chi?', '22-06-2023', 'chap2_1_27.docx'),
    ('27', '1', '3', N'Còn xin tộc trưởng thay chúng ta làm chủ!', '22-06-2023', 'chap3_1_27.docx'),
    ('27', '2', '1', N'Dám tự tiện xông vào, một tên cũng không để lại!', '22-06-2023', 'chap1_2_27.docx'),
    ('27', '2', '2', N'Diệt tộc nhiệm vụ, phát hiện kim sắc tộc nhân!', '22-06-2023', 'chap2_2_27.docx'),
    ('27', '2', '3', N'Vị thứ nhất tộc nhân, Đại Đế chuyển thế!', '22-06-2023', 'chap3_2_27.docx'),
    
    ('28', '1', '1', N'Thiên phú thẻ', '22-06-2023', 'chap1_1_25.docx'),
  	('28', '1', '2', N'Thần Thoại cấp', '22-06-2023', 'chap2_1_25.docx'),
    ('28', '1', '3', N'Thần Bí Chi Nhãn', '22-06-2023', 'chap3_1_25.docx'),
    ('28', '2', '1', N'Ma thẻ quyết', '22-06-2023', 'chap1_2_25.docx'),
    ('28', '2', '2', N'Đào tạo không gian', '22-06-2023', 'chap2_2_25.docx'),
    ('28', '2', '3', N'Phu hóa đản, Đao Nhận Đường Lang', '22-06-2023', 'chap3_2_25.docx'),
    
    ('29', '1', '1', N'Đi thi', '22-06-2023', 'chap1_1_29.docx'),
  	('29', '1', '2', N'Ở tạm', '22-06-2023', 'chap2_1_29.docx'),
    ('29', '1', '3', N'Kinh hồn', '22-06-2023', 'chap3_1_29.docx'),
    ('29', '2', '1', N'Tay cụt', '22-06-2023', 'chap1_2_29.docx'),
    ('29', '2', '2', N'Nửa bức tranh chữ', '22-06-2023', 'chap2_2_29.docx'),
    ('29', '2', '3', N'Tiểu sinh', '22-06-2023', 'chap3_2_29.docx'),
    
    ('60', '1', '1', N'Thánh Thú Chiến Hồn', '20-06-2023', 'chap1_1_60.docx'),
  	('60', '1', '2', N'Vĩnh Hằng Luyện Ngục Phượng Hoàng', '20-06-2023', 'chap2_1_60.docx'),
    
    ('61', '1', '1', N'Thánh Thú Chiến Hồn', '20-06-2023', 'chap1_1_61.docx'),
  	('61', '1', '2', N'Vĩnh Hằng Luyện Ngục Phượng Hoàng', '20-06-2023', 'chap2_1_61.docx');
 
INSERT INTO BOOKMARK VALUES('1','1')
INSERT INTO BOOKMARK VALUES('2','6')
INSERT INTO BOOKMARK VALUES('3','5')
INSERT INTO BOOKMARK VALUES('4','5')
INSERT INTO BOOKMARK VALUES('5','4')
INSERT INTO BOOKMARK VALUES('2','3')
INSERT INTO BOOKMARK VALUES('5','1')
INSERT INTO BOOKMARK VALUES('6','3')
INSERT INTO BOOKMARK VALUES('9','2')
INSERT INTO BOOKMARK VALUES('3','2')
INSERT INTO BOOKMARK VALUES('7','4')
INSERT INTO BOOKMARK VALUES('1','3')
INSERT INTO BOOKMARK VALUES('3','1')
INSERT INTO BOOKMARK VALUES('2','5')
INSERT INTO BOOKMARK VALUES('7','6')
INSERT INTO BOOKMARK VALUES('4','2')
INSERT INTO BOOKMARK VALUES('9','3')

Insert into BOOKMARK values('10','10')
Insert into BOOKMARK values('10','11')
Insert into BOOKMARK values('10','12')
Insert into BOOKMARK values('10','13')
Insert into BOOKMARK values('10','14')

Insert into BOOKMARK values('11','10')
Insert into BOOKMARK values('11','12')
Insert into BOOKMARK values('11','14')
Insert into BOOKMARK values('11','15')
Insert into BOOKMARK values('11','16')

Insert into BOOKMARK values('12','13')
Insert into BOOKMARK values('12','15')
Insert into BOOKMARK values('12','17')
Insert into BOOKMARK values('12','18')
Insert into BOOKMARK values('12','19')

Insert into BOOKMARK values('13','13')
Insert into BOOKMARK values('13','14')
Insert into BOOKMARK values('13','16')
Insert into BOOKMARK values('13','17')
Insert into BOOKMARK values('13','19')

Insert into BOOKMARK values('14','10')
Insert into BOOKMARK values('14','12')
Insert into BOOKMARK values('14','14')
Insert into BOOKMARK values('14','16')
Insert into BOOKMARK values('14','18')

INSERT INTO BOOKMARK (USERID, BOOKID)
VALUES
    ('20', '20'),
    ('20', '21'),
    ('20', '22'),
    ('20', '23'),
    ('20', '24'),
    ('20', '25'),
	('21', '26'),
    ('21', '27'),
    ('21', '28'),
    ('21', '29'),
    ('21', '20'),
    ('21', '21'),
	('22', '22'),
    ('22', '23'),
    ('22', '24'),
    ('22', '25'),
    ('22', '26'),
    ('22', '27'),
    ('23', '28'),
    ('23', '29'),
    ('23', '20'),
    ('23', '21'),
    ('23', '22'),
    ('23', '23'),
    ('24', '24'),
    ('24', '25'),
    ('24', '26'),
    ('24', '28'),
    ('24', '29');

INSERT INTO BOOKMARK VALUES('30','31')
INSERT INTO BOOKMARK VALUES('30','33')
INSERT INTO BOOKMARK VALUES('30','34')
INSERT INTO BOOKMARK VALUES('30','35')
INSERT INTO BOOKMARK VALUES('30','30')

INSERT INTO BOOKMARK VALUES('31','30')
INSERT INTO BOOKMARK VALUES('31','31')
INSERT INTO BOOKMARK VALUES('31','32')
INSERT INTO BOOKMARK VALUES('31','33')
INSERT INTO BOOKMARK VALUES('31','34')

INSERT INTO BOOKMARK VALUES('32','34')
INSERT INTO BOOKMARK VALUES('32','33')
INSERT INTO BOOKMARK VALUES('32','32')
INSERT INTO BOOKMARK VALUES('32','31')
INSERT INTO BOOKMARK VALUES('32','30')

INSERT INTO BOOKMARK VALUES('33','33')
INSERT INTO BOOKMARK VALUES('33','31')
INSERT INTO BOOKMARK VALUES('33','30')
INSERT INTO BOOKMARK VALUES('33','34')
INSERT INTO BOOKMARK VALUES('33','35')

INSERT INTO BOOKMARK VALUES('34','31')
INSERT INTO BOOKMARK VALUES('34','32')
INSERT INTO BOOKMARK VALUES('34','33')
INSERT INTO BOOKMARK VALUES('34','34')
INSERT INTO BOOKMARK VALUES('34','35')

INSERT INTO BOOKMARK VALUES('35','31')
INSERT INTO BOOKMARK VALUES('35','33')
INSERT INTO BOOKMARK VALUES('35','35')
INSERT INTO BOOKMARK VALUES('35','32')
INSERT INTO BOOKMARK VALUES('35','34')

INSERT INTO READINGHISTORY VALUES ('1','1','1','1')
INSERT INTO READINGHISTORY VALUES ('1','2','2','2')
INSERT INTO READINGHISTORY VALUES ('2','2','2','2')
INSERT INTO READINGHISTORY VALUES ('2','3','1','1')
INSERT INTO READINGHISTORY VALUES ('3','4','2','2')
INSERT INTO READINGHISTORY VALUES ('4','5','2','1')
INSERT INTO READINGHISTORY VALUES ('5','6','1','1')
INSERT INTO READINGHISTORY VALUES ('6','5','2','2')
INSERT INTO READINGHISTORY VALUES ('7','4','1','1')
INSERT INTO READINGHISTORY VALUES ('8','3','2','1')
INSERT INTO READINGHISTORY VALUES ('9','2','1','2')
INSERT INTO READINGHISTORY VALUES ('8','1','2','1')
INSERT INTO READINGHISTORY VALUES ('7','2','2','2')
INSERT INTO READINGHISTORY VALUES ('5','2','1','1')
INSERT INTO READINGHISTORY VALUES ('3','6','2','2')
INSERT INTO READINGHISTORY VALUES ('7','1','2','1')
INSERT INTO READINGHISTORY VALUES ('1','5','2','1')

Insert into READINGHISTORY values('10','10','01','01')
Insert into READINGHISTORY values('10','11','02','01')
Insert into READINGHISTORY values('10','12','03','01')
Insert into READINGHISTORY values('10','13','01','02')
Insert into READINGHISTORY values('10','14','01','03')

Insert into READINGHISTORY values('11','11','01','01')
Insert into READINGHISTORY values('11','12','02','01')
Insert into READINGHISTORY values('11','13','03','01')
Insert into READINGHISTORY values('11','14','01','02')
Insert into READINGHISTORY values('11','15','01','03')

Insert into READINGHISTORY values('12','12','01','01')
Insert into READINGHISTORY values('12','13','02','01')
Insert into READINGHISTORY values('12','14','02','01')
Insert into READINGHISTORY values('12','15','01','02')
Insert into READINGHISTORY values('12','16','01','03')

Insert into READINGHISTORY values('13','13','01','01')
Insert into READINGHISTORY values('13','14','02','01')
Insert into READINGHISTORY values('13','15','02','01')
Insert into READINGHISTORY values('13','16','01','02')
Insert into READINGHISTORY values('13','17','01','03')

Insert into READINGHISTORY values('14','14','01','01')
Insert into READINGHISTORY values('14','15','02','01')
Insert into READINGHISTORY values('14','16','02','01')
Insert into READINGHISTORY values('14','17','01','02')
Insert into READINGHISTORY values('14','18','01','03')

INSERT INTO READINGHISTORY (USERID, BOOKID, VOLID, CHAPID)
VALUES
    ('20', '20', '1', '1'),
    ('20', '21', '1', '1'),
    ('20', '22', '1', '1'),
    ('20', '23', '1', '1'),
    ('20', '24', '1', '1'),
    ('20', '25', '1', '1'),
    ('21', '26', '1', '1'),
    ('21', '27', '1', '1'),
    ('21', '28', '1', '1'),
    ('21', '29', '1', '1'),
    ('21', '20', '1', '1'),
    ('21', '21', '1', '1'),
    ('22', '22', '1', '1'),
    ('22', '23', '1', '1'),
    ('22', '24', '1', '1'),
    ('22', '25', '1', '1'),
    ('22', '26', '1', '1'),
    ('22', '27', '1', '1'),
    ('23', '28', '1', '1'),
    ('23', '29', '1', '1'),
    ('23', '20', '1', '1'),
    ('23', '21', '1', '1'),
    ('23', '22', '1', '1'),
    ('23', '23', '1', '1'),
    ('24', '24', '1', '1'),
    ('24', '25', '1', '2'),
    ('24', '26', '1', '2'),
    ('24', '27', '1', '2'),
    ('24', '28', '1', '2'),
    ('24', '29', '1', '2');

INSERT INTO READINGHISTORY VALUES('30','30','1','3')
INSERT INTO READINGHISTORY VALUES('30','31','1','2')
INSERT INTO READINGHISTORY VALUES('30','32','1','1')
INSERT INTO READINGHISTORY VALUES('30','33','2','2')
INSERT INTO READINGHISTORY VALUES('30','34','2','2')

INSERT INTO READINGHISTORY VALUES('31','30','2','1')
INSERT INTO READINGHISTORY VALUES('31','31','2','2')
INSERT INTO READINGHISTORY VALUES('31','32','1','2')
INSERT INTO READINGHISTORY VALUES('31','33','2','1')
INSERT INTO READINGHISTORY VALUES('31','34','1','3')

INSERT INTO READINGHISTORY VALUES('32','34','1','1')
INSERT INTO READINGHISTORY VALUES('32','33','1','1')
INSERT INTO READINGHISTORY VALUES('32','32','1','1')
INSERT INTO READINGHISTORY VALUES('32','31','1','1')
INSERT INTO READINGHISTORY VALUES('32','30','1','1')

INSERT INTO READINGHISTORY VALUES('33','33','2','2')
INSERT INTO READINGHISTORY VALUES('33','31','2','2')
INSERT INTO READINGHISTORY VALUES('33','30','2','2')
INSERT INTO READINGHISTORY VALUES('33','34','2','2')
INSERT INTO READINGHISTORY VALUES('33','35','2','2')

INSERT INTO READINGHISTORY VALUES('34','31','1','2')
INSERT INTO READINGHISTORY VALUES('34','32','2','1')
INSERT INTO READINGHISTORY VALUES('34','33','1','2')
INSERT INTO READINGHISTORY VALUES('34','34','2','1')
INSERT INTO READINGHISTORY VALUES('34','35','1','2')

INSERT INTO READINGHISTORY VALUES('35','31','2','3')
INSERT INTO READINGHISTORY VALUES('35','33','2','1')
INSERT INTO READINGHISTORY VALUES('35','35','1','3')
INSERT INTO READINGHISTORY VALUES('35','32','1','1')
INSERT INTO READINGHISTORY VALUES('35','34','1','2')

INSERT INTO COMMENT (COMMENTID, BOOKID, USERID, CONTENTFILE, PUBLISHDATE, COMMENTSTATUS)
VALUES
    ('20', '20', '20', 'cmt20.docx', '23-07-2023', 1),
    ('21', '21', '20', 'cmt21.docx', '23-07-2023', 0),
    ('22', '22', '20', 'cmt22.docx', '23-07-2023', 0),
    ('23', '23', '20', 'cmt23.docx', '23-07-2023', 0),
    ('24', '24', '20', 'cmt24.docx', '23-07-2023', 0),
    ('25', '26', '21', 'cmt25.docx', '23-07-2023', 1),
    ('26', '27', '21', 'cmt26.docx', '23-07-2023', 0),
    ('27', '28', '21', 'cmt27.docx', '23-07-2023', 0),
    ('28', '29', '21', 'cmt28.docx', '23-07-2023', 0),
    ('29', '20', '21', 'cmt29.docx', '23-07-2023', 0),
    ('60', '22', '22', 'cmt60.docx', '23-07-2023', 1),
    ('61', '23', '22', 'cmt61.docx', '23-07-2023', 0),
    ('62', '24', '22', 'cmt62.docx', '23-07-2023', 0),
    ('63', '25', '22', 'cmt63.docx', '23-07-2023', 0),
    ('64', '26', '22', 'cmt64.docx', '23-07-2023', 0),
    ('65', '28', '23', 'cmt65.docx', '23-07-2023', 0),
    ('66', '29', '23', 'cmt66.docx', '23-07-2023', 0),
    ('67', '20', '23', 'cmt67.docx', '23-07-2023', 0),
    ('68', '21', '23', 'cmt68.docx', '23-07-2023', 0),
    ('69', '22', '23', 'cmt69.docx', '23-07-2023', 0),
    ('100', '24', '24', 'cmt100.docx', '23-07-2023', 0),
    ('101', '25', '24', 'cmt101.docx', '23-07-2023', 0),
    ('102', '26', '24', 'cmt102.docx', '23-07-2023', 0),
    ('103', '28', '24', 'cmt103.docx', '23-07-2023', 0),
    ('104', '29', '24', 'cmt104.docx', '23-07-2023', 0);

INSERT INTO COMMENT VALUES ('1','1','9','cmt1.docx','21-07-2003','0')
INSERT INTO COMMENT VALUES ('2','2','8','cmt2.docx','22-07-2023','1')
INSERT INTO COMMENT VALUES ('3','3','7','cmt3.docx','20-07-2023','0')
INSERT INTO COMMENT VALUES ('4','4','6','cmt4.docx','1-07-2023','0')
INSERT INTO COMMENT VALUES ('5','5','5','cmt5.docx','1-07-2023','0')
INSERT INTO COMMENT VALUES ('6','6','4','cmt6.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('7','5','3','cmt7.docx','21-07-2023','1')
INSERT INTO COMMENT VALUES ('8','4','2','cmt8.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('9','3','1','cmt9.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('41','2','2','cmt41.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('42','1','3','cmt42.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('43','2','4','cmt43.docx','21-07-2023','0')

Insert into COMMENT values('10_1','10','10','cmt10_1.docx','1/2/2023',0)
Insert into COMMENT values('10_2','11','10','cmt10_2.docx','1/2/2023',0)
Insert into COMMENT values('10_3','12','10','cmt10_3.docx','1/2/2023',0)
Insert into COMMENT values('10_4','13','10','cmt10_4.docx','1/2/2023',0)
Insert into COMMENT values('10_5','14','10','cmt10_5.docx','1/2/2023',1)

Insert into COMMENT values('11_1','10','11','cmt11_1.docx','1/2/2023',0)
Insert into COMMENT values('11_2','11','11','cmt11_2.docx','1/2/2023',0)
Insert into COMMENT values('11_3','12','11','cmt11_3.docx','1/2/2023',0)
Insert into COMMENT values('11_4','13','11','cmt11_4.docx','1/2/2023',0)
Insert into COMMENT values('11_5','14','11','cmt11_5.docx','1/2/2023',1)

Insert into COMMENT values('12_1','10','12','cmt12_1.docx','1/2/2023',0)
Insert into COMMENT values('12_2','11','12','cmt12_2.docx','1/2/2023',0)
Insert into COMMENT values('12_3','12','12','cmt12_3.docx','1/2/2023',0)
Insert into COMMENT values('12_4','13','12','cmt12_4.docx','1/2/2023',0)
Insert into COMMENT values('12_5','14','12','cmt12_5.docx','1/2/2023',1)

Insert into COMMENT values('13_1','10','13','cmt13_1.docx','1/2/2023',0)
Insert into COMMENT values('13_2','11','13','cmt13_2.docx','1/2/2023',0)
Insert into COMMENT values('13_3','12','13','cmt13_3.docx','1/2/2023',0)
Insert into COMMENT values('13_4','13','13','cmt13_4.docx','1/2/2023',0)
Insert into COMMENT values('13_5','14','13','cmt13_5.docx','1/2/2023',1)

Insert into COMMENT values('14_1','10','14','cmt14_1.docx','1/2/2023',0)
Insert into COMMENT values('14_2','11','14','cmt14_2.docx','1/2/2023',0)
Insert into COMMENT values('14_3','12','14','cmt14_3.docx','1/2/2023',0)
Insert into COMMENT values('14_4','13','14','cmt14_4.docx','1/2/2023',0)
Insert into COMMENT values('14_5','14','14','cmt14_5.docx','1/2/2023',1)

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
INSERT INTO COMMENT VALUES ('80','32','32','cmt32_5.docx','21-07-2023','1')
INSERT INTO COMMENT VALUES ('81','31','30','cmt30_1.docx','21-07-2023','0')
INSERT INTO COMMENT VALUES ('82','32','34','cmt34_3.docx','21-07-2023','0')

INSERT INTO RATING VALUES('1','1','rating1.docx',5)
INSERT INTO RATING VALUES('2','2','rating2.docx',5)
INSERT INTO RATING VALUES('2','3','rating3.docx',5)
INSERT INTO RATING VALUES('3','4','rating4.docx',3)
INSERT INTO RATING VALUES('3','5','rating5.docx',3)
INSERT INTO RATING VALUES('4','6','rating6.docx',2)
INSERT INTO RATING VALUES('5','7','rating7.docx',1)
INSERT INTO RATING VALUES('6','8','rating8.docx',4)

Insert into RATING values('10','10','rating10_1.docx',5)
Insert into RATING values('11','11','rating11_1.docx',5)
Insert into RATING values('12','12','rating12_1.docx',5)
Insert into RATING values('13','13','rating13_1.docx',5)
Insert into RATING values('14','14','rating14_1.docx',5)
Insert into RATING values('15','10','rating15_1.docx',5)
Insert into RATING values('16','11','rating16_1.docx',5)
Insert into RATING values('17','12','rating17_1.docx',5)
Insert into RATING values('18','13','rating18_1.docx',5)
Insert into RATING values('19','14','rating19_1.docx',5)

INSERT INTO RATING (BOOKID, USERID, CONTENTFILE, SCORE)
VALUES
    ('20', '22', 'rating20.docx', 5.0),
    ('21', '22', 'rating21.docx', 5.0),
    ('22', '22', 'rating22.docx', 5.0),
    ('23', '23', 'rating23.docx', 5.0),
    ('24', '23', 'rating24.docx', 5.0),
    ('25', '24', 'rating25.docx', 5.0),
    ('26', '24', 'rating26.docx', 5.0),
    ('27', '24', 'rating27.docx', 5.0),
    ('28', '24', 'rating28.docx', 5.0),
    ('29', '24', 'rating29.docx', 5.0);

INSERT INTO RATING VALUES ('30', '32', 'rating30.docx', 5.0),
						  ('31', '31', 'rating31.docx', 5.0),
						  ('32', '30', 'rating32.docx', 5.0),
						  ('33', '33', 'rating33.docx', 5.0),
						  ('34', '34', 'rating34.docx', 5.0),
						  ('35', '35', 'rating35.docx', 5.0);

INSERT INTO NOTIFY VALUES('1','1','Noti1.txt')
--dòng 1: id sách
--dòng 2: id vol
--dòng 3:id chương mới

INSERT INTO NOTIFY VALUES('2','2','Noti2.txt')
--dòng 1: id sách

INSERT INTO NOTIFY VALUES('3','3','Noti3.txt')
--dòng 1: id sách

INSERT INTO NOTIFY VALUES('4','4','Noti4.txt')
--dòng 1: id người dùng
--dòng 2: id comment

INSERT INTO NOTIFY VALUES('5','5','Noti5.txt')
--dòng 1: id sách
--không cần id người dùng bởi khi ấn vào đó, nó sẽ direct mình đến peding list

INSERT INTO NOTIFY VALUES('6','2','Noti6.txt')
INSERT INTO NOTIFY VALUES('7','4','Noti7.txt')
INSERT INTO NOTIFY VALUES('8','3','Noti8.txt')
--thử nghiệm sách bị từ chối

INSERT INTO NOTIFY VALUES('9','2','Noti9.txt')
INSERT INTO NOTIFY VALUES('40','1','Noti40.txt')

INSERT INTO NOTIFY values('10','1','Noti10.txt')
INSERT INTO NOTIFY values('11','2','Noti11.txt')
INSERT INTO NOTIFY values('12','3','Noti12.txt')
INSERT INTO NOTIFY values('13','4','Noti13.txt')
INSERT INTO NOTIFY values('14','5','Noti14.txt')

INSERT INTO NOTIFY (NOTIFYID, TYPEID, CONTENT)
VALUES
    ('20', '1', 'noti20.txt'),
    ('21', '2', 'noti21.txt'),
    ('22', '4', 'noti22.txt'),
    ('23', '5', 'noti23.txt');

INSERT INTO NOTIFY VALUES('30','1','Noti30.txt')
--dòng 1: id sách
--dòng 2: id vol
--dòng 3:id chương mới

INSERT INTO NOTIFY VALUES('31','2','Noti31.txt')
--dòng 1: id sách

INSERT INTO NOTIFY VALUES('32','3','Noti32.txt')
--dòng 1: id sách

INSERT INTO NOTIFY VALUES('33','4','Noti33.txt')
--dòng 1: id người dùng
--dòng 2: id comment

INSERT INTO NOTIFY VALUES('34','5','Noti34.txt')
--dòng 1: id sách
--không cần id người dùng bởi khi ấn vào đó, nó sẽ direct mình đến peding list

INSERT INTO NOTIFY VALUES('35','4','Noti35.txt')
INSERT INTO NOTIFY VALUES('36','1','Noti36.txt')
INSERT INTO NOTIFY VALUES('37','1','Noti37.txt')
INSERT INTO NOTIFY VALUES('38','1','Noti38.txt')
INSERT INTO NOTIFY VALUES('39','1','Noti39.txt')

INSERT INTO NOTIFYOFUSER VALUES ('1','1')
INSERT INTO NOTIFYOFUSER VALUES ('1','2')
INSERT INTO NOTIFYOFUSER VALUES ('1','3')
INSERT INTO NOTIFYOFUSER VALUES ('1','4')
INSERT INTO NOTIFYOFUSER VALUES ('1','5')
INSERT INTO NOTIFYOFUSER VALUES ('1','6')
INSERT INTO NOTIFYOFUSER VALUES ('1','7')
INSERT INTO NOTIFYOFUSER VALUES ('1','8')
INSERT INTO NOTIFYOFUSER VALUES ('1','9')

INSERT INTO NOTIFYOFUSER VALUES ('40','1')
INSERT INTO NOTIFYOFUSER VALUES ('40','2')
INSERT INTO NOTIFYOFUSER VALUES ('40','3')
INSERT INTO NOTIFYOFUSER VALUES ('40','4')
INSERT INTO NOTIFYOFUSER VALUES ('40','5')
INSERT INTO NOTIFYOFUSER VALUES ('40','6')
INSERT INTO NOTIFYOFUSER VALUES ('40','7')
INSERT INTO NOTIFYOFUSER VALUES ('40','8')
INSERT INTO NOTIFYOFUSER VALUES ('40','9')

INSERT INTO NOTIFYOFUSER VALUES ('2','1')
INSERT INTO NOTIFYOFUSER VALUES ('6','1')
INSERT INTO NOTIFYOFUSER VALUES ('9','5')

INSERT INTO NOTIFYOFUSER VALUES ('3','2')
INSERT INTO NOTIFYOFUSER VALUES ('8','8')

INSERT INTO NOTIFYOFUSER VALUES ('4','1')
INSERT INTO NOTIFYOFUSER VALUES ('4','2')
INSERT INTO NOTIFYOFUSER VALUES ('4','7')

INSERT INTO NOTIFYOFUSER VALUES ('7','1')
INSERT INTO NOTIFYOFUSER VALUES ('7','2')
INSERT INTO NOTIFYOFUSER VALUES ('7','7')

INSERT INTO NOTIFYOFUSER VALUES ('5','1')
INSERT INTO NOTIFYOFUSER VALUES ('5','2')
INSERT INTO NOTIFYOFUSER VALUES ('5','7')

Insert into NOTIFYOFUSER values('10','10')
Insert into NOTIFYOFUSER values('12','11')
Insert into NOTIFYOFUSER values('13','12')
Insert into NOTIFYOFUSER values('14','13')
Insert into NOTIFYOFUSER values('11','14')

INSERT INTO NOTIFYOFUSER (NOTIFYID, USERID)
VALUES
    ('20', '22'),
    ('20', '23'),
    ('20', '24'),
    ('21', '22'),
    ('22', '22'),
    ('23', '23'),
    ('23', '24');
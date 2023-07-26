SET DATEFORMAT DMY;
INSERT INTO ACCOUNT (USERID, USERNAME, ACCOUNTNAME, ACCOUNTPASSWORD, BIO, JOBS, FAVORITES, DOB, AVATARURL, COVERURL, ACCOUNTSTATUS, REGDATE, PERMISSION, SDT)
VALUES
    ('20', 'thinh1', N'Thịnh Oce', '12345678', 'Bio text1', 'Software Dev', 'Sports, Music', '15-06-2003', 'img20.jpg', 'pcover20.jpg', 0, '01-06-2023', 0, '1234567890'),
    ('21', 'thinh2', N'Thịnh Too', '12345678', 'Bio text2', 'Designer', 'Movies, Food', '20-10-2003', 'img21.jpg', 'pcover21.jpg', 1, '02-06-2023', 0, '9876543210'),
    ('22', 'thinh3', N'Thịnh Tree', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '12-03-2003', 'img22.jpg', 'pcover22.jpg', 0, '03-06-2023', 0, '4567890123'),
    ('23', 'thinh4', N'Thịnh For', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '13-03-2003', 'img23.jpg', 'pcover23.jpg', 0, '03-06-2023', 1, '4567890124'),
    ('24', 'thinh5', N'Thịnh Fine', '12345678', 'Bio text3', 'Marketing', 'Travel, Photography', '14-03-2003', 'img24.jpg', 'pcover24.jpg', 0, '03-06-2023', 2, '4567890125');



SET DATEFORMAT DMY;
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


SET DATEFORMAT DMY;
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
    
   
 INSERT INTO GENRE (GENREID, GENRENAME)
VALUES
    ('20', N'Huyền huyễn'),
    ('21', N'Vô sỉ'),
    ('22', N'Hệ thống'),
    ('23', N'Cơ trí'),
    ('24', N'Đô thị'),
    ('25', N'Góc nhìn nam'),
    ('26', N'Vô địch'),
    ('27', N'Xuyên qua'),
    ('28', N'Xây dựng thế lực'),
    ('29', N'Toàn dân'),
    ('60', N'Tiên hiệp');
	
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
    ('29', '60'),
    ('60', '20'),
    ('61', '26'),
    ('61', '60');
	
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

SET DATEFORMAT DMY;
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

INSERT INTO NOTIFY (NOTIFYID, TYPEID, CONTENT)
VALUES
    ('20', '0', 'noti20.txt'),
    ('21', '1', 'noti21.txt'),
    ('22', '3', 'noti22.txt'),
    ('23', '4', 'noti23.txt');

INSERT INTO NOTIFYOFUSER (NOTIFYID, USERID)
VALUES
    ('20', '22'),
    ('20', '23'),
    ('20', '24'),
    ('21', '22'),
    ('22', '22'),
    ('23', '23'),
    ('23', '24');

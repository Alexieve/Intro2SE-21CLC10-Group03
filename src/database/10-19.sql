use HappiNovel
set DATEFORMAT DMY;

Insert into ACCOUNT values('10','solo10',N'BacHuyenTienTon10','yahsure10','What is love?',N'Quý bửu 10',N'hen......suyển','21/12/2012','img10.jpg','0','1/1/2022','0','6663628')--User không có viết sách--
Insert into ACCOUNT values('11','solo11',N'BacHuyenTienTon11','yahsure11','Baby dont hurt me',N'Quý bửu 11',N'hen......suyển','21/12/2012','img11.jpg','1','1/1/2022','0','6663628') --User bị ban--
Insert into ACCOUNT values('12','solo12',N'BacHuyenTienTon12','yahsure12','Dont hurt me',N'Quý bửu 12',N'hen......suyển','21/12/2012','img12.jpg','0','1/1/2022','0','6663628') --User có viết sách--
Insert into ACCOUNT values('13','solo13',N'BacHuyenTienTon13','yahsure13','No more',N'Quý bửu 13',N'hen......suyển','21/12/2012','img13.jpg','0','1/1/2022','1','6663628') --Mod--
Insert into ACCOUNT values('14','solo14',N'BacHuyenTienTon14','yahsure14','What is love? Baby dont hurt me, dont hurt me, no more',N'Quý bửu 14',N'hen......suyển','21/12/2012','img14.jpg','0','1/1/2022','2','6663628') --Admin--

Insert into BOOK values('10','Kimi to Boku', '12', 'note10.docx','summary10.docx','3/5/2022','coverImg10.jpg','1', 0)
Insert into BOOK values('11','Fake Holy Sword Story', '12', 'note11.docx','summary11.docx','3/5/2022','coverImg11.jpg','1', 0)
Insert into BOOK values('12','Owari no Seraph', '13', 'note12.docx','summary12.docx','3/5/2022','coverImg12.jpg','1', 0)
Insert into BOOK values('13','Kawaii Onnanoko', '14', 'note13.docx','summary13.docx','3/5/2022','coverImg13.jpg','1', 0)
Insert into BOOK values('14','Demon King & Hero', '14', 'note14.docx','summary14.docx','23/5/2022','coverImg14.jpg','2', 0)
Insert into BOOK values('15','Random', '12', 'note15.docx','summary15.docx','20/5/2022','coverImg15.jpg','0', 0)
Insert into BOOK values('16',N'Mình Chỉ', '12', 'note16.docx','summary16.docx','20/7/2022','coverImg16.jpg','1', 0)
Insert into BOOK values('17',N'Làm bạn với cô gái đáng yêu thứ hai lớp', '13', 'note17.docx','summary17.docx','20/11/2022','coverImg17.jpg','1', 0)
Insert into BOOK values('18','Boushoku no Berserk', '14', 'note18.docx','summary18.docx','20/12/2022','coverImg18.jpg','2', 0)
Insert into BOOK values('19','Tearmoon Empire', '12', 'note19.docx','summary19.docx','20/01/2022','coverImg19.jpg','0', 0)

Insert into GENRE values('10', N'Hành động')
Insert into GENRE values('11', N'Phiêu lưu')
Insert into GENRE values('12', N'Kịch tính')
Insert into GENRE values('13', N'Thế giới khác')
Insert into GENRE values('14', N'Dàn mỹ nhân')
Insert into GENRE values('15', N'Huyền bí')
Insert into GENRE values('16', N'Hài hước')
Insert into GENRE values('17', N'Lãng mạn')
Insert into GENRE values('18', N'School life')
Insert into GENRE values('19', N'Bi kịch')
Insert into GENRE values('50', N'Quân đội')
Insert into GENRE values('51', N'Thiếu niên')
Insert into GENRE values('52', N'Đời sống')
Insert into GENRE values('53', N'Ma thuật')
Insert into GENRE values('54', N'Tâm lý')

Insert into BOOKGENRES values('10','10')
Insert into BOOKGENRES values('10','13')
Insert into BOOKGENRES values('10','16')
Insert into BOOKGENRES values('10','17')
Insert into BOOKGENRES values('10','51')


Insert into BOOKGENRES values('11','16')
Insert into BOOKGENRES values('11','17')
Insert into BOOKGENRES values('11','53')

Insert into BOOKGENRES values('12','16')
Insert into BOOKGENRES values('12','17')
Insert into BOOKGENRES values('12','18')
Insert into BOOKGENRES values('12','51')

Insert into BOOKGENRES values('13','10')
Insert into BOOKGENRES values('13','12')
Insert into BOOKGENRES values('13','50')
Insert into BOOKGENRES values('13','18')

Insert into BOOKGENRES values('14','16')
Insert into BOOKGENRES values('14','13')
Insert into BOOKGENRES values('14','17')
Insert into BOOKGENRES values('14','52')

Insert into BOOKGENRES values('15','11')
Insert into BOOKGENRES values('15','12')
Insert into BOOKGENRES values('15','15')
Insert into BOOKGENRES values('15','54')
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

Insert into CHAPTER values('10','01','01',N'Thiếu niên cùng ma nữ (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('10','01','02',N'Thiếu niên cùng ma nữ (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('10','01','03',N'Thiếu niên cùng ma nữ (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('10','02','01',N'Người mà ta/bản tiểu thư gặp gỡ là... (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('10','02','02',N'Người mà ta/bản tiểu thư gặp gỡ là... (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('10','02','03',N'Người mà ta/bản tiểu thư gặp gỡ là... (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('10','03','01',N' Đồ vật thắt lại vận mệnh (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('10','03','02',N' Đồ vật thắt lại vận mệnh (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('10','03','03',N' Đồ vật thắt lại vận mệnh (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('11','01','01',N'Thanh mai trúc mã (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('11','01','02',N'Thanh mai trúc mã (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('11','01','03',N'Thanh mai trúc mã (3)','05/07/2022','Chap3.docx')

Insert into CHAPTER values('11','02','01',N'Đi thôi! (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('11','02','02',N'Đi thôi! (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('11','02','03',N'Đi thôi! (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('11','03','01',N' Nụ cười tỏa nắng (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('11','03','02',N' Nụ cười tỏa nắng (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('11','03','03',N' Nụ cười tỏa nắng (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('12','01','01',N' Khi cô gái dùng mưu (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('12','01','02',N' Khi cô gái dùng mưu (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('12','01','03',N' Khi cô gái dùng mưu (3)','05/07/2022','Chap3.docx')

Insert into CHAPTER values('12','02','01',N'Thỏa thuận (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('12','02','02',N'Thỏa thuận (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('12','02','03',N'Thỏa thuận (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('12','03','01',N' Thiên đường (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('12','03','02',N' Thiên đường (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('12','03','03',N' Thiên đường (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('13','01','01',N' Trùm lớp. (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('13','01','02',N' Trùm lớp. (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('13','01','03',N' Trùm lớp. (3)','05/07/2022','Chap3.docx')

Insert into CHAPTER values('13','02','01',N'Shinoa Hiiragi. (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('13','02','02',N'Shinoa Hiiragi. (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('13','02','03',N'Shinoa Hiiragi. (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('13','03','01',N' Vờn chuột (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('13','03','02',N' Vờn chuột (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('13','03','03',N' Vờn chuột (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('14','01','01',N' Dọn dẹp (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('14','01','02',N' Dọn dẹp (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('14','01','03',N' Dọn dẹp (3)','05/06/2022','Chap3.docx')

Insert into CHAPTER values('14','02','01',N'Khu căn cứ (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('14','02','02',N'Khu căn cứ (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('14','02','03',N'Khu căn cứ (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('15','01','01',N' Yêu cầu của Mitsuki (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('15','01','02',N' Yêu cầu của Mitsuki (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('15','01','03',N' Yêu cầu của Mitsuki (3)','05/06/2022','Chap3.docx')

Insert into CHAPTER values('15','02','01',N'Cô đơn (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('15','02','02',N'Cô đơn (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('15','02','03',N'Cô đơn (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('16','01','01',N' Khởi đầu gian nan (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('16','01','02',N' Khởi đầu gian nan (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('16','01','03',N' Khởi đầu gian nan (3)','05/06/2022','Chap3.docx')

Insert into CHAPTER values('16','02','01',N'Mất việc (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('16','02','02',N'Mất việc (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('16','02','03',N'Mất việc (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('17','01','01',N'  Cô gái đáng yêu thứ hai trong lớp (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('17','01','02',N'  Cô gái đáng yêu thứ hai trong lớp (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('17','01','03',N'  Cô gái đáng yêu thứ hai trong lớp (3)','05/07/2022','Chap3.docx')

Insert into CHAPTER values('17','02','01',N'Bí mật của chúng tôi (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('17','02','02',N'Bí mật của chúng tôi (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('17','02','03',N'Bí mật của chúng tôi (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('17','03','01',N' Biệt danh (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('17','03','02',N' Biệt danh (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('17','03','03',N' Biệt danh (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('18','01','01',N'Bạo Thực Kỹ Thức Tỉnh (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('18','01','02',N'Bạo Thực Kỹ Thức Tỉnh (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('18','01','03',N'Bạo Thực Kỹ Thức Tỉnh (3)','05/07/2022','Chap3.docx')

Insert into CHAPTER values('18','02','01',N'Quê Nhà Hoài Niệm (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('18','02','02',N'Quê Nhà Hoài Niệm (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('18','02','03',N'Quê Nhà Hoài Niệm (3)','05/12/2022','Chap3.docx')

Insert into CHAPTER values('18','03','01',N' Thu Hoạch Với Hắc Liêm (1)','05/02/2022','Chap1.docx')
Insert into CHAPTER values('18','03','02',N' Thu Hoạch Với Hắc Liêm (2)','05/02/2022','Chap2.docx')
Insert into CHAPTER values('18','03','03',N' Thu Hoạch Với Hắc Liêm (3)','05/02/2022','Chap3.docx')

Insert into CHAPTER values('19','01','01',N' Hội ngộ (1)','05/05/2022','Chap1.docx')
Insert into CHAPTER values('19','01','02',N' Hội ngộ (2)','05/06/2022','Chap2.docx')
Insert into CHAPTER values('19','01','03',N' Hội ngộ (3)','05/06/2022','Chap3.docx')

Insert into CHAPTER values('19','02','01',N'Người hầu gái trung thành (1)','05/12/2022','Chap1.docx')
Insert into CHAPTER values('19','02','02',N'Người hầu gái trung thành (2)','05/12/2022','Chap2.docx')
Insert into CHAPTER values('19','02','03',N'Người hầu gái trung thành (3)','05/12/2022','Chap3.docx')

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
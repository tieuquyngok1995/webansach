use ProjectWeb;
Create Table Account(
Id nvarchar(50) not null,
name nvarchar(max) not null,
email nvarchar(max) not null,
passWord nvarchar(max) not null,
sex varchar (3) not null,
phone nvarchar(12) ,
address nvarchar (max) ,
lever int,
PRIMARY KEY (Id)
);
--Drop table Account;

use ProjectWeb;


--Drop table SanPham;

use ProjectWeb;
create table ChiTietSanPham(idCTSP varchar(10) not null primary key,
idSP varchar(10) not null,
tenChiTiet nvarchar(20),
giamGia bigint ,
moTa nvarchar(50) );
--Drop table ChiTietSanPham;

use ProjectWeb;
create table LoaiSanPham(idLoaiSP varchar(10) not null primary key,
tenLoaiSP nvarchar(50)not null,
idSP varchar(10) not null);
--Drop table LoaiSanPham;

use ProjectWeb;
Create table FileUpLoad (
ID   int not null IDENTITY,
FileName  VARCHAR(50) not null,
Url vaRCHAR(255),
photo image  ,
PRIMARY KEY (ID)
);
--Drop table FileUpLoad;

use ProjectWeb;
create table Tksp(
idsp varchar(10) primary key ,
SoLuong int ,
CONSTRAINT TestTK FOREIGN KEY (idsp) REFERENCES SanPham(idSP),
);
 -- Drop table Tksp;

use ProjectWeb;
create table menuAdmin (
id int not null primary key,
ten nvarchar (50),
PARENT_ID int,
); 
INSERT INTO menuAdmin VALUES (1,'Qu?n lí tài kho?n',0);
INSERT INTO menuAdmin VALUES (2,'Ngý?i dùng',1);
INSERT INTO menuAdmin VALUES (3,'Nhân Viên',0);
INSERT INTO menuAdmin VALUES (4,'Qu?n lí hàng hóa',1);
INSERT INTO menuAdmin VALUES (5,'S?n ph?m',1);
INSERT INTO menuAdmin VALUES (6,'Giá',1);
INSERT INTO menuAdmin VALUES (7,'S? lý?ng',1);
INSERT INTO menuAdmin VALUES (8,'S?p di?n ra',1);
INSERT INTO menuAdmin VALUES (9,'Qu?n lí ðõn hàng',0);
INSERT INTO menuAdmin VALUES (10,'Ð? thanh toán',1);
INSERT INTO menuAdmin VALUES (11,'Chýa thanh toán',1);
INSERT INTO menuAdmin VALUES (12,'H?y',1);
INSERT INTO menuAdmin VALUES (13,'Th?ng Kê',0);

 -- Drop table menuAdmin;

insert into SanPham values('1',N'Dell Inspiron 5459, Intel Core i3, Ram 4GB','1',12499000,230,'1','images/dell-inspiron-5459.jpg')
insert into SanPham values('2',N'Hoa 8/3','2',120000,230,'2','Img/photo1_360x360.jpg')
insert into SanPham values('3',N'Hoa 8/3','3',180000,230,'3','Img/photo13_360x360.jpg')
insert into SanPham values('4',N'Hoa tet','4',500000,230,'3','Img/photo4_360x360.jpg')

insert into ChiTietSanPham values('1','1',N'giam gia',0.05,N'qua le')
insert into ChiTietSanPham values('2','2',N'giam gia',0.10,N'qua 8/3')
insert into ChiTietSanPham values('3','3',N'giam gia',0.10,N'qua 8/3')
insert into ChiTietSanPham values('4','4',N'giam gia',0.10,N'qua tet')

insert into SanPham values('5',N'Hoa Ngh? Thu?t','5',250000,230,'1','Img/photo8_360x360.jpg')
insert into SanPham values('6',N'Gi? hoa ngh? thu?t','6',270000,230,'2','Img/photo14_360x360.jpg')
insert into SanPham values('7',N'Bó hoa','3',300000,230,'7','Img/photo15_360x360.jpg')
insert into SanPham values('8',N'Hoa tet','4',170000,230,'8','Img/photo3_360x360.jpg')

insert into ChiTietSanPham values('5','5',N'giam gia',0.05,N'qua le')
insert into ChiTietSanPham values('6','6',N'giam gia',0.10,N'qua 8/3')
insert into ChiTietSanPham values('7','7',N'giam gia',0.10,N'qua 8/3')
insert into ChiTietSanPham values('8','8',N'giam gia',0.10,N'qua tet')

ELECT * FROM Kho
insert into Kho values('1','KhoSP1','Thu Duc','9/5/2015','4500000')
insert into Kho values('2','KhoSP2','Q9','3/8/2015','3000000')
insert into Kho values('3','KhoNguyenLieu1','Binh Thanh','29/10/2015','2500000')
insert into Kho values('4','KhoNguyenLieu2','Q1','15/12/2015','8500000')
insert into Kho values('5','KhoXuat','Phu Nhuan','28/11/2015','400000')
DELETE FROM Kho WHERE maKho = '1'
insert into NhaSX values('1','Dell01','Thu Duc','9/5/2015','Laptop')
insert into NhaSX values('2','HP02','Q3','3/8/2015','May Ban')
insert into NhaSX values('3','Aser01','Go Vap','29/10/2015','Man Hinh')
insert into NhaSX values('4','Levono','Q7','15/12/2015','Phu Kien')
insert into NhaSX values('5','Apple','Tan Phi','28/11/2015','Linh Kien')
SELECT * FROM NhaSX
insert into TinTuc values('1','Khuyen mai thang 1','khuyen mai giam gia mung nam moi','Giam gia','25/12/2016')
insert into TinTuc values('2','Giam gia noel','giam 20% gia laptop chao noel','moi tay','18/11/2016')
insert into TinTuc values('3','Tang qua Tet','Tang vocher 500000 nhan dip nam moi','nong sot','31/12/2016')
insert into TinTuc values('4','Ky niem 2 nam','Giam gia 1 so san pham','Doi qua','7/3/2017')
insert into TinTuc values('5','Tri an','Tang qua cho khach hang than thiet','Muon ngu','3/8/2018')
SELECT * FROM TinTuc
insert into SuKien values('1','Khuyen mai thang 1','khuyen mai giam gia mung nam moi','Giam gia','25/12/2016')
insert into SuKien values('2','Giam gia noel','giam 20% gia laptop chao noel','moi tay','18/11/2016')
insert into SuKien values('3','Tang qua Tet','Tang vocher 500000 nhan dip nam moi','nong sot','31/12/2016')
insert into SuKien values('4','Ky niem 2 nam','Giam gia 1 so san pham','Doi qua','7/3/2017')
insert into SuKien values('5','Tri an','Tang qua cho khach hang than thiet','Muon ngu','3/8/2018')
SELECT * FROM DonHang
insert into DonHang values('DH1','user1','Laptop Dell','01','15000000')
insert into DonHang values('DH2','user2','May Ban HP','01','800000')
insert into DonHang values('DH3','user1','O Cung','5','800000')
insert into DonHang values('DH4','user3','Man Hinh','7','8500000')
insert into DonHang values('DH5','user4','May Ban Dell','2','1600000')
SELECT * FROM DonHang2
insert into DonHang2 values('DH1','user1','Laptop Dell','01','15000000','25/12/2016')
insert into DonHang2 values('DH2','user2','May Ban HP','01','800000','14/12/2016')
insert into DonHang2 values('DH3','user1','O Cung','5','800000','18/12/2016')
insert into DonHang2 values('DH4','user3','Man Hinh','7','8500000','01/12/2016')
insert int0o DonHang2 values('DH5','user4','May Ban Dell','2','1600000','3/12/2016')
SELECT * FROM SanPham
 create table SanPham(
idSP varchar(10) not null primary key ,
tenSP nvarchar(20),
idCTSP varchar(10) not null,
gia bigint not null,
soLuong int not null,
idLoaiSP varchar(10) not null,
img nvarchar(50) not null);
insert into SanPham values('lt01','Dell Inspiron 5459, Intel Core i3, Ram 4GB','ctlt',12499000,230,'lt','Dell',''images/dell-inspiron-5459.jpg','src')
insert into SanPham values('lt02','HP Pavilion x360, Intel Core i3, Ram 4GB','ctlt02',12999000,30,'lt','HP','images/hp-pavilion-x360','src')
insert into SanPham values('lt03','Lenovo Yoga 500, Intel Core i5, Ram 4GB','ctlt03',13499000,15,'lt','Lenovo','images/lenovo-yoga-500.jpg','src')
insert into SanPham values('lt04','Asus X541UV i5, Intel Core i5, Ram 4 GB','ctlt04',13799000,22,'lt','Asus','images/asus-x541.jpg','src')
insert into SanPham values('lt05','Acer Aspire E5, Intel Core i5, Ram 4 GB','ctlt05',12799000,17,'lt','Acer','images/acer-aspire-e540.jpg','src')
insert into SanPham values('lt06','HP Pavilion 15,Intel Core i5,Ram 4GB','ctlt06',15499000,19,'lt','HP','images/hp-pavilion-15.jpg','src')
insert into SanPham values('lt07','Asus A541UV, Intel Core i7, Ram 4GB','ctlt07',16499000,11,'lt','Asus','images/asus-a541uv.jpg','src')
insert into SanPham values('lt08','Dell Inspiron 5378, Intel Core i5, Ram 4GB','ctlt08',18999000,21,'lt','Dell','images/dell-inspiron-5378.jpg','src')
insert into SanPham values('lt09','Asus Zenbook UX, Intel Core i5, Ram 4GB','ctlt09',19999000,15,'lt','Asus','images/asus-ux310uq.jpg','src')
insert into SanPham values('lt10','HP Pavilion 14, Intel, A-Series, Ram 4 GB','ctlt10',11999000,31,'lt','HP','images/hp-pavilion-14.jpg','src')
insert into SanPham values('lt11','Dell Inspiron N5567, Intel Core i5, Ram 8 GB','ctlt11',16790000,27,'lt','Dell','images/dell-inspiron-n5567.jpg','src')
insert into SanPham values('lt12','Dell Inspiron N5559, Intel Core i7, Ram 8 GB','ctlt12',17900000,20,'lt','Dell','images/dell-inspiron-n5559.jpg','src')
insert into SanPham values('lt13','Dell Vostro V3559, Intel Core i7, Ram 8 GB','ctlt13',17900000,28,'lt','Dell','images/dell-vostro-v3559.jpg','src')
insert into SanPham values('lt14','Macbook Air 13 MMGF2ZP/A, Intel Core i5, Ram 8 GB','ctlt14',23999000,31,'lt','Apple','images/mac-air-13.jpg','src')
insert into SanPham values('lt15','MSI GL62 6QE-1223XVN, Intel Core i5, Ram 8 GB','ctlt15',18990000,33,'lt','MSI','images/msi-gl62-6qe-1223xvn.jpg','src')
insert into SanPham values('lt16','Asus TP301UA-C4147T/13.3FHD Touch, Intel Core i5, Ram 4 GB','ctlt16',15490000,25,'lt','Asus','images/asus-tp301ua-c4147t133fhd-touch.jpg','src')
insert into SanPham values('lt17','Lenovo ThinkPad X250, Intel Core i5, Ram 4 GB','ctlt17',23990000,19,'lt','Lenovo','images/lenovo-thinkpad-x250.jpg','src')
insert into SanPham values('lt18','HP Envy 13-d020TU, Intel Core i5, Ram 8 GB','ctlt18',18990000,21,'lt','HP','images/hp-envy-13.jpg','src')
insert into SanPham values('lt19','Acer R3-471T, Intel Core i3, Ram 8 GB','ctlt19',10490000,30,'lt','Acer','images/acer-r3-471t.jpg','src')
insert into SanPham values('lt20','HP Pavilion 11, Intel Celeron, Ram 2 GB','ctlt20',5990000,34,'lt','HP','images/hp-pavilion-11.jpg','src')
insert into SanPham values('lt21','Asus E200HA-FD0043TS, Intel Atom x5-Z8350 , Ram 2 GB','ctlt21',4990000,41,'lt','Asus','images/asus-e200ha-fd0043ts.jpg','src')
insert into SanPham values('mb01','Dell Vostro 3650,Intel Core-i3, Ram 4GB','ctmb01',10090000,30,'mb','Dell','images/dell-vostro-365.jpg','src')
insert into SanPham values('mb02','Acer Aspire Revo, Intel Core-i3, Ram 4GB','ctmb02',10799000,34,'mb','Acer','images/acer-revo-rl85.jpg','src')
insert into SanPham values('mb03','Lenovo Ideacen, Intel Core-i3, Ram 4 GB','ctmb03',11999000,25,'mb','Lenovo','images/lenovo-ideacentre-300.jpg','src')
insert into SanPham values('mb04','HP Pavilion, Intel Core i5, Ram 4 GB','ctmb04',12399000,26,'mb','HP','images/HP PAVILION-032l.jpg','src')
insert into SanPham values('mb05','Dell Inspiron, Intel Core i5, Ram 8 GB','ctmb05',13999000,16,'mb','Dell','images/dell-inspiron-3650','src')
insert into SanPham values('mb06','PC HP 260-p056L, Intel Pentium J3710, Ram 2 GB','ctmb06',6190000,36,'mb','HP','images/hp-slimlinee.jpg','src')
insert into SanPham values('mb07','PC HP Pavilion 510-p006L, Intel Core i3, Ram 4 GB','ctmb07',8790000,26,'mb','HP','images/hp-pavilion-510-p005lL.jpg','src')
insert into SanPham values('mb08','PC Lenovo IdeaCentre, Intel Pentium J3710, Ram 4 GB','ctmb08',7890000,25,'mb','Lenovo'','images/ideacentre-ic300sS.jpg','src')
insert into SanPham values('mb09','PC Lenovo AIO 300-22ISU F0BX00J0VN, Intel Core i3, Ram 4 GB','ctmb09',14990000,25,'mb','Lenovo','images/Lenovo AIO 300-22ISU F0BX00J0VN.jpg','src')
insert into SanPham values('mb10','PC Lenovo IdeaCentre, Intel Pentium J3710, Ram 4 GB','ctmb10',12190000,25,'mb','Asus'','images/asus-aio-v220icuk-bc028mM.jpg','src')

insert into SanPham values('pk01','Sac may tinh bang Surface Pro 2 - Sac Sur','ctpk01',899000,15,'pk','Apple','images/sac-sufa.jpg','src')
insert into SanPham values('pk02','Chuot Ajazz the dark knight - adk','ctpk02',199000,50,'pk','Asus','images/chuot.jpg','src')
insert into SanPham values('pk03','Ban phim Led 7 mau Flying color K8 - k8','ctpk03',249000,100,'pk','Dell','images/banphim.jpg','src')
insert into SanPham values('pk04','USB Sony vaio 16Gb inox','ctpk04',99000,100,'pk','Sony','images/usb.jpg','src')
insert into SanPham values('pk05','Sac may tinh bang Surface Pro 3 - Sac Sur','ctpk05',1399000,25,'pk','Apple','images/sac-sufa3.jpg','src')
insert into SanPham values('pk06','Mouse Pad','ctpk06',10000,200,'pk','Asus','images/mousepad-nhoo.jpg','src')
insert into SanPham values('pk07','Mouse Pad Zadez','ctpk07',25000,150,'pk','Asus','images/19462_mousepadd.jpg','src')
insert into SanPham values('pk08','KB + mouse Logitech MK200','ctpk08',290000,150,'pk','Asus','images/19462_mousepadd.jpg','src')
insert into SanPham values('pk09','Ban phim Logitech Bluetooth K480','ctpk09',800000 ,50,'pk','Logitech','images/19439_logitech-k4800.jpg','src')
insert into SanPham values('pk10','Ban phim Logitech Type','ctpk10',1690000,50,'pk','Logitech','images/25079_logitech-type-blackk.jpg','src')

insert into SanPham values('lk01','Bo vi xu ly Intel Pentium G4500-3.5GHZ','ctlk1',1999000,50,'lk','Intel','images/intel-pentium-g4500.jpg','src')
insert into SanPham values('lk02','Mainboard ASUS H110M-D D3','ctlk2',1699000,63,'lk','Asus','images/mainboard-asus.jpg','src')
insert into SanPham values('lk03','Ram Kingston Fury Hyperx Black4GB Bus:2133MHZ','ctlk3',899000,36,'lk','Kingston','images/ram-kingston-fury.jpg','src')
insert into SanPham values('lk04','VGA Gigabute GV-N1080XTREME-8GD - GTX 1080','ctlk4',20699000,45,'pk','Gigabyte','images/VGA GIGABYTE GV-N1080.jpg','src')
insert into SanPham values('lk05','Sound Card Creative Sound Blaster Audigy RX 7.1 - PCIE','ctlk5',2599000,45,'lk','Asus','images/Sound Card Creative.jpg','src')
insert into SanPham values('lk06','Bo vi xu ly CPU AMD Athlon II X4 845','ctlk06',1580000,30,'lk','AMD','images/amd-athlon-iiI.jpg','src')
insert into SanPham values('lk07','Bo vi xu ly CPU Core I7-6700','ctlk07',7550000,30,'lk','Intel','images/22866_core-i7-6thh.jpg','src')
insert into SanPham values('lk08','Card man hinh Gigabyte 3GB N1060 G1 Gaming-3GD','ctlk08',6850000,35,'lk','Gigabyte','images/14206_1060-3gbb.jpg','src')
insert into SanPham values('lk09','Card man hinh Asus 4GB Dual-RX480-O4G','ctlk09',76032000,35,'lk09','Asus','images/10279_dual-rx480-o4gG.jpg','src')
insert into SanPham values('lk10','Card man hinh Gigabyte 1050Ti Windforce OC 4GB','ctlk10',4575000,35,'lk10','Gigabyte','images/ti-windforce-oc-4gb-squaree.jpg','src')

insert into SanPham values('tblt01','HDD WD Caviar Blue 1TB','cttblt01',1299000,70,'tblt','Caviar','images/hdd-wd-caviar-blue-1tb.jpg','src')
insert into SanPham values('tblt02','WD Scorpio Blue 500GB','cttblt02',1099000,70,'tblt','Scorpio','images/wd-scorpio-blue-500gb.jpg','src')
insert into SanPham values('tblt03','SSD Kingston HyperX Fury 120GB','cttblt03',1399000,70,'tblt','Kingston','images/ssd-kingston-hyperx-fury.jpg','src')
insert into SanPham values('tblt04','WD Scorpio Blue 500GB','cttblt04',1099000,50,'tblt','Kingston','images/ssd-kingmax.jpg','src')
insert into SanPham values('tblt05','SSD Sandisk Plus 240GB','cttblt05',2099000,50,'tblt','Kingston','images/ssd-sandisk-plus-240gb.jpg','src')
insert into SanPham values('tblt06','HDD Transcend 500GB StoreJet H3+Box 2.5"','cttblt06',1280000,30,'tblt','Transcend','images/StoreJet H3.jpg','src')
insert into SanPham values('tblt07','HDD Seagate 1TB Expansion Portable 3.0, 2.5"','cttblt07',1585000 ,30,'tblt','Seagate','images/28536_expansion-portablee.jpg','src')
insert into SanPham values('tblt08','HDD Seagate 1TB Backup Plus 3.0, 2.5"','cttblt08',1640000,30,'tblt','Seagate','images/8656_backup-plus-2-55.jpg','src')
insert into SanPham values('tblt09','HDD Transcend 1TB M3B+Box 2.5"','cttblt09',1600000,30,'tblt','Seagate','images/23383_m3-bluee.jpg','src')
insert into SanPham values('tblt10','SSD Transcend External ESD400 128GB','cttblt10',1670000,30,'tblt','Seagate','images/8775_esd4000.jpg','src')

insert into SanPham values('mh01','Dell U2414H - 23.8" UltraSharp','ctmh01',5499000,20,'mh','Dell','images/dell-23-8-u2414h.jpg','src')
insert into SanPham values('mh02','Samsung LED Curved LS27E510CS/XV - 27"','ctmh02',5999000,20,'mh','Samsung','images/samsung-lcd-led.jpg','src')
insert into SanPham values('mh03','HP 27es-T3M87AA - 27"','ctmh03',5399000,30,'mh','HP','images/hp-27es_t3m87aa-3.jpg','src')
insert into SanPham values('mh04','LG LED IPS 29UM68-P Curved - 29"','ctmh04',7099000,30,'mh','LG','images/lg-led-ips-29um68-p-.jpg','src')
insert into SanPham values('mh05','Samsung LED Curved LS24E510CS/XV','ctmh05',5499000,30,'mh','LG','images/samsung-lcd-led-23-6.jpg','src')
insert into SanPham values('mh06','Man hinh LCD Philips 25" 257E7QDSW','ctmh06',3890000,40,'mh','Philips','images/qdsw_61-_fp-global-0011.jpg','src')
insert into SanPham values('mh07','Man hinh LCD Haier 18.5" H1865V','ctmh07',1550000,40,'mh','Haier','images/haierr.jpg','src')
insert into SanPham values('mh08','LCD Philips 18.5" 193V5LSB','ctmh08',1650000,40,'mh','Philips','images/Philips.jpg','src')
insert into SanPham values('mh09','Màn hình LCD AOC 19.5" E2070SWN','ctmh09',1685000,40,'mh','AOC','images/AOC.jpg','src')
insert into SanPham values('mh10','Màn hình LCD Acer 18.5" EB192Q','ctmh10',1690000,40,'mh','Acer','images/acer.jpgs','src')
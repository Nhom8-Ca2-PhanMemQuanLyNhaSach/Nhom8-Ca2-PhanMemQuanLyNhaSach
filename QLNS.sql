/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     10/27/2018 2:26:11 PM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_HOADON') and o.name = 'FK_CT_HOADO_CT_HOADON_HOADON')
alter table CT_HOADON
   drop constraint FK_CT_HOADO_CT_HOADON_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_HOADON') and o.name = 'FK_CT_HOADO_CT_HOADON_HANGHOA')
alter table CT_HOADON
   drop constraint FK_CT_HOADO_CT_HOADON_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_PHIEUNHAP') and o.name = 'FK_CT_PHIEU_CT_PHIEUN_HANGHOA')
alter table CT_PHIEUNHAP
   drop constraint FK_CT_PHIEU_CT_PHIEUN_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_PHIEUNHAP') and o.name = 'FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA')
alter table CT_PHIEUNHAP
   drop constraint FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HANGHOA') and o.name = 'FK_HANGHOA_RELATIONS_LOAIHANG')
alter table HANGHOA
   drop constraint FK_HANGHOA_RELATIONS_LOAIHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HANGHOA') and o.name = 'FK_HANGHOA_RELATIONS_KHUYENMA')
alter table HANGHOA
   drop constraint FK_HANGHOA_RELATIONS_KHUYENMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_RELATIONS_NHANVIEN')
alter table HOADON
   drop constraint FK_HOADON_RELATIONS_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_RELATIONS_KHACHHAN')
alter table HOADON
   drop constraint FK_HOADON_RELATIONS_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHACHHANG') and o.name = 'FK_KHACHHAN_RELATIONS_LOAIKHAC')
alter table KHACHHANG
   drop constraint FK_KHACHHAN_RELATIONS_LOAIKHAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHOMNGUOIDUNG_NV') and o.name = 'FK_NHOMNGUO_NHOMNGUOI_NHANVIEN')
alter table NHOMNGUOIDUNG_NV
   drop constraint FK_NHOMNGUO_NHOMNGUOI_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHOMNGUOIDUNG_NV') and o.name = 'FK_NHOMNGUO_NHOMNGUOI_NHOMNGUO')
alter table NHOMNGUOIDUNG_NV
   drop constraint FK_NHOMNGUO_NHOMNGUOI_NHOMNGUO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANQUYEN') and o.name = 'FK_PHANQUYE_PHANQUYEN_NHOMNGUO')
alter table PHANQUYEN
   drop constraint FK_PHANQUYE_PHANQUYEN_NHOMNGUO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANQUYEN') and o.name = 'FK_PHANQUYE_PHANQUYEN_DM_MANHI')
alter table PHANQUYEN
   drop constraint FK_PHANQUYE_PHANQUYEN_DM_MANHI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAP') and o.name = 'FK_PHIEUNHA_RELATIONS_NHACUNGC')
alter table PHIEUNHAP
   drop constraint FK_PHIEUNHA_RELATIONS_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAP') and o.name = 'FK_PHIEUNHA_RELATIONS_NHANVIEN')
alter table PHIEUNHAP
   drop constraint FK_PHIEUNHA_RELATIONS_NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_HOADON')
            and   name  = 'CT_HOADON2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_HOADON.CT_HOADON2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_HOADON')
            and   name  = 'CT_HOADON_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_HOADON.CT_HOADON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CT_HOADON')
            and   type = 'U')
   drop table CT_HOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_PHIEUNHAP')
            and   name  = 'CT_PHIEUNHAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_PHIEUNHAP.CT_PHIEUNHAP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_PHIEUNHAP')
            and   name  = 'CT_PHIEUNHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_PHIEUNHAP.CT_PHIEUNHAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CT_PHIEUNHAP')
            and   type = 'U')
   drop table CT_PHIEUNHAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DM_MANHINH')
            and   type = 'U')
   drop table DM_MANHINH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HANGHOA')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index HANGHOA.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HANGHOA')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index HANGHOA.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HANGHOA')
            and   type = 'U')
   drop table HANGHOA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADON')
            and   type = 'U')
   drop table HOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHACHHANG')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHACHHANG.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHACHHANG')
            and   type = 'U')
   drop table KHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHUYENMAI')
            and   type = 'U')
   drop table KHUYENMAI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIHANGHOA')
            and   type = 'U')
   drop table LOAIHANGHOA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIKHACHHANG')
            and   type = 'U')
   drop table LOAIKHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHACUNGCAP')
            and   type = 'U')
   drop table NHACUNGCAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHOMNGUOIDUNG')
            and   type = 'U')
   drop table NHOMNGUOIDUNG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHOMNGUOIDUNG_NV')
            and   name  = 'NHOMNGUOIDUNG_NV2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHOMNGUOIDUNG_NV.NHOMNGUOIDUNG_NV2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHOMNGUOIDUNG_NV')
            and   name  = 'NHOMNGUOIDUNG_NV_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHOMNGUOIDUNG_NV.NHOMNGUOIDUNG_NV_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHOMNGUOIDUNG_NV')
            and   type = 'U')
   drop table NHOMNGUOIDUNG_NV
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANQUYEN')
            and   name  = 'PHANQUYEN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANQUYEN.PHANQUYEN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANQUYEN')
            and   name  = 'PHANQUYEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANQUYEN.PHANQUYEN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHANQUYEN')
            and   type = 'U')
   drop table PHANQUYEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAP')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAP.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAP')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAP.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAP')
            and   type = 'U')
   drop table PHIEUNHAP
go

/*==============================================================*/
/* Table: CT_HOADON                                             */
/*==============================================================*/
create table CT_HOADON (
   MAHD                 nchar(5)             not null,
   MAHH                 nchar(5)             not null,
   SOLUONG_BAN          int                  null,
   DONGIA_BAN           float                null,
   constraint PK_CT_HOADON primary key (MAHD, MAHH)
)
go

/*==============================================================*/
/* Index: CT_HOADON_FK                                          */
/*==============================================================*/




create nonclustered index CT_HOADON_FK on CT_HOADON (MAHD ASC)
go

/*==============================================================*/
/* Index: CT_HOADON2_FK                                         */
/*==============================================================*/




create nonclustered index CT_HOADON2_FK on CT_HOADON (MAHH ASC)
go

/*==============================================================*/
/* Table: CT_PHIEUNHAP                                          */
/*==============================================================*/
create table CT_PHIEUNHAP (
   MAHH                 nchar(5)             not null,
   MAPG                 nchar(5)             not null,
   SOLUONG_NHAP         int                  null,
   DONGIA_NHAP          float                null,
   constraint PK_CT_PHIEUNHAP primary key (MAHH, MAPG)
)
go

/*==============================================================*/
/* Index: CT_PHIEUNHAP_FK                                       */
/*==============================================================*/




create nonclustered index CT_PHIEUNHAP_FK on CT_PHIEUNHAP (MAHH ASC)
go

/*==============================================================*/
/* Index: CT_PHIEUNHAP2_FK                                      */
/*==============================================================*/




create nonclustered index CT_PHIEUNHAP2_FK on CT_PHIEUNHAP (MAPG ASC)
go

/*==============================================================*/
/* Table: DM_MANHINH                                            */
/*==============================================================*/
create table DM_MANHINH (
   MAMANHINH            nchar(5)             not null,
   TENMANHINH           nvarchar(50)         null,
   constraint PK_DM_MANHINH primary key (MAMANHINH)
)
go

/*==============================================================*/
/* Table: HANGHOA                                               */
/*==============================================================*/
create table HANGHOA (
   MAHH                 nchar(5)             not null,
   MALOAI_HH            nchar(5)             null,
   MAKHUYENMAI          nchar(5)             null,
   TENHH                nvarchar(30)         null,
   SOLUONGTON           int                  null,
   GIATIEN              float                null,
   NOIDUNG              nvarchar(50)         null,
   constraint PK_HANGHOA primary key (MAHH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_6_FK on HANGHOA (MALOAI_HH ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_7_FK on HANGHOA (MAKHUYENMAI ASC)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MAHD                 nchar(5)             not null,
   MANV                 nchar(5)             null,
   MAKH                 nchar(5)             null,
   NGAYLAP              datetime             null,
   TONGTHANHTIEN        float                null,
   constraint PK_HOADON primary key (MAHD)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_2_FK on HOADON (MANV ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_3_FK on HOADON (MAKH ASC)
go

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   MAKH                 nchar(5)             not null,
   MALOAI_KH            nchar(5)             null,
   TENKH                nvarchar(30)         null,
   DIACHI_KH            nvarchar(50)         null,
   SDT_KH               nvarchar(11)         null,
   constraint PK_KHACHHANG primary key (MAKH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_4_FK on KHACHHANG (MALOAI_KH ASC)
go

/*==============================================================*/
/* Table: KHUYENMAI                                             */
/*==============================================================*/
create table KHUYENMAI (
   MAKHUYENMAI          nchar(5)             not null,
   TENKHUYENMAI         nvarchar(30)         null,
   TILEGIAMGIA          float                null,
   constraint PK_KHUYENMAI primary key (MAKHUYENMAI)
)
go

/*==============================================================*/
/* Table: LOAIHANGHOA                                           */
/*==============================================================*/
create table LOAIHANGHOA (
   MALOAI_HH            nchar(5)             not null,
   TENLOAI_HH           nvarchar(30)         null,
   constraint PK_LOAIHANGHOA primary key (MALOAI_HH)
)
go

/*==============================================================*/
/* Table: LOAIKHACHHANG                                         */
/*==============================================================*/
create table LOAIKHACHHANG (
   MALOAI_KH            nchar(5)             not null,
   TENLOAI_KH           nvarchar(30)         null,
   CHIETKHAU_KH         float                null,
   constraint PK_LOAIKHACHHANG primary key (MALOAI_KH)
)
go

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP (
   MANCC                nchar(5)             not null,
   TENNCC               nvarchar(30)         null,
   DIACHI_NCC           nvarchar(50)         null,
   SDT_NCC              nvarchar(11)         null,
   constraint PK_NHACUNGCAP primary key (MANCC)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 nchar(5)             not null,
   MATKHAU              nvarchar(10)         null,
   TENNV                nvarchar(30)         null,
   DIACHI_NV            nvarchar(50)         null,
   SDT_NV               nvarchar(11)         null,
   constraint PK_NHANVIEN primary key (MANV)
)
go

/*==============================================================*/
/* Table: NHOMNGUOIDUNG                                         */
/*==============================================================*/
create table NHOMNGUOIDUNG (
   MANHOM               nchar(5)             not null,
   TENNHOM              nvarchar(50)         null,
   constraint PK_NHOMNGUOIDUNG primary key (MANHOM)
)
go

/*==============================================================*/
/* Table: NHOMNGUOIDUNG_NV                                      */
/*==============================================================*/
create table NHOMNGUOIDUNG_NV (
   MANV                 nchar(5)             not null,
   MANHOM               nchar(5)             not null,
   GHICHU               nvarchar(50)         null,
   constraint PK_NHOMNGUOIDUNG_NV primary key nonclustered (MANV, MANHOM)
)
go

/*==============================================================*/
/* Index: NHOMNGUOIDUNG_NV_FK                                   */
/*==============================================================*/




create nonclustered index NHOMNGUOIDUNG_NV_FK on NHOMNGUOIDUNG_NV (MANV ASC)
go

/*==============================================================*/
/* Index: NHOMNGUOIDUNG_NV2_FK                                  */
/*==============================================================*/




create nonclustered index NHOMNGUOIDUNG_NV2_FK on NHOMNGUOIDUNG_NV (MANHOM ASC)
go

/*==============================================================*/
/* Table: PHANQUYEN                                             */
/*==============================================================*/
create table PHANQUYEN (
   MANHOM               nchar(5)             not null,
   MAMANHINH            nchar(5)             not null,
   COQUYEN              nvarchar(50)         null,
   constraint PK_PHANQUYEN primary key nonclustered (MANHOM, MAMANHINH)
)
go

/*==============================================================*/
/* Index: PHANQUYEN_FK                                          */
/*==============================================================*/




create nonclustered index PHANQUYEN_FK on PHANQUYEN (MANHOM ASC)
go

/*==============================================================*/
/* Index: PHANQUYEN2_FK                                         */
/*==============================================================*/




create nonclustered index PHANQUYEN2_FK on PHANQUYEN (MAMANHINH ASC)
go

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create table PHIEUNHAP (
   MAPG                 nchar(5)             not null,
   MANV                 nchar(5)             null,
   MANCC                nchar(5)             null,
   NGAYNHAP             datetime             null,
   TONGTHANHTIEN_NHAP   float                null,
   constraint PK_PHIEUNHAP primary key (MAPG)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_9_FK on PHIEUNHAP (MANV ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_10_FK on PHIEUNHAP (MANCC ASC)
go

alter table CT_HOADON
   add constraint FK_CT_HOADO_CT_HOADON_HOADON foreign key (MAHD)
      references HOADON (MAHD)
go

alter table CT_HOADON
   add constraint FK_CT_HOADO_CT_HOADON_HANGHOA foreign key (MAHH)
      references HANGHOA (MAHH)
go

alter table CT_PHIEUNHAP
   add constraint FK_CT_PHIEU_CT_PHIEUN_HANGHOA foreign key (MAHH)
      references HANGHOA (MAHH)
go

alter table CT_PHIEUNHAP
   add constraint FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA foreign key (MAPG)
      references PHIEUNHAP (MAPG)
go

alter table HANGHOA
   add constraint FK_HANGHOA_RELATIONS_LOAIHANG foreign key (MALOAI_HH)
      references LOAIHANGHOA (MALOAI_HH)
go

alter table HANGHOA
   add constraint FK_HANGHOA_RELATIONS_KHUYENMA foreign key (MAKHUYENMAI)
      references KHUYENMAI (MAKHUYENMAI)
go

alter table HOADON
   add constraint FK_HOADON_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table HOADON
   add constraint FK_HOADON_RELATIONS_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table KHACHHANG
   add constraint FK_KHACHHAN_RELATIONS_LOAIKHAC foreign key (MALOAI_KH)
      references LOAIKHACHHANG (MALOAI_KH)
go

alter table NHOMNGUOIDUNG_NV
   add constraint FK_NHOMNGUO_NHOMNGUOI_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table NHOMNGUOIDUNG_NV
   add constraint FK_NHOMNGUO_NHOMNGUOI_NHOMNGUO foreign key (MANHOM)
      references NHOMNGUOIDUNG (MANHOM)
go

alter table PHANQUYEN
   add constraint FK_PHANQUYE_PHANQUYEN_NHOMNGUO foreign key (MANHOM)
      references NHOMNGUOIDUNG (MANHOM)
go

alter table PHANQUYEN
   add constraint FK_PHANQUYE_PHANQUYEN_DM_MANHI foreign key (MAMANHINH)
      references DM_MANHINH (MAMANHINH)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_RELATIONS_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_RELATIONS_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go



GO
/*==============================================================*/
/* Nhập Liệu :  DM_MANHINH                                     */
/*==============================================================*/
INSERT INTO DM_MANHINH VALUES 
('MH001',N'MÀN HÌNH 1'),
('MH002',N'MÀN HÌNH 2'),
('MH003',N'MÀN HÌNH 3'),
('MH004',N'MÀN HÌNH 4'),
('MH005',N'MÀN HÌNH 5'),
('MH006',N'MÀN HÌNH 6'),
('MH007',N'MÀN HÌNH 7')
GO


/*==============================================================*/
/* Nhập Liệu :  NHOMNGUOIDUNG                                         */
/*==============================================================*/
INSERT INTO NHOMNGUOIDUNG VALUES 
('MN001',N'QUẢN LÝ'),
('MN002',N'THỦ KHO'),
('MN003',N'NHÂN VIÊN BÁN HÀNG')
GO


/*==============================================================*/
/* Nhập Liệu :  PHANQUYEN                                     */
/*==============================================================*/
INSERT INTO PHANQUYEN VALUES 
('MN001','MH001',N'XEM, XÓA, SỬA'),
('MN001','MH002',N'XEM, XÓA, SỬA'),
('MN001','MH003',N'XEM, XÓA, SỬA'),
('MN001','MH004',N'XEM, XÓA, SỬA'),
('MN001','MH005',N'XEM, XÓA, SỬA'),
('MN001','MH006',N'XEM, XÓA, SỬA'),
('MN001','MH007',N'XEM, XÓA, SỬA'),
('MN002','MH001',N'XEM, XÓA, SỬA'),
('MN002','MH002',N'XEM, XÓA, SỬA'),
('MN002','MH003',N'XEM, XÓA, SỬA'),
('MN002','MH005',N'XEM'),
('MN003','MH001',N'XEM, XÓA, SỬA'),
('MN003','MH006',N'XEM'),
('MN003','MH007',N'XEM')
GO

/*==============================================================*/
/* Nhập Liệu :  NHANVIEN                                          */
/*==============================================================*/
INSERT INTO NHANVIEN VALUES 
('NV001','123',N'TỪ HỒNG PHƯỢNG',N'23/7 NGUYỄN THỊ MINH KHAI','012188066'),
('NV002','123',N'LÂM MỸ QUỲNH',N'26/8 NGUYỄN THỊ THẬP','03268895'),
('NV003','123',N'LƯU THỊ HOÀNG MỸ',N'59/12 ĐIỆN BIÊN PHỦ','0160589'),
('NV004','123',N'NGUYỄN THỊ THỦY VY',N'1 NGUYỄN ĐÌNH CHIỂU','0968345'),
('NV005','123',N'NÔNG TRUNG BỬU',N'2/7 HAI BÀ TRƯNG','02689456'),
('NV006','123',N'TRẦN THANH KHOA',N'5 NGUYỄN TRÃI','01256923')
GO


/*==============================================================*/
/* Nhập Liệu :  NHOMNGUOIDUNG_NV                                       */
/*==============================================================*/
INSERT INTO NHOMNGUOIDUNG_NV VALUES 
('NV001','MN001',N'CHỨC VỤ QUẢN LÝ'),
('NV002','MN001',N'CHỨC VỤ QUẢN LÝ'),
('NV003','MN002',N'CHỨC VỤ THỦ KHO'),
('NV004','MN002',N'CHỨC VỤ THỦ KHO'),
('NV005','MN003',N'CHỨC VỤ NHÂN VIÊN'),
('NV006','MN003',N'CHỨC VỤ NHÂN VIÊN')
GO

/*==============================================================*/
/* Nhập Liệu :  NHACUNGCAP                                    */
/*==============================================================*/
INSERT INTO NHACUNGCAP VALUES 
('NCC01',N'NHÀ XUẤT BẢN KIM ĐỒNG',N'1 TRẦN XUÂN SOẠN','023625698'),
('NCC02',N'NHÀ XUẤT BẢN HOA HỌC TRÒ',N'6 BẠCH MAI','023625698'),
('NCC03',N'NHÀ XUẤT BẢN TRẺ',N'2 ĐỒNG NAI','023625698'),
('NCC04',N'NHÀ XUẤT BẢN MỰC TÍM',N'16 LÊ LỢI','023625698'),
('NCC05',N'NHÀ XUẤT BẢN TUỔI TRẺ',N'1 TRẦN XUÂN SOẠN','023625698'),
('NCC06',N'NHÀ CUNG CẤP VĂN PHÒNG PHẨM',N'25 LÊ LAI','023625698')
GO

/*==============================================================*/
/* Nhập Liệu :  PHIEUNHAP                            */
/*==============================================================*/
SET DATEFORMAT DMY
INSERT INTO PHIEUNHAP VALUES 
('PN001','NV001','NCC01','25/03/2018',NULL),
('PN002','NV005','NCC03','25/10/2018',NULL),
('PN003','NV003','NCC04','25/05/2018',NULL),
('PN004','NV004','NCC05','25/07/2018',NULL),
('PN005','NV002','NCC03','05/08/2018',NULL)

/*==============================================================*/
/* Nhập Liệu :  KHUYENMAI                                   */
/*==============================================================*/
INSERT INTO KHUYENMAI VALUES 
('KM001',N'GIẢM GIÁ 10%','0.1'),
('KM002',N'GIẢM GIÁ 20%','0.2'),
('KM003',N'GIẢM GIÁ 30%','0.3'),
('KM004',N'KHÔNG GIẢM GIÁ','0')
GO

/*==============================================================*/
/* Nhập Liệu :  LOAIHANGHOA                                    */
/*==============================================================*/
INSERT INTO LOAIHANGHOA VALUES 
('LHH01',N'SÁCH'),
('LHH02',N'VĂN PHÒNG PHẨM')
GO

/*==============================================================*/
/* Nhập Liệu :  HANGHOA                                   */
/*==============================================================*/
INSERT INTO HANGHOA VALUES 
('HH001','LHH01','KM001',N'HÔM NAY TÔI THẤT TÌNH','50','12000',N'Sách hay'),
('HH002','LHH01','KM001',N'CHUYỆN 1 NGƯỜI','50','15000',N'Sách hay'),
('HH003','LHH01','KM002',N'CẢM ƠN NGƯỜI ĐÃ RỜI XA TÔI','50','20000',N'Sách hay'),
('HH004','LHH01','KM001',N'ĐỀU GÌ ĐẾN SẼ ĐẾN','50','11000',N'Sách hay'),
('HH005','LHH01','KM003',N'EM LÀ ĐỂ YÊU','50','20000',N'Sách hay'),
('HH006','LHH01','KM001',N'LỠ CHÚNG TA FA CẢ ĐỜI THÌ SAO','50','30000',N'Sách hay'),
('HH007','LHH02','KM004',N'THƯỚC','50','4000',N'Sách hay'),
('HH008','LHH02','KM004',N'BÚT','50','5000',N'Sách hay')
GO

/*==============================================================*/
/* Nhập Liệu :  CHITIET_PHIEUNHAP                                    */
/*==============================================================*/
INSERT INTO CT_PHIEUNHAP VALUES 
('HH001','PN001','50','5000'),
('HH007','PN002','100','20000'),
('HH008','PN003','30','25000'),
('HH005','PN004','60','10000')
GO

/*==============================================================*/
/* Nhập Liệu :  LOAIKHACHHANG                                    */
/*==============================================================*/
INSERT INTO LOAIKHACHHANG VALUES 
('LK001',N'KHÁCH HÀNG THÂN THIẾT','0.1'),
('LK002',N'KHÁCH HÀNG VIP','0.2')
GO

/*==============================================================*/
/* Nhập Liệu :  KHACHHANG                                    */
/*==============================================================*/
INSERT INTO KHACHHANG VALUES 
('KH001','LK001',N'TRẦN THỊ ÁNH',N'146 NGUYỄN ĐÌNH CHIỂU','235698425'),
('KH002','LK001',N'NGUYỄN THỊ MƠ',N'319 NGUYỄN TRI PHƯƠNG','235698425'),
('KH003','LK001',N'NGUYỄN VŨ ÁNH TUYẾT',N'146 NGUYỄN THỊ MINH KHAI','235698425'),
('KH004','LK001',N'HUỲNH NGỌC THÙY DƯƠNG',N'468 HỒ THỊ KỶ','235698425'),
('KH005','LK002',N'NGUYỄN THỊ CẨM TIÊN',N'107 TRẦN VĂNG ĐANG','235698425'),
('KH006','LK002',N'BÙI HỒNG NGỌC',N'506 TRẦN QUANG DIỆU','235698425'),
('KH007','LK002',N'NGUYỄN ÁNH HỒNG',N'203 VƯỜN CHUỐI','235698425')
GO

/*==============================================================*/
/* Nhập Liệu :  HOADON                                    */
/*==============================================================*/
SET DATEFORMAT DMY
INSERT INTO HOADON VALUES 
('HD001','NV005','KH001','23/12/2018','300000'),
('HD002','NV005','KH002','25/05/2018','400000'),
('HD003','NV006','KH003','23/08/2018','500000'),
('HD004','NV005','KH004','26/09/2018','900000'),
('HD005','NV005','KH005','19/07/2018','800000'),
('HD006','NV006','KH006','24/02/2018','200000'),
('HD007','NV006','KH007','14/07/2018','150000')
GO


/*==============================================================*/
/* Nhập Liệu :  CHITIET_HOADON                                    */
/*==============================================================*/
INSERT INTO CT_HOADON VALUES 
('HD001','HH001','5','12000'),
('HD001','HH002','6','15000'),
('HD002','HH003','6','20000'),
('HD002','HH001','5','12000'),
('HD003','HH002','4','12000'),
('HD004','HH004','3','11000'),
('HD005','HH005','10','20000')
GO


select * from DM_MANHINH
select * from NHOMNGUOIDUNG
select * from PHANQUYEN
select * from NHANVIEN
select * from NHOMNGUOIDUNG_NV
select * from NHACUNGCAP
select * from PHIEUNHAP
select * from KHUYENMAI
select * from LOAIHANGHOA
select * from HANGHOA
select * from LOAIKHACHHANG
select * from KHACHHANG
select * from HOADON
select * from CT_HOADON
select * from CT_PHIEUNHAP

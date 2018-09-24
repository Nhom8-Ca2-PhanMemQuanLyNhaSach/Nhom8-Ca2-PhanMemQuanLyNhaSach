/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     9/24/2018 2:03:48 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIET_HOADON') and o.name = 'FK_CHITIET__CHITIET_H_HOADON')
alter table CHITIET_HOADON
   drop constraint FK_CHITIET__CHITIET_H_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIET_HOADON') and o.name = 'FK_CHITIET__CHITIET_H_HANGHOA')
alter table CHITIET_HOADON
   drop constraint FK_CHITIET__CHITIET_H_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_PHIEUNHAP') and o.name = 'FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA')
alter table CT_PHIEUNHAP
   drop constraint FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_PHIEUNHAP') and o.name = 'FK_CT_PHIEU_CT_PHIEUN_HANGHOA')
alter table CT_PHIEUNHAP
   drop constraint FK_CT_PHIEU_CT_PHIEUN_HANGHOA
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
            from  sysindexes
           where  id    = object_id('CHITIET_HOADON')
            and   name  = 'CHITIET_HOADON2_FK2'
            and   indid > 0
            and   indid < 255)
   drop index CHITIET_HOADON.CHITIET_HOADON2_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIET_HOADON')
            and   name  = 'CHITIET_HOADON2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIET_HOADON.CHITIET_HOADON2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIET_HOADON')
            and   type = 'U')
   drop table CHITIET_HOADON
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
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAP.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAP')
            and   type = 'U')
   drop table PHIEUNHAP
go

/*==============================================================*/
/* Table: CHITIET_HOADON                                        */
/*==============================================================*/
create table CHITIET_HOADON (
   MAHD                 nchar(5)             not null,
   MAHH                 nchar(5)             not null,
   SOLUONG              int                  null,
   DONGIA               float                null,
   constraint PK_CHITIET_HOADON primary key nonclustered (MAHD, MAHH)
)
go

/*==============================================================*/
/* Index: CHITIET_HOADON2_FK                                    */
/*==============================================================*/




create nonclustered index CHITIET_HOADON2_FK on CHITIET_HOADON (MAHD ASC)
go

/*==============================================================*/
/* Index: CHITIET_HOADON2_FK2                                   */
/*==============================================================*/




create nonclustered index CHITIET_HOADON2_FK2 on CHITIET_HOADON (MAHH ASC)
go

/*==============================================================*/
/* Table: CT_PHIEUNHAP                                          */
/*==============================================================*/
create table CT_PHIEUNHAP (
   MAPN                 nchar(5)             not null,
   MAHH                 nchar(5)             not null,
   constraint PK_CT_PHIEUNHAP primary key nonclustered (MAPN, MAHH)
)
go

/*==============================================================*/
/* Index: CT_PHIEUNHAP_FK                                       */
/*==============================================================*/




create nonclustered index CT_PHIEUNHAP_FK on CT_PHIEUNHAP (MAPN ASC)
go

/*==============================================================*/
/* Index: CT_PHIEUNHAP2_FK                                      */
/*==============================================================*/




create nonclustered index CT_PHIEUNHAP2_FK on CT_PHIEUNHAP (MAHH ASC)
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
   DVT_HANGHOA          nvarchar(10)         null,
   TINHTRANG            nvarchar(10)         null,
   HINHANH_HANGHOA      image                null,
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
   CHIETKHAU            float                null,
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
   MAPN                 nchar(5)             not null,
   MANCC                nchar(5)             null,
   NGAYNHAP             datetime             null,
   constraint PK_PHIEUNHAP primary key (MAPN)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_5_FK on PHIEUNHAP (MANCC ASC)
go

alter table CHITIET_HOADON
   add constraint FK_CHITIET__CHITIET_H_HOADON foreign key (MAHD)
      references HOADON (MAHD)
go

alter table CHITIET_HOADON
   add constraint FK_CHITIET__CHITIET_H_HANGHOA foreign key (MAHH)
      references HANGHOA (MAHH)
go

alter table CT_PHIEUNHAP
   add constraint FK_CT_PHIEU_CT_PHIEUN_PHIEUNHA foreign key (MAPN)
      references PHIEUNHAP (MAPN)
go

alter table CT_PHIEUNHAP
   add constraint FK_CT_PHIEU_CT_PHIEUN_HANGHOA foreign key (MAHH)
      references HANGHOA (MAHH)
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


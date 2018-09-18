/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     9/17/2018 3:22:29 PM                         */
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
   MAHD                 nvarchar(5)          not null,
   MAHH                 nvarchar(5)          not null,
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
   MAPN                 nvarchar(5)          not null,
   MAHH                 nvarchar(5)          not null,
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
/* Table: HANGHOA                                               */
/*==============================================================*/
create table HANGHOA (
   MAHH                 nvarchar(5)          not null,
   MALOAI_HH            nvarchar(5)          null,
   TENHH                nvarchar(30)         null,
   DVT_HANGHOA          nvarchar(10)         null,
   TINHTRANG            nvarchar(10)         null,
   constraint PK_HANGHOA primary key (MAHH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_6_FK on HANGHOA (MALOAI_HH ASC)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MAHD                 nvarchar(5)          not null,
   MANV                 nvarchar(5)          null,
   MAKH                 nvarchar(5)          null,
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
   MAKH                 nvarchar(5)          not null,
   MALOAI_KH            nvarchar(5)          null,
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
/* Table: LOAIHANGHOA                                           */
/*==============================================================*/
create table LOAIHANGHOA (
   MALOAI_HH            nvarchar(5)          not null,
   TENLOAI_HH           nvarchar(30)         null,
   constraint PK_LOAIHANGHOA primary key (MALOAI_HH)
)
go

/*==============================================================*/
/* Table: LOAIKHACHHANG                                         */
/*==============================================================*/
create table LOAIKHACHHANG (
   MALOAI_KH            nvarchar(5)          not null,
   TENLOAI_KH           nvarchar(30)         null,
   constraint PK_LOAIKHACHHANG primary key (MALOAI_KH)
)
go

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP (
   MANCC                nvarchar(5)          not null,
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
   MANV                 nvarchar(5)          not null,
   TENNV                nvarchar(30)         null,
   DIACHI_NV            nvarchar(50)         null,
   SDT_NV               nvarchar(11)         null,
   constraint PK_NHANVIEN primary key (MANV)
)
go

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create table PHIEUNHAP (
   MAPN                 nvarchar(5)          not null,
   MANCC                nvarchar(5)          null,
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

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_RELATIONS_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go


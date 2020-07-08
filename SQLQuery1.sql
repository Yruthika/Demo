use eCommerceDB 
go

create table tbl_Category
(
   CategoryId int primary key identity ,
   CategoryName varchar(500) unique,
   IsActive bit null,
   IsDelete bit null
)

create table  tbl_Product
(
 ProductId int identity primary key,
 ProductName varchar(500),
 CategoryId int,
 IsActive bit null,
 IsDelete bit null,
 CreatedDate dateTime null,
 ModifiedDate dateTime null,
 ProductImage varchar(max),
 IsFeatured bit null,
 Quantity int,
 Foreign key (CategoryId) references  tbl_Category(CategoryId)
)

create table  tbl_Member
(
 MemberId int identity primary key,
 FirstName varchar(200),
 LastName varchar(200) unique,
 EmailId varchar(200) unique,
 Password varchar(500),
 IsActive bit null,
 IsDelete bit null,
 CteatedOn dateTime null,
 ModifiedOn dateTime null
)

Create table tbl_MemberRole
(
 MemberRoleId int Primary key identity,
 MemberId int,
 RoleId int,
 foreign key( MemberId) references  tbl_Member(  MemberId),
 foreign key( RoleId) references  tbl_Role( RoleId)
)

create table tbl_Role
(
RoleId int identity primary key,
RoleName varchar(500) unique
)

create table  tbl_CartStatus
(
 CartStatusId int identity primary key,
 CartStatus varchar(500)
)

create table  tbl_Cart
(
 CartId int identity primary key,
 ProductId int,
 MemberId int,
 CartStatusiId int,
  foreign key( ProductId) references  tbl_Product( ProductId),
  foreign key( MemberId) references  tbl_Member( MemberId),
  foreign key( CartStatusiId) references  tbl_CartStatus( CartStatusId)

)
create table  tbl_ShippingDetails
(
  ShippingDetailId int identity primary key,
  MemberId int,
  Address varchar(500),
  City varchar(500),
  Country varchar(50),

  ZipCode varchar(50),
  OrderId int,
  AmountPaid decimal,
  PaymentType  varchar(50),
  Foreign key (MemberId ) references  tbl_Member( MemberId )
)

create table tbl_CarouselImage
(
 CarouselImageId int identity primary key,
 CaroselTitle varchar(500),
 CarouselImage varchar(max)
)
select * from[dbo].[tbl_CarouselImage]
 select * from [dbo].[tbl_Product]
  select * from[dbo].[tbl_Category]
create database SupermarketDB;

create table Products(
ProductID int primary key auto_increment,
ProductName char (50),
Category char (50),
Price decimal (10,2)
);

create table Customers(
CustomerID int primary key auto_increment,
CustomerName char (50),
Phone varchar (50),
Email  varchar (60)
);

create table Sales(
SaleID int primary key auto_increment,
ProductID int,
foreign key (ProductID) references products (ProductID)
on delete cascade,
CustomerID int,
foreign key (CustomerID) references customers (CustomerID)
on delete cascade,
Quantity varchar (50),
SaleDate date
);


insert into Products (ProductName, Category, Price) values
("Golden Penny Spaghetti", "Pasta", 1200),
("Peak Milk Powder", "Dairy", 2500),
("Indomie Chicken Noodles", "Noodles", 700),
("Laptop", "Electronics", 7000),
("Redmi 15C", "Mobile Phones", 5000),
("Golden Morn", "Cereal", 3500),
("Hollandia Milk", "Dairy", 1100),
("Touch light", "Electronics", 1400),
("Power Bank", "Electronics", 7500),
("Cabin Biscuits", "Snacks",	800),
("Power Oil", "Cooking Oil", 3200),
("Eva Bottled Water", "Water", 500),
("Bread", "Bakery", 600),
("Sugar", "Grocerries", 500),
("Standing fan", "Electronics", 7500),
("Mouse", "Electronics", 1500),
("Mint Sweet", "Snacks", 200),
("American Cola", "Drinks", 500),
("Viva Soap", "Detergent", 300),
("Washing Machine", "Eletronics", 7500);


insert into Customers (CustomerName, Phone, Email) values
("Tade Opeyemi", "08098796545", "tade.O@email.com"),
("Funsho Ayomide", "09056437865", "funsho.A@email.com"),
("Ada Okafor", "08030657898", "ada.O@email.com"),
("Tunde Bello", "08030076802", "tunde.B@email.com"),
("Chika Nwosu", "07023456787","chika.N@email.com"),
("Adedayo Temitope", "09123547890","adedayo.T@email.com"),
("Emeka Obi", "08078659087", "emeka.O@email.com"),
("Ifeoma Tolulope", "09045347687", "ifeoma.T@email.com"),
("Kunle Adeyemi", "08030050045", "kunle.A@email.com"),
("Fatima Yusuf", "08056453217", "fatima.Y@email.com"),
("Seyi Johnson", "08078900987", "seyi.J@email.com"),
("Seyi Tade", "08023436787", "seyi.T@email.com"),
("Seyi Johnson", "08078900987", "seyi.J@email.com"),
("Ajayi Deborah", "08023678790", "ajayi.D@email.com"),
("Tope Alabi", "08023457523", "tope.A@email.com"),
("Afolabi Ayomide", "09125769087", "afolabi.A@email.com"),
("Oguntunde Johnson", "09076546789", "oguntunde.J@email.com"),
("Opeyemi Johnson", "08023457523", "opeyemi.J@email.com"),
("Dedap Charles", "08145679809", "dedap.C@email.com"),
("Adepoju Bolaji", "08033266807", "adepoju.B@email.com");


insert into Sales (ProductID, CustomerID, Quantity, SaleDate) values
(3, 2, "2", "2026-10-01"),
(4, 4, "1", "2026-10-04"),
(2, 5, "5", "2026-09-23"),
(5, 7, "3", "2026-09-24"),
(7, 6, "1", "2026-08-23"),
(9, 3, "6", "2026-09-27"),
(5, 15, "3", "2026-09-29"),
(11, 13, "3", "2026-10-03"),
(17, 15, "5", "2026-10-4"),
(20, 1, "12", "2026-09-30"),
(3, 18, "2", "2026-10-02"),
(15, 3, "5", "2026-09-27"),
(1, 19, "7", "2026-10-02"),
(9, 20, "3", "2026-09-30"),
(17, 4, "2", "2026-10-02"),
(19, 10, "5", "2026-09-24"),
(13, 12, "1", "2026-10-02"),
(2, 15, "3", "2026-09-23"),
(14, 13, "2", "2026-09-20"),
(8, 14, "5", "2026-10-03");

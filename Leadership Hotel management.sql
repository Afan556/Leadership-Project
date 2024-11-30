
create table Staff(
StaffID int primary key NOT NULL,
FirsName varchar(266)NOT NULL,
LasName varchar(255)not null,
position varchar(255) not null,
email VARCHAR(233)not null,
contact bigint not null,
)
create table Customer(
CustomerID int primary key NOT NULL,
FirsName varchar(266)NOT NULL,
LasName varchar(255)not null,
payID int not null,
RoomID int
foreign key (RoomId)
REFERENCES Room(RoomID),
RType varchar(255) not null,
)

create table Room(
RoomID int primary key not null,
stat varchar(255) not null,
capacity varchar(255) not null,
)
CREATE TABLE Reservations (
    ResID INT PRIMARY KEY NOT NULL,
    RoomID int
    foreign key (RoomId)
    REFERENCES Room(RoomID),
    CusID INT NOT NULL,
 
);

insert into Reservations values
(1122,10,01),
(1123,11,02),
(1124,12,03),
(1125,13,04),
(1126,14,05),
(1127,15,06);

insert into Customer values
(01,'Micheal','De Santa',1122,10,'Suite'),
(02,'Geralt','Witcher',9112,11,'Suite'),
(03,'Kyle','Crane',5000,12,'Suite'),
(04,'John','Karatos',6000,13,'Suite'),
(05,'John','Cena',1000,14,'Suite'),
(06,'Christiano','Ronaldo',3000,15,'Suite');


INSERT INTO Staff (StaffID, FirsName, LasName, Position, Email, Contact)
VALUES
(2457, 'Mario', 'Mario', 'Manager', 'mario.manager@gmail.com', 123456789),
(2466, 'Sonic', 'the Hedgehog', 'Waiter', 'sonic.waiter@outlook.com', 987654321),
(3475, 'Nathan', 'Drake', 'Room Assistant', 'nathan.roomassistant@hotmail.com', 111222333),
(4481, 'Master', 'Chief', 'Cleaner', 'master.cleaner@live.com', 444555666),
(5495, 'Samus', 'Aran', 'Security Guard', 'samus.security@gmail.com', 777888999),
(6504, 'Link', '', 'Concierge', 'link.concierge@outlook.com', 112233445),
(7603, 'Ellie', '', 'Front Desk Clerk', 'ellie.frontdesk@hotmail.com', 556677889),
(8901, 'Commander', 'Shepard', 'Maintenance Technician', 'shepard.maintenance@gmail.com', 998877665);
INSERT INTO Room (RoomID, Stat, Capacity)
VALUES
(10, 'Occupied', 'Single'),
(11, 'Vacant', 'Single'),
(12, 'Occupied', 'Double'),
(13, 'Vacant', 'Double'),
(14, 'Occupied', 'Suite'),
(15, 'Vacant', 'Suite');

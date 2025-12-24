create table RESERVATION (
 ReservationID INT primary key,
 GuestID INT NOT NULL,
 RoomID INT NOT NULL,
 CheckIn DATE NOT NULL,
 CheckOut DATE NOT NULL,
 BookingDate DATE NOT NULL,
 NumGuests INT NOT NULL,
 Status varchar(20) not null,
 Notes varchar(255),

 foreign key(GuestID) references GUEST(GuestID),
 foreign key(RoomID) references ROOM(RoomID)
);
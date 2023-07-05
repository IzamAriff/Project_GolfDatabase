CREATE TABLE PersonItemInventory (
    PI_ItemInventoryID VARCHAR2(20),
    PI_Person_CustomerID VARCHAR2(20),
    PI_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PI_ItemInventoryID, PI_Person_CustomerID, PI_Person_EmployeeID),
    CONSTRAINT ET_PI_Item FOREIGN KEY (PI_ItemInventoryID) REFERENCES ItemInventory (I_InventoryID) ON DELETE CASCADE,
    CONSTRAINT ET_PI_Customer FOREIGN KEY (PI_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PI_Employee FOREIGN KEY (PI_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);
SELECT * FROM PERSONITEMINVENTORY; --EMPLOYEE
DROP TABLE PERSONITEMINVENTORY;
INSERT INTO PERSONITEMINVENTORY VALUES ('I0001', 'P0001', 'P0011');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0002', 'P0001', 'P0013');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0003', 'P0001', 'P0013');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0001', 'P0002', 'P0011');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0002', 'P0002', 'P0013');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0003', 'P0002', 'P0011');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0007', 'P0003', 'P0011');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0008', 'P0003', 'P0013');
INSERT INTO PERSONITEMINVENTORY VALUES ('I0009', 'P0003', 'P0011');

CREATE TABLE PaymentEquipmentRental (
    PAER_RentalID VARCHAR2(20),
    PAER_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAER_RentalID, PAER_PaymentID),
    CONSTRAINT ET_PAER_Rental FOREIGN KEY (PAER_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE,
    CONSTRAINT ET_PAER_Payment FOREIGN KEY (PAER_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);
SELECT * FROM PAYMENTEQUIPMENTRENTAL;
DROP TABLE PAYMENTEQUIPMENTRENTAL;


CREATE TABLE PaymentReservation (
    PAR_ReservationID VARCHAR2(20),
    PAR_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAR_ReservationID, PAR_PaymentID),
    CONSTRAINT ET_PAR_Reservation FOREIGN KEY (PAR_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE,
    CONSTRAINT ET_PAR_Payment FOREIGN KEY (PAR_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);
SELECT * FROM PAYMENTRESERVATION;
DROP TABLE PAYMENTRESERVATION;


CREATE TABLE ReservationResortFacility (
    RRS_ResortID VARCHAR2(20),
    RRS_ReservationID VARCHAR2(20),
    PRIMARY KEY (RRS_ResortID, RRS_ReservationID),
    CONSTRAINT ET_RRS_Resort FOREIGN KEY (RRS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE,
    CONSTRAINT ET_RRS_Reservation FOREIGN KEY (RRS_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);
SELECT * FROM RESERVATIONRESORTFACILITY;
DROP TABLE RESERVATIONRESORTFACILITY;


CREATE TABLE ReservationGolfCourse (
    RGC_CourseID VARCHAR2(20),
    RGC_ReservationID VARCHAR2(20),
    PRIMARY KEY (RGC_CourseID, RGC_ReservationID),
    CONSTRAINT ET_GGC_Course FOREIGN KEY (RGC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE,
    CONSTRAINT ET_GGC_Reservation FOREIGN KEY (RGC_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);
SELECT * FROM RESERVATIONGOLFCOURSE;
DROP TABLE RESERVATIONGOLFCOURSE;


CREATE TABLE ReservationGolfEvent (
    RGE_EventID VARCHAR2(20),
    RGE_ReservationID VARCHAR2(20),
    PRIMARY KEY (RGE_EventID, RGE_ReservationID),
    CONSTRAINT ET_RGE_Event FOREIGN KEY (RGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_RGE_Reservation FOREIGN KEY (RGE_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);
SELECT * FROM RESERVATIONGOLFEVENT;
DROP TABLE RESERVATIONGOLFEVENT;


CREATE TABLE EquipmentRentalGolfEvent (
    ERGE_EventID VARCHAR2(20),
    ERGE_RentalID VARCHAR2(20),
    PRIMARY KEY (ERGE_EventID, ERGE_RentalID),
    CONSTRAINT ET_ERGE_Event FOREIGN KEY (ERGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_ERGE_Rental FOREIGN KEY (ERGE_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE
);
SELECT * FROM RESERVATIONGOLFEVENT;
DROP TABLE RESERVATIONGOLFEVENT;


CREATE TABLE GolfEventGolfCourse (
    GEGC_CourseID VARCHAR2(20),
    GEGC_EventID VARCHAR2(20),
    PRIMARY KEY (GEGC_CourseID, GEGC_EventID),
    CONSTRAINT ET_GEGC_Course FOREIGN KEY (GEGC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE,
    CONSTRAINT ET_GEGC_Event FOREIGN KEY (GEGC_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE
);
SELECT * FROM GOLFEVENTGOLFCOURSE;
DROP TABLE GOLFEVENTGOLFCOURSE;


CREATE TABLE ItemInventoryGolfEvent (
    IGE_EventID VARCHAR2(20),
    IGE_InventoryID VARCHAR2(20),
    PRIMARY KEY (IGE_EventID, IGE_InventoryID),
    CONSTRAINT ET_IGE_Event FOREIGN KEY (IGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_IGE_Inventory FOREIGN KEY (IGE_InventoryID) REFERENCES ItemInventory (I_InventoryID) ON DELETE CASCADE
);
SELECT * FROM ITEMINVENTORYGOLFEVENT;
DROP TABLE ITEMINVENTORYGOLFEVENT;
CREATE TABLE Person (
    P_PersonID VARCHAR2(20) PRIMARY KEY,
    P_FirstName VARCHAR2(20),
    P_LastName VARCHAR2(20),
    P_Age INTEGER,
    P_Gender VARCHAR2(20),
    P_Email VARCHAR2(50)
);

CREATE TABLE Employee (
    E_EmployeeID VARCHAR2(20) PRIMARY KEY,
    E_StartDate DATE,
    E_YearExperience INTEGER,
    E_KWSPno VARCHAR2(20),
    E_Qualification VARCHAR2(50),
    E_Status VARCHAR2(50),
    E_OvertimeHour INTEGER,
    E_AnnualLeaveDay INTEGER,
    E_JobTitle VARCHAR2(50),
    E_JobPosition VARCHAR2(50),
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_E_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE Customer (
    C_CustomerID VARCHAR2(20) PRIMARY KEY,
    C_Nationality VARCHAR(50),
    C_BloodType VARCHAR2(50),
    C_Allergen VARCHAR2(50),
    C_PreferredLanguage VARCHAR2(50),
    C_PhoneNum VARCHAR2(13),
    C_GroupSize VARCHAR2(50),
    C_BankAccountType VARCHAR2(20),
    C_BankAccountNum INTEGER,
    C_SSN VARCHAR2(11),
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_C_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE Golfer (
    G_GolferID VARCHAR2(20) PRIMARY KEY,
    G_PreferredTeeTime VARCHAR2(10),
    G_Level VARCHAR2(20),
    G_PhysicalFitness VARCHAR2(20),
    G_Handicap INTEGER,
    G_HighestAchievement VARCHAR2(50),
    G_Sponsorship VARCHAR2(20),
    G_SocialAccountType VARCHAR2(20),
    G_SocialAccount VARCHAR2(50),
    G_CumulativeScore INTEGER DEFAULT 0,
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_G_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE Membership (
    M_MembershipID VARCHAR2(20) PRIMARY KEY,
    M_Type VARCHAR2(20),
    M_StartDate DATE,
    M_EndDate DATE,
    M_RenewalDate DATE,
    M_Fee INTEGER,
    M_ActivePeriod VARCHAR2(20),
    M_Status VARCHAR2(20),
    M_Benefits VARCHAR2(255),
    M_OtherClubStatus VARCHAR2(20),
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_M_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonalDetail (
    PD_PersonalID VARCHAR2(20) PRIMARY KEY,
    PD_IdentificationNum INTEGER,
    PD_BirthDate DATE,
    PD_BirthPlace VARCHAR(255),
    PD_PassportNum VARCHAR2(10),
    PD_Race VARCHAR2(10),
    PD_Religion VARCHAR2(10),
    PD_MaritalStatus VARCHAR2(10),
    PD_SpouseName VARCHAR2(50),
    PD_ChildrenNum INTEGER,
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PD_Membership FOREIGN KEY (M_MembershipID) REFERENCES Membership (M_MembershipID) ON DELETE CASCADE
);

CREATE TABLE ProfessionalDetail (
    PR_ProfessionalID VARCHAR2(20) PRIMARY KEY,
    PR_CompanyName VARCHAR2(30),
    PR_Designation VARCHAR2(30),
    PR_CompanyAddress VARCHAR2(100),
    PR_CompanyEmail VARCHAR2(30),
    PR_CompanyContact VARCHAR2(13),
    PR_OfficeContact VARCHAR2(13),
    PR_BusinessNature VARCHAR2(30),
    PR_CompanyStatus VARCHAR2(20),
    PR_SSM_RegNum VARCHAR2(12),
    PR_SSM_RegStatus VARCHAR2(20),
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PR_Membership FOREIGN KEY (M_MembershipID) REFERENCES Membership (M_MembershipID) ON DELETE CASCADE
);

CREATE TABLE Address (
    AD_AddressID VARCHAR2(20) PRIMARY KEY,
    AD_Unit VARCHAR2(10),
    AD_Street1 VARCHAR2(30),
    AD_Street2 VARCHAR2(30),
    AD_Street3 VARCHAR2(30),
    AD_PostalCode VARCHAR2(20),
    AD_City VARCHAR2(20),
    AD_District VARCHAR2(20),
    AD_State VARCHAR2(20),
    AD_Country VARCHAR2(20),
    P_PersonID VARCHAR2(20),
    PD_PersonalID VARCHAR2(20) DEFAULT NULL,
    CONSTRAINT FK_AD_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT FK_AD_Personal FOREIGN KEY (PD_PersonalID) REFERENCES PersonalDetail (PD_PersonalID) ON DELETE CASCADE
);

CREATE TABLE Order_ (
    O_OrderID VARCHAR2(20) PRIMARY KEY,
    O_Date DATE,
    O_Type VARCHAR2(20),
    O_ShippingAddress VARCHAR2(50),
    O_Status VARCHAR2(20),
    O_Quantity INTEGER,
    O_PromoDiscount VARCHAR2(20),
    O_Membership VARCHAR2(20),
    O_PaymentStatus VARCHAR2(20),
    O_NetPrice NUMBER(8,2)
);

CREATE TABLE EquipmentRental (
    ER_RentalID VARCHAR2(20) PRIMARY KEY,
    ER_EquipmentName VARCHAR2(20),
    ER_RentalDate DATE,
    ER_RentalTime VARCHAR2(20),
    ER_RentalDuration VARCHAR2(20),
    ER_ReturnDate DATE,
    ER_ReturnTime VARCHAR2(20),
    ER_LateFee INTEGER,
    ER_DamageDesc VARCHAR2(50),
    ER_DamageFee INTEGER,
    ER_RentalPrice INTEGER,
    ER_RentalStatus VARCHAR2(20)
);

CREATE TABLE ItemInventory (
    I_InventoryID VARCHAR2(20) PRIMARY KEY,
    I_Name VARCHAR2(50),
    I_Category VARCHAR2(50),
    I_StockQuantity INTEGER,
    I_Price NUMBER(8,2),
    I_Manufacturer VARCHAR2(50),
    I_Supplier VARCHAR2(50),
    I_PurchasedDate DATE,
    I_Condition VARCHAR2(50),
    I_Availability VARCHAR2(50),
    O_OrderID VARCHAR2(20) DEFAULT NULL,
    ER_RentalID VARCHAR2(20) DEFAULT NULL,
    CONSTRAINT FK_I_Order FOREIGN KEY (O_OrderID) REFERENCES Order_ (O_OrderID) ON DELETE CASCADE,
    CONSTRAINT FK_I_Rental FOREIGN KEY (ER_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE
);

CREATE TABLE Department (
    DP_DepartmentID VARCHAR2(20) PRIMARY KEY,
    DP_Name VARCHAR2(50),
    DP_Head VARCHAR2(20),
    DP_Secretary VARCHAR2(20),
    DP_Treasury VARCHAR2(20),
    DP_Type VARCHAR2(20),
    DP_Goal VARCHAR2(50),
    DP_Rating FLOAT,
    DP_Budget NUMBER(8,2),
    DP_Revenue NUMBER(8,2)
);

CREATE TABLE Payment (
    PA_PaymentID VARCHAR2(20) PRIMARY KEY,
    PA_Method VARCHAR2(30),
    PA_Date DATE,
    PA_Time VARCHAR2(20),
    PA_Amount NUMBER(8,2),
    PA_Status VARCHAR2(20),
    DP_DepartmentID VARCHAR2(20),
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PA_Department FOREIGN KEY (DP_DepartmentID) REFERENCES Department (DP_DepartmentID) ON DELETE CASCADE
);

CREATE TABLE Invoice (
    IN_InvoiceID VARCHAR2(20) PRIMARY KEY,
    IN_CompanyAddress VARCHAR2(50),
    IN_CompanyEmail VARCHAR2(50),
    IN_CustomerAddress VARCHAR2(50),
    IN_CustomerEmail VARCHAR2(50),
    IN_Terms VARCHAR2(20),
    IN_DueDate VARCHAR2(20),
    IN_Tax NUMBER(1,2),
    IN_BalanceDue INTEGER,
    IN_Notes VARCHAR2(100),
    PA_PaymentID VARCHAR2(20),
    CONSTRAINT FK_IN_Payment FOREIGN KEY (PA_PaymentID) REFERENCES Payment (PA_PaymentID)
);

CREATE TABLE Receipt (
    RE_ReceiptID VARCHAR2(20) PRIMARY KEY ,
    RE_Particular VARCHAR2(50),
    RE_Amount NUMBER(8,2),
    RE_Gateway VARCHAR2(20),
    RE_LoyaltyPointEarn INTEGER,
    RE_PrintLocation VARCHAR2(50),
    RE_VoucherCode VARCHAR2(10) DEFAULT 'NONE',
    RE_Currency VARCHAR2(10),
    RE_CashierAttendantName VARCHAR2(20),
    RE_AdditionalNotes VARCHAR2(50) DEFAULT '-',
    PA_PaymentID VARCHAR2(20),
    CONSTRAINT FK_RE_Payment FOREIGN KEY (PA_PaymentID) REFERENCES Payment (PA_PaymentID)
);

CREATE TABLE Salary (
    SL_SalaryID VARCHAR2(20) PRIMARY KEY,
    SL_Gross NUMBER(8,2),
    SL_Date DATE,
    SL_Type VARCHAR(10),
    SL_Bonus NUMBER(8,2),
    SL_OvertimePay NUMBER(8,2),
    SL_TaxResident VARCHAR2(20),
    SL_EPF NUMBER(8,2),
    SL_SOCSO NUMBER(8,2),
    SL_Deduction NUMBER(8,2),
    SL_Net NUMBER(8,2),
    E_EmployeeID VARCHAR2(20),
    DP_DepartmentID VARCHAR2(20)
);

CREATE TABLE Reservation (
    R_ReservationID VARCHAR2(20) PRIMARY KEY,
    R_StartDate DATE,
    R_StartTime VARCHAR2(20),
    R_EndDate DATE,
    R_EndTime VARCHAR2(20),
    R_GuestNum INTEGER,
    R_Membership VARCHAR2(10),
    R_Discount NUMBER(1,2),
    R_NetPrice NUMBER(8,2),
    R_Status VARCHAR2(20)
);

CREATE TABLE GolfCourse (
    GC_CourseID VARCHAR2(20) PRIMARY KEY,
    GC_Description VARCHAR2(50),
    GC_AveragePar NUMBER(2,2),
    GC_Rating NUMBER(2,2),
    GC_SlopeRating NUMBER(2,2),
    GC_Yardage NUMBER(2,2),
    GC_HoleCount INTEGER,
    GC_Architect VARCHAR2(50),
    GC_Amenities VARCHAR2(100),
    GC_Size VARCHAR2(20)
);

CREATE TABLE Scoreboard (
    SB_ScoreboardID VARCHAR2(20) PRIMARY KEY,
    SB_PLayer VARCHAR2(20),
    SB_Tournament VARCHAR2(50),
    SB_Course VARCHAR2(20),
    SB_HoleNum INTEGER,
    SB_Score INTEGER,
    SB_Par INTEGER,
    SB_Handicap INTEGER,
    SB_GrossScore INTEGER,
    SB_NetScore INTEGER,
    G_GolferID VARCHAR2(20),
    GC_CourseID VARCHAR2(20),
    CONSTRAINT FK_SB_Golfer FOREIGN KEY (G_GolferID) REFERENCES Golfer (G_GolferID) ON DELETE CASCADE,
    CONSTRAINT FK_SB_Course FOREIGN KEY (GC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE
);

CREATE TABLE ResortFacility (
    RS_ResortID VARCHAR2(20) PRIMARY KEY,
    RS_FacilityType VARCHAR2(50),
    RS_Duration FLOAT,
    RS_Price NUMBER(8,2)
);

CREATE TABLE RecreationalFacility (
    RF_FacilityID VARCHAR2(20) PRIMARY KEY ,
    RF_Capacity INTEGER,
    RF_OpeningTime VARCHAR2(20),
    RF_ClosingTime VARCHAR2(20),
    RF_Availability VARCHAR2(10),
    RF_Description VARCHAR2(100),
    RF_MaintenanceDate VARCHAR2(100),
    RF_EmployeeAppointed VARCHAR2(50),
    RF_Location VARCHAR2(50),
    RF_Rating FLOAT,
    RS_ResortID VARCHAR2(20),
    CONSTRAINT FK_RF_Resort FOREIGN KEY (RS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE
);

CREATE TABLE Room (
    RO_RoomID VARCHAR2(20) PRIMARY KEY,
    RO_size INTEGER,
    RO_No VARCHAR2(4),
    RO_Floor VARCHAR2(10),
    RO_Occupancy VARCHAR2(20),
    RO_BedType VARCHAR2(20),
    RO_BedQuantity INTEGER,
    RO_Amenities VARCHAR2(100),
    RO_View VARCHAR2(50),
    RO_Availability VARCHAR2(20),
    RS_ResortID VARCHAR2(20),
    CONSTRAINT FK_RO_Resort FOREIGN KEY (RS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE
);

CREATE TABLE DiningHospitality (
    D_DiningID VARCHAR2(20) PRIMARY KEY,
    D_TableNum INTEGER,
    D_TableCapacity INTEGER,
    D_TableQuantity INTEGER,
    D_TableType VARCHAR2(20),
    D_Time VARCHAR2(20),
    D_Category VARCHAR2(20),
    D_PaxAmount INTEGER,
    D_SeatingType VARCHAR2(20),
    D_SetMenu VARCHAR2(20),
    RS_ResortID VARCHAR2(20),
    CONSTRAINT FK_D_Resort FOREIGN KEY (RS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE
);

CREATE TABLE GolfEvent (
    GE_EventID VARCHAR2(20) PRIMARY KEY,
    GE_Name VARCHAR2(50),
    GE_Date DATE,
    GE_StartTime VARCHAR2(20),
    GE_EndTime VARCHAR2(20),
    GE_Fee NUMBER(8,2),
    GE_Sponsorship VARCHAR2(20),
    GE_EquipmentProvided VARCHAR2(10),
    GE_Status VARCHAR2(10),
    GE_Type VARCHAR2(10)
);

CREATE TABLE PersonPayment (
    PPA_PaymentID VARCHAR2(20),
    PPA_Person_CustomerID VARCHAR2(20),
    PPA_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PPA_PaymentID, PPA_Person_CustomerID, PPA_Person_EmployeeID),
    CONSTRAINT ET_PPA_Payment FOREIGN KEY (PPA_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE,
    CONSTRAINT ET_PPA_Customer FOREIGN KEY (PPA_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PPA_Employee FOREIGN KEY (PPA_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonItemInventory (
    PI_ItemInventoryID VARCHAR2(20),
    PI_Person_CustomerID VARCHAR2(20),
    PI_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PI_ItemInventoryID, PI_Person_CustomerID, PI_Person_EmployeeID),
    CONSTRAINT ET_PI_Item FOREIGN KEY (PI_ItemInventoryID) REFERENCES ItemInventory (I_InventoryID) ON DELETE CASCADE,
    CONSTRAINT ET_PI_Customer FOREIGN KEY (PI_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PI_Employee FOREIGN KEY (PI_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonOrder (
    PO_OrderID VARCHAR2(20),
    PO_Person_CustomerID VARCHAR2(20),
    PO_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PO_OrderID, PO_Person_CustomerID, PO_Person_EmployeeID),
    CONSTRAINT ET_PO_Order FOREIGN KEY (PO_OrderID) REFERENCES Order_ (O_OrderID) ON DELETE CASCADE,
    CONSTRAINT ET_PO_Customer FOREIGN KEY (PO_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PO_Employee FOREIGN KEY (PO_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonEquipmentRental (
    PER_RentalID VARCHAR2(20),
    PER_Person_CustomerID VARCHAR2(20),
    PER_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PER_RentalID, PER_Person_CustomerID, PER_Person_EmployeeID),
    CONSTRAINT ET_PER_Rental FOREIGN KEY (PER_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE,
    CONSTRAINT ET_PER_Customer FOREIGN KEY (PER_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PER_Employee FOREIGN KEY (PER_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonReservation (
    PR_ReservationID VARCHAR2(20),
    PR_Person_CustomerID VARCHAR2(20),
    PR_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PR_ReservationID, PR_Person_CustomerID, PR_Person_EmployeeID),
    CONSTRAINT ET_PR_Reservation FOREIGN KEY (PR_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE,
    CONSTRAINT ET_PR_Customer FOREIGN KEY (PR_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PR_Employee FOREIGN KEY (PR_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonGolfEvent (
    PGE_EventID VARCHAR2(20),
    PGE_Person_CustomerID VARCHAR2(20),
    PGE_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PGE_EventID, PGE_Person_CustomerID, PGE_Person_EmployeeID),
    CONSTRAINT ET_PGE_Event FOREIGN KEY (PGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_PGE_Customer FOREIGN KEY (PGE_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PGE_Employee FOREIGN KEY (PGE_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonResortFacility (
    PRS_ResortID VARCHAR2(20),
    PRS_Person_CustomerID VARCHAR2(20),
    PRS_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PRS_ResortID, PRS_Person_CustomerID, PRS_Person_EmployeeID),
    CONSTRAINT ET_PRS_Resort FOREIGN KEY (PRS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE,
    CONSTRAINT ET_PRS_Customer FOREIGN KEY (PRS_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PRS_Employee FOREIGN KEY (PRS_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE PersonGolfCourse (
    PGC_CourseID VARCHAR2(20),
    PGC_Person_CustomerID VARCHAR2(20),
    PGC_Person_EmployeeID VARCHAR2(20),
    PRIMARY KEY (PGC_CourseID, PGC_Person_CustomerID, PGC_Person_EmployeeID),
    CONSTRAINT ET_PGC_Course FOREIGN KEY (PGC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE,
    CONSTRAINT ET_PGC_Customer FOREIGN KEY (PGC_Person_CustomerID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_PGC_Employee FOREIGN KEY (PGC_Person_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE EmployeeSupervisor (
    ES_SupervisorID VARCHAR2(20),
    ES_EmployeeID VARCHAR2(20),
    PRIMARY KEY (ES_SupervisorID, ES_EmployeeID),
    CONSTRAINT ET_ES_Supervisor FOREIGN KEY (ES_SupervisorID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_ES_Employee FOREIGN KEY (ES_EmployeeID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE EmployeeDepartment (
    EDP_DepartmentID VARCHAR2(20),
    EDP_EmployeeID VARCHAR2(20),
    PRIMARY KEY (EDP_DepartmentID, EDP_EmployeeID),
    CONSTRAINT ET_EDP_Department FOREIGN KEY (EDP_DepartmentID) REFERENCES Department (DP_DepartmentID) ON DELETE CASCADE,
    CONSTRAINT ET_EDP_Employee FOREIGN KEY (EDP_EmployeeID) REFERENCES Employee (E_EmployeeID) ON DELETE CASCADE
);

CREATE TABLE GolferCaddie (
    GCA_CaddieID VARCHAR2(20),
    GCA_GolferID VARCHAR2(20),
    PRIMARY KEY (GCA_CaddieID, GCA_GolferID),
    CONSTRAINT ET_GCA_Caddie FOREIGN KEY (GCA_CaddieID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT ET_GCA_Golfer FOREIGN KEY (GCA_GolferID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE OrderPayment (
    OPA_PaymentID VARCHAR2(20),
    OPA_OrderID VARCHAR2(20),
    PRIMARY KEY (OPA_PaymentID, OPA_OrderID),
    CONSTRAINT ET_OPA_Payment FOREIGN KEY (OPA_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE,
    CONSTRAINT ET_OPA_Invoice FOREIGN KEY (OPA_OrderID) REFERENCES Order_ (O_OrderID) ON DELETE CASCADE
);

CREATE TABLE PaymentItemInventory (
    PAI_InventoryID VARCHAR2(20),
    PAI_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAI_InventoryID, PAI_PaymentID),
    CONSTRAINT ET_EDP_Inventory FOREIGN KEY (PAI_InventoryID) REFERENCES ItemInventory (I_InventoryID) ON DELETE CASCADE,
    CONSTRAINT ET_EDP_Payment FOREIGN KEY (PAI_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);

CREATE TABLE PaymentGolfEvent (
    PAGE_EventID VARCHAR2(20),
    PAGE_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAGE_EventID, PAGE_PaymentID),
    CONSTRAINT ET_PAGE_Event FOREIGN KEY (PAGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_PAGE_Payment FOREIGN KEY (PAGE_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);

CREATE TABLE PaymentResortFacility (
    PARS_ResortID VARCHAR2(20),
    PARS_PaymentID VARCHAR2(20),
    PRIMARY KEY (PARS_ResortID, PARS_PaymentID),
    CONSTRAINT ET_PARS_Resort FOREIGN KEY (PARS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE,
    CONSTRAINT ET_PARS_Payment FOREIGN KEY (PARS_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);

CREATE TABLE PaymentEquipmentRental (
    PAER_RentalID VARCHAR2(20),
    PAER_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAER_RentalID, PAER_PaymentID),
    CONSTRAINT ET_PAER_Rental FOREIGN KEY (PAER_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE,
    CONSTRAINT ET_PAER_Payment FOREIGN KEY (PAER_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);

CREATE TABLE PaymentReservation (
    PAR_ReservationID VARCHAR2(20),
    PAR_PaymentID VARCHAR2(20),
    PRIMARY KEY (PAR_ReservationID, PAR_PaymentID),
    CONSTRAINT ET_PAR_Reservation FOREIGN KEY (PAR_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE,
    CONSTRAINT ET_PAR_Payment FOREIGN KEY (PAR_PaymentID) REFERENCES Payment (PA_PaymentID) ON DELETE CASCADE
);

CREATE TABLE ReservationResortFacility (
    RRS_ResortID VARCHAR2(20),
    RRS_ReservationID VARCHAR2(20),
    PRIMARY KEY (RRS_ResortID, RRS_ReservationID),
    CONSTRAINT ET_RRS_Resort FOREIGN KEY (RRS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE,
    CONSTRAINT ET_RRS_Reservation FOREIGN KEY (RRS_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);

CREATE TABLE ReservationGolfCourse (
    RGC_CourseID VARCHAR2(20),
    RGC_ReservationID VARCHAR2(20),
    PRIMARY KEY (RGC_CourseID, RGC_ReservationID),
    CONSTRAINT ET_GGC_Course FOREIGN KEY (RGC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE,
    CONSTRAINT ET_GGC_Reservation FOREIGN KEY (RGC_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);

CREATE TABLE ReservationGolfEvent (
    RGE_EventID VARCHAR2(20),
    RGE_ReservationID VARCHAR2(20),
    PRIMARY KEY (RGE_EventID, RGE_ReservationID),
    CONSTRAINT ET_RGE_Event FOREIGN KEY (RGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_RGE_Reservation FOREIGN KEY (RGE_ReservationID) REFERENCES Reservation (R_ReservationID) ON DELETE CASCADE
);

CREATE TABLE EquipmentRentalGolfEvent (
    ERGE_EventID VARCHAR2(20),
    ERGE_RentalID VARCHAR2(20),
    PRIMARY KEY (ERGE_EventID, ERGE_RentalID),
    CONSTRAINT ET_ERGE_Event FOREIGN KEY (ERGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_ERGE_Rental FOREIGN KEY (ERGE_RentalID) REFERENCES EquipmentRental (ER_RentalID) ON DELETE CASCADE
);

CREATE TABLE GolfEventGolfCourse (
    GEGC_CourseID VARCHAR2(20),
    GEGC_EventID VARCHAR2(20),
    PRIMARY KEY (GEGC_CourseID, GEGC_EventID),
    CONSTRAINT ET_GEGC_Course FOREIGN KEY (GEGC_CourseID) REFERENCES GolfCourse (GC_CourseID) ON DELETE CASCADE,
    CONSTRAINT ET_GEGC_Event FOREIGN KEY (GEGC_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE
);

CREATE TABLE ItemInventoryGolfEvent (
    IGE_EventID VARCHAR2(20),
    IGE_InventoryID VARCHAR2(20),
    PRIMARY KEY (IGE_EventID, IGE_InventoryID),
    CONSTRAINT ET_IGE_Event FOREIGN KEY (IGE_EventID) REFERENCES GolfEvent (GE_EventID) ON DELETE CASCADE,
    CONSTRAINT ET_IGE_Inventory FOREIGN KEY (IGE_InventoryID) REFERENCES ItemInventory (I_InventoryID) ON DELETE CASCADE
);

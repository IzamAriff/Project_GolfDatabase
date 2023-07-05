CREATE TABLE Person (
    P_PersonID VARCHAR2(20) PRIMARY KEY,
    P_FirstName VARCHAR2(20) NOT NULL,
    P_LastName VARCHAR2(20) NOT NULL,
    P_Age INTEGER NOT NULL,
    P_Gender VARCHAR2(20) NOT NULL,
    P_Email VARCHAR2(50) NOT NULL
);

SELECT * FROM PERSON;
DROP TABLE PERSON;

INSERT INTO PERSON VALUES ('P0001', 'John', 'Smith', 28, 'Male', 'Smith@gmail.com');
INSERT INTO PERSON VALUES ('P0002', 'Eskandar', 'Arasyah', 35, 'Male', 'Eskandar@gmail.com');
INSERT INTO PERSON VALUES ('P0003', 'Dheo', 'Han', 22, 'Male', 'Dheo@gmail.com');
INSERT INTO PERSON VALUES ('P0004', 'Chua', 'See', 42, 'Female', 'Chua@gmail.com');
INSERT INTO PERSON VALUES ('P0005', 'Fluer', 'Sofea', 31, 'Female', 'Fluer@gmail.com');
INSERT INTO PERSON VALUES ('P0006', 'Dara', 'Fareezan', 29, 'Female', 'Dara@gmail.com');
INSERT INTO PERSON VALUES ('P0007', 'Haidar', 'Sulaiman', 38, 'Male', 'Haidar@gmail.com');
INSERT INTO PERSON VALUES ('P0008', 'Zainab', 'Abidin', 45, 'Female', 'Zainab@gmail.com');
INSERT INTO PERSON VALUES ('P0009', 'Anika', 'Khan', 26, 'Female', 'Anika@gmail.com');
INSERT INTO PERSON VALUES ('P0010', 'Joshi', 'Verma', 33, 'Male', 'Joshi@gmail.com');
INSERT INTO PERSON VALUES ('P0011', 'Aniq', 'Afnan', 23, 'Male', 'aniq@SLGR.com');
INSERT INTO PERSON VALUES ('P0012', 'Farid', 'Muhaimin', 25, 'Male', 'farid@SLGR.com');
INSERT INTO PERSON VALUES ('P0013', 'Afiq', 'Aznan', 32, 'Male', 'afiq@SLGR.com');
INSERT INTO PERSON VALUES ('P0014', 'Yaya', 'Ahmad', 26, 'Female', 'yaya@SLGR.com');
INSERT INTO PERSON VALUES ('P0015', 'Atina', 'Joshua', 21, 'Female', 'tina@SLGR.com');
INSERT INTO PERSON VALUES ('P0016', 'Nina', 'Michael', 23, 'Female', 'ina@SLGR.com');
INSERT INTO PERSON VALUES ('P0017', 'Hayat', 'Firdaus', 35, 'Male', 'hayat@SLGR.com');
INSERT INTO PERSON VALUES ('P0018', 'Ali', 'Hafiz', 39, 'Male', 'ali@SLGR.com');
INSERT INTO PERSON VALUES ('P0019', 'Kumar', 'Josh', 40, 'Male', 'kumar@SLGR.com');
INSERT INTO PERSON VALUES ('P0020', 'Dayah', 'Abdullah', 35, 'Female', 'dayah@SLGR.com');
INSERT INTO PERSON VALUES ('P0021', 'Daiyan', 'Ghazi', 32, 'Male', 'daiyan@gmail.com');
INSERT INTO PERSON VALUES ('P0022', 'Olivia', 'Sutton', 27, 'Female', 'olivia@gmail.com');
INSERT INTO PERSON VALUES ('P0023', 'Jack', 'Forester', 45, 'Male', 'jack@gmail.com');
INSERT INTO PERSON VALUES ('P0024', 'Zahra', 'Rahman', 39, 'Female', 'zahra@gmail.com');
INSERT INTO PERSON VALUES ('P0025', 'Faizal', 'Ismail', 36, 'Male', 'faizal@gmail.com');
INSERT INTO PERSON VALUES ('P0026', 'Aisha', 'Zainal', 31, 'Female', 'aisha@gmail.com');
INSERT INTO PERSON VALUES ('P0027', 'Arif', 'Ibrahim', 42, 'Male', 'arif@gmail.com');
INSERT INTO PERSON VALUES ('P0028', 'Hafizah', 'Yusof', 29, 'Female', 'hafizah@gmail.com');
INSERT INTO PERSON VALUES ('P0029', 'Irfan', 'Ahmad', 34, 'Male', 'irfan@gmail.com');
INSERT INTO PERSON VALUES ('P0030', 'Nurul', 'Rahman', 37, 'Female', 'nurul@gmail.com');


CREATE TABLE Employee (
    E_EmployeeID VARCHAR2(20) PRIMARY KEY,
    E_StartDate DATE NOT NULL,
    E_YearExperience INTEGER NOT NULL,
    E_KWSPno VARCHAR2(20) NOT NULL,
    E_Qualification VARCHAR2(50) NOT NULL,
    E_Status VARCHAR2(50) NOT NULL,
    E_OvertimeHour INTEGER NOT NULL,
    E_AnnualLeaveDay INTEGER NOT NULL,
    E_JobTitle VARCHAR2(50) NOT NULL,
    E_JobPosition VARCHAR2(50) NOT NULL,
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_E_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

SELECT * FROM EMPLOYEE;
SELECT Person.P_PersonID, Person.P_FirstName, Person.P_LastName, Employee.E_EmployeeID, Employee.E_JobTitle
FROM Person
JOIN Employee ON Person.P_PersonID = Employee.P_PersonID;

DROP TABLE EMPLOYEE;

INSERT INTO EMPLOYEE VALUES ('E0001', TO_DATE('15/11/2018', 'DD/MM/YYYY'), 5, '860101-01-1234', 'Spm', 'Full Time', 2, 23, 'General Manager', 'Management', 'P0011');
INSERT INTO EMPLOYEE VALUES ('E0002', TO_DATE('29/5/2021', 'DD/MM/YYYY'), 2, '950520-08-5678', 'Degree', 'Part Time', 3, 24, 'Golf Course Manager', 'Management', 'P0012');
INSERT INTO EMPLOYEE VALUES ('E0003', TO_DATE('26/9/2015', 'DD/MM/YYYY'), 8, '880215-10-9012', 'Degree', 'Full Time', 1, 20, 'ProShop Manager', 'Management', 'P0013');
INSERT INTO EMPLOYEE VALUES ('E0004', TO_DATE('18/2/2020', 'DD/MM/YYYY'), 3, '920712-03-3456', 'Degree', 'Full Time', 3, 19, 'Golf Instructor', 'Instructions', 'P0014');
INSERT INTO EMPLOYEE VALUES ('E0005', TO_DATE('18/1/2020', 'DD/MM/YYYY'), 3, '830303-07-7890', 'Spm', 'Part Time', 3, 15, 'Caddie', 'Operations', 'P0015');
INSERT INTO EMPLOYEE VALUES ('E0006', TO_DATE('07/12/2019', 'DD/MM/YYYY'), 4, '890608-12-2345', 'Spm', 'Full Time', 2, 13, 'Food and Beverage Manager', 'Hospitality Management', 'P0016');
INSERT INTO EMPLOYEE VALUES ('E0007', TO_DATE('25/4/2012', 'DD/MM/YYYY'), 11, '910420-09-6789', 'Degree', 'Full Time', 4, 10, 'Golf Cart Attendant', 'Operations', 'P0017');
INSERT INTO EMPLOYEE VALUES ('E0008', TO_DATE('02/10/2010', 'DD/MM/YYYY'), 13, '960102-02-0123', 'Diploma', 'Full Time', 2, 25, 'Events Coordinator', 'Operations', 'P0018');
INSERT INTO EMPLOYEE VALUES ('E0009', TO_DATE('19/3/2021', 'DD/MM/YYYY'), 2, '840706-05-4567', 'Spm', 'Part Time', 1, 19, 'Maintenance Technician', 'Operations', 'P0019');
INSERT INTO EMPLOYEE VALUES ('E0010', TO_DATE('21/5/2022', 'DD/MM/YYYY'), 1, '930510-11-8901', 'Degree', 'Full Time', 2, 18, 'Caddie', 'Operations', 'P0020');



CREATE TABLE Customer (
    C_CustomerID VARCHAR2(20) PRIMARY KEY,
    C_Nationality VARCHAR(50) NOT NULL,
    C_BloodType VARCHAR2(50) NOT NULL,
    C_Allergen VARCHAR2(50) NOT NULL,
    C_PreferredLanguage VARCHAR2(50) NOT NULL,
    C_PhoneNum VARCHAR2(13) NOT NULL,
    C_GroupSize VARCHAR2(50),
    C_BankAccountType VARCHAR2(20),
    C_BankAccountNum INTEGER(12) NOT NULL,
    C_SSN VARCHAR2(11),
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_C_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

SELECT * FROM CUSTOMER;
DROP TABLE CUSTOMER;

INSERT INTO CUSTOMER VALUES ('C0001', 'Malaysian', 'A+', 'None', 'English', '60123456789', 'Solo', 'Savings', '1578 6645 8364', '123-45-6789', 'P0001');
INSERT INTO CUSTOMER VALUES ('C0002', 'Malaysian', 'O-', 'Shellfish', 'Malay', '60123456788', 'Couple', 'Current', '3063 0706 0485', '987-65-4321', 'P0002');
INSERT INTO CUSTOMER VALUES ('C0003', 'Malaysian', 'B+', 'Peanuts', 'Malay', '60123456787', 'Solo', 'Savings', '3120 0208 7790', '567-89-0123', 'P0003');
INSERT INTO CUSTOMER VALUES ('C0004', 'Malaysian', 'AB-', 'Dairy', 'Mandarin', '60123456786', 'Family', 'Savings', '1531 0477 9273', '098-76-5432', 'P0004');
INSERT INTO CUSTOMER VALUES ('C0005', 'Malaysian', 'A-', 'Gluten', 'English', '60123456785', 'Family', 'Current', '1562 0439 8853', '432-10-9876', 'P0005');
INSERT INTO CUSTOMER VALUES ('C0006', 'Malaysian', 'O+', 'None', 'Malay', '60123456784', 'Solo', 'Savings', '0144 2489 1790', '567-89-0123', 'P0006');
INSERT INTO CUSTOMER VALUES ('C0007', 'Malaysian', 'B-', 'Shellfish', 'Malay', '60123456783', 'Couple', 'Current', '9093 4667 8954', '901-23-4567', 'P0007');
INSERT INTO CUSTOMER VALUES ('C0008', 'Malaysian', 'A+', 'Peanuts', 'Malay', '60123456782', 'Couple', 'Savings', '0015 4380 7832', '345-67-8901', 'P0008');
INSERT INTO CUSTOMER VALUES ('C0009', 'Malaysian', 'AB+', 'Lactose', 'English', '60123456781', 'Family', 'Current', '8022 0976 3483', '789-01-2345', 'P0009');
INSERT INTO CUSTOMER VALUES ('C0010', 'Malaysian', 'O+', 'None', 'Tamil', '60123456780', 'Solo', 'Savings', '1562 4177 8345', '012-34-5678', 'P0010');


CREATE TABLE Golfer (
    G_GolferID VARCHAR2(20) PRIMARY KEY,
    G_PreferredTeeTime VARCHAR(10) NOT NULL,
    G_Level VARCHAR2(20) NOT NULL,
    G_PhysicalFitness VARCHAR2(20) NOT NULL,
    G_Handicap INTEGER NOT NULL,
    G_HighestAchievement VARCHAR2(50) NOT NULL,
    G_Sponsorship VARCHAR2(20) NOT NULL,
    G_SocialAccountType VARCHAR2(20),
    G_SocialAccount VARCHAR2(50),
    G_CumulativeScore INTEGER DEFAULT 0,
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_G_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

SELECT * FROM GOLFER;
DROP TABLE GOLFER;

INSERT INTO GOLFER VALUES ('G0001', '08:00AM', 'Beginner', 'Moderate', 12, 'Club Champion', 'Yes', 'Facebook', '@daiyan_ghazi', 580, 'P0001');
INSERT INTO GOLFER VALUES ('G0002', '09:30AM', 'Intermediate', 'Good', 8, 'Tournament Winner', 'Yes', 'Instagram', '@olivia_stn', 640, 'P0002');
INSERT INTO GOLFER VALUES ('G0003', '07:45AM', 'Advanced', 'Excellent', 16, 'Hole-in-One', 'No', 'Twitter', '@jack_forester', 520, 'P0003');
INSERT INTO GOLFER VALUES ('G0004', '10:00AM', 'Beginner', 'Fair', 10, 'Longest Drive Winner', 'Yes', 'Instagram', '@zahra_zaza', 590, 'P0004');
INSERT INTO GOLFER VALUES ('G0005', '08:30AM', 'Intermediate', 'Excellent', 14, 'Course Record', 'Yes', 'Facebook', '@faizalismail', 610, 'P0005');
INSERT INTO GOLFER VALUES ('G0006', '11:15AM', 'Advanced', 'Excellent', 9, 'Tournament Runner-up', 'No', 'Twitter', '@aisha_z', 560, 'P0021');
INSERT INTO GOLFER VALUES ('G0007', '09:00AM', 'Intermediate', 'Good', 18, 'Most Improved Golfer', 'No', 'Instagram', '@arif_ibrahim', 500, 'P0022');
INSERT INTO GOLFER VALUES ('G0008', '07:30AM', 'Beginner', 'Fair', 12, 'Ace of Aces', 'Yes', 'Facebook', '@hayusof', 600, 'P0023');
INSERT INTO GOLFER VALUES ('G0009', '10:30AM', 'Intermediate', 'Moderate', 15, 'Eagle Master', 'Yes', 'Instagram', '@irfan_ahmad', 570, 'P0024');
INSERT INTO GOLFER VALUES ('G0010', '08:15AM', 'Advanced', 'Excellent', 11, 'Rookie of the Year', 'No', 'Twitter', '@nurul_rahman', 550, 'P0025');


CREATE TABLE Membership (
    M_MembershipID VARCHAR2(20) PRIMARY KEY,
    M_Type VARCHAR2(20) NOT NULL,
    M_StartDate DATE NOT NULL,
    M_EndDate DATE NOT NULL,
    M_RenewalDate DATE NOT NULL,
    M_Fee INTEGER NOT NULL,
    M_ActivePeriod VARCHAR2(20) NOT NULL,
    M_Status VARCHAR2(20) NOT NULL,
    M_Benefits VARCHAR2(255),
    M_OtherClubStatus VARCHAR2(20),
    P_PersonID VARCHAR2(20),
    CONSTRAINT FK_M_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

SELECT * FROM MEMBERSHIP;
DROP TABLE MEMBERSHIP;

INSERT INTO MEMBERSHIP VALUES('M0001', '1 Year', TO_DATE('19/01/2022', 'DD/MM/YYYY'), TO_DATE('19/01/2023', 'DD/MM/YYYY'), TO_DATE('20/01/2023', 'DD/MM/YYYY'), 6360.00, '1 Year', 'Active', 'Either 1 of  Reservation, Equipment, GolfEvent', 'Inactive', 'P0002');
INSERT INTO MEMBERSHIP VALUES('M0002', '3 Year', TO_DATE('13/04/2021', 'DD/MM/YYYY'), TO_DATE('13/04/2024', 'DD/MM/YYYY'), TO_DATE('14/04/2024', 'DD/MM/YYYY'), 14310.00, '2 Year', 'Active', 'Reservation, Equipment, Golfevent', 'Inactive', 'P0004');
INSERT INTO MEMBERSHIP VALUES('M0003', '2 Year', TO_DATE('20/03/2022', 'DD/MM/YYYY'), TO_DATE('20/03/2024', 'DD/MM/YYYY'), TO_DATE('21/03/2024', 'DD/MM/YYYY'), 10600.00, '0 Year', 'Inactive', 'Either 2 of  Reservation, Equipment, GolfEvent', 'Active', 'P0006');
INSERT INTO MEMBERSHIP VALUES('M0004', '3 Year', TO_DATE('28/06/2020', 'DD/MM/YYYY'), TO_DATE('28/06/2023', 'DD/MM/YYYY'), TO_DATE('29/06/2023', 'DD/MM/YYYY'), 14310.00, '1 Year', 'Inactive', 'Reservation, Equipment, GolfEvent', 'Active', 'P0008');
INSERT INTO MEMBERSHIP VALUES('M0005', '1 Year', TO_DATE('30/05/2023', 'DD/MM/YYYY'), TO_DATE('30/05/2024', 'DD/MM/YYYY'), TO_DATE('31/05/2024', 'DD/MM/YYYY'), 6360.00, '1 Year', 'Active', 'Either 1 of  Reservation, Equipment, GolfEvent', 'Inactive', 'P0020');
INSERT INTO MEMBERSHIP VALUES('M0006', '1 Year', TO_DATE('25/09/2022', 'DD/MM/YYYY'), TO_DATE('25/09/2023', 'DD/MM/YYYY'), TO_DATE('26/09/2023', 'DD/MM/YYYY'), 6360.00, '0 Year', 'Inactive', 'Either 1 of  Reservation, Equipment, GolfEvent', 'Active', 'P0021');
INSERT INTO MEMBERSHIP VALUES('M0007', '3 Year', TO_DATE('17/12/2020', 'DD/MM/YYYY'), TO_DATE('17/12/2023', 'DD/MM/YYYY'), TO_DATE('18/12/2023', 'DD/MM/YYYY'), 14310.00, '2 Year', 'Active', 'Reservation, Equipment, Golfevent', 'Inactive', 'P0023');
INSERT INTO MEMBERSHIP VALUES('M0008', '2 Year', TO_DATE('26/10/2022', 'DD/MM/YYYY'), TO_DATE('26/10/2024', 'DD/MM/YYYY'), TO_DATE('27/10/2024', 'DD/MM/YYYY'), 10600.00, '2 Year', 'Active', 'Either 2 of  Reservation, Equipment, GolfEvent', 'Inactive', 'P0025');
INSERT INTO MEMBERSHIP VALUES('M0009', '2 Year', TO_DATE('22/06/2023', 'DD/MM/YYYY'), TO_DATE('22/06/2025', 'DD/MM/YYYY'), TO_DATE('23/06/2026', 'DD/MM/YYYY'), 10600.00, '0 Year', 'Inactive', 'Either 2 of  Reservation, Equipment, GolfEvent', 'Active', 'P0027');
INSERT INTO MEMBERSHIP VALUES('M0010', '3 Year', TO_DATE('18/02/2022', 'DD/MM/YYYY'), TO_DATE('18/02/2025', 'DD/MM/YYYY'), TO_DATE('19/02/2025', 'DD/MM/YYYY'), 14310.00, '0 Year', 'Inactive', 'Reservation, Equipment, Golfevent', 'Active', 'P0029');



CREATE TABLE PersonalDetail (
    PD_PersonalID INTEGER PRIMARY KEY,
    PD_IdentificationNum INTEGER NOT NULL,
    PD_BirthDate DATE NOT NULL,
    PD_BirthPlace VARCHAR(255) NOT NULL,
    PD_PassportNum VARCHAR2(10) NOT NULL,
    PD_Race VARCHAR2(10) NOT NULL,
    PD_Religion VARCHAR2(10) NOT NULL,
    PD_MaritalStatus VARCHAR2(10) NOT NULL,
    PD_SpouseName VARCHAR2(50),
    PD_ChildrenNum INTEGER,
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PD_Membership FOREIGN KEY (M_MembershipID) REFERENCES Membership (M_MembershipID) ON DELETE CASCADE
);

SELECT * FROM PERSONALDETAIL;
DROP TABLE PERSONALDETAIL;

INSERT INTO PERSONALDETAIL VALUES ('PD001', '920101-14-5678', TO_DATE('01/01/1992', 'DD/MM/YYYY'), 'Kuala Lumpur', 'A12345678', 'Malay', 'Islam', 'Married', 'Nurul Aisyah', 2, 'M0001');
INSERT INTO PERSONALDETAIL VALUES ('PD002', '880212-06-1234', TO_DATE('12/02/1988', 'DD/MM/YYYY'), 'Penang', 'B98765432', 'Chinese', 'Buddhism', 'Single', 'None', 0, 'M0002');
INSERT INTO PERSONALDETAIL VALUES ('PD003', '910503-08-9876', TO_DATE('03/05/1991', 'DD/MM/YYYY'), 'Johor Bahru', 'C24681357', 'Indian', 'Hinduism', 'Married', 'Rajesh Kumar', 1, 'M0003');
INSERT INTO PERSONALDETAIL VALUES ('PD004', '930714-10-2468', TO_DATE('14/07/1993', 'DD/MM/YYYY'), 'Langkawi', 'D13579246', 'Malay', 'Islam', 'Single', 'None', 0, 'M0004');
INSERT INTO PERSONALDETAIL VALUES ('PD005', '890825-05-1357', TO_DATE('25/08/1989', 'DD/MM/YYYY'), 'Kuching', 'E98765431', 'Chinese', 'Buddhism', 'Married', 'Tan Wei Ling', 3, 'M0005');
INSERT INTO PERSONALDETAIL VALUES ('PD006', '900306-12-4680', TO_DATE('06/03/1990', 'DD/MM/YYYY'), 'Kota Kinabalu', 'F24681359', 'Indian', 'Sikhism', 'Single', 'None', 0, 'M0006');
INSERT INTO PERSONALDETAIL VALUES ('PD007', '920717-08-5791', TO_DATE('17/07/1992', 'DD/MM/YYYY'), 'Cameron Highlands', 'G98765430', 'Malay', 'Islam', 'Married', 'Muhammad Ali', 2, 'M0007');
INSERT INTO PERSONALDETAIL VALUES ('PD008', '870528-09-3579', TO_DATE('28/05/1987', 'DD/MM/YYYY'), 'Genting Highland', 'H13579248', 'Chinese', 'Christianity', 'Single', 'None', 0, 'M0008');
INSERT INTO PERSONALDETAIL VALUES ('PD009', '910829-06-8024', TO_DATE('29/08/1991', 'DD/MM/YYYY'), 'Port Dickson', 'I98765429', 'Malay', 'Islam', 'Married', 'Siti Aminah', 1, 'M0009');
INSERT INTO PERSONALDETAIL VALUES ('PD010', '940610-07-9135', TO_DATE('10/06/1994', 'DD/MM/YYYY'), 'Melaka', 'J24681358', 'Chinese', 'Buddhism', 'Single', 'None', 0, 'M0010');


CREATE TABLE ProfessionalDetail (
    PR_ProfessionalID INTEGER PRIMARY KEY,
    PR_CompanyName VARCHAR2(30) NOT NULL,
    PR_Designation VARCHAR2(30) NOT NULL,
    PR_CompanyAddress VARCHAR2(100) NOT NULL,
    PR_CompanyEmail VARCHAR2(30) NOT NULL,
    PR_CompanyContact VARCHAR2(13) NOT NULL,
    PR_OfficeContact VARCHAR2(13) NOT NULL,
    PR_BusinessNature VARCHAR2(30),
    PR_CompanyStatus VARCHAR2(20) NOT NULL,
    PR_SSM_RegNum VARCHAR2(12) NOT NULL,
    PR_SSM_RegStatus VARCHAR2(20) NOT NULL,
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PR_Membership FOREIGN KEY (M_MembershipID) REFERENCES Membership (M_MembershipID) ON DELETE CASCADE
);

SELECT * FROM PROFESSIONALDETAIL;
DROP TABLE PERSONALDETAIL;

INSERT INTO PROFESSIONALDETAIL VALUES ('PR001', 'Golf Course Experts', 'Golf Course Designer', '123 Jalan Golf, Kuala Lumpur', 'info@golfexperts.com', '60123456789', '603123463', 'Sports', 'Active', '1234567890', 'Valid', 'M0001');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR002', 'Green Maintenance', 'Landscape Specialist', '456 Jalan Putra, Penang', 'maintenance@green.com', '60109876543', '604368379', 'Landscaping', 'Active', '9876543216', 'Valid', 'M0002');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR003', 'Golf Pro Academy', 'Golf Instructor', '789 Jalan Tun, Johor Bahru', 'academy@golfpro.com', '60165432109', '603729272', 'Education', 'Active', '9876543210', 'Valid', 'M0003');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR004', 'Golf Equipment Supply', 'Golf Equipment Supplier', '321 Jalan Raja, Langkawi', 'sales@golfsupply.com', '60198765432', '602635376', 'Retail', 'Active', '5678901234', 'Valid', 'M0004');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR005', 'Event Marketing Management Solution', 'Event Planner', '654 Jalan Pantai, Kota Kinabalu', 'events@marketing.com', '60126563753', '602636328', 'Hospitality', 'Active', '4321098765', 'Valid', 'M0005');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR006', 'Business Marketing', 'Marketing Specialist', '987 Jalan Merdeka, Malacca', 'marketing@business.com', '60173749328', '602635372', 'Marketing', 'Active', '9876543219', 'Valid', 'M0006');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR007', 'Malayan Banking', 'Financial Advisor', '123 Jalan Kinabalu, Kuching', 'finance@maybank.com', '60174927392', '602632536', 'Finance', 'Active', '5678901234', 'Valid', 'M0007');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR008', 'Real Estate Property', 'Real Estate Agent', '456 Jalan Highland, Cameron', 'property@estate.com', '60183793799', '602363632', 'Real Estate', 'Active', '1098765432', 'Valid', 'M0008');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR009', 'Informatics Technology', 'IT Solutions', '789 Jalan Ipoh, Ipoh', 'tech@informatics.com', '60162382362', '602735287', 'Technology', 'Active', '5432109876', 'Valid', 'M0009');
INSERT INTO PROFESSIONALDETAIL VALUES ('PR010', 'Travel Agency', 'Travel Consultant', '321 Jalan Genting, Genting', 'travel@agency.com', '60163522629', '602725372', 'Travel', 'Active', '8765432109', 'Valid', 'M0010');


CREATE TABLE Address (
    AD_AddressID INTEGER PRIMARY KEY,
    AD_Unit VARCHAR2(10) NOT NULL,
    AD_Street1 VARCHAR2(30) NOT NULL,
    AD_Street2 VARCHAR2(30),
    AD_Street3 VARCHAR2(30),
    AD_PostalCode VARCHAR2(5) NOT NULL,
    AD_City VARCHAR2(20) NOT NULL,
    AD_District VARCHAR2(20) NOT NULL,
    AD_State VARCHAR2(20) NOT NULL,
    AD_Country VARCHAR2(20) NOT NULL,
    P_PersonID VARCHAR2(20),
    PD_PersonalID VARCHAR2(20) DEFAULT NULL,
    CONSTRAINT FK_AD_Person FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT FK_AD_Personal FOREIGN KEY (PD_PersonalID) REFERENCES PersonalDetail (PD_PersonalID) ON DELETE CASCADE
);

SELECT * FROM ADDRESS;
DROP TABLE ADDRESS;

INSERT INTO ADDRESS VALUES ('AD001', '5', 'Rua Augusta', NULL, NULL, '1100-053', 'Lisbon', NULL, 'Lisbon', 'Portugal', 'P0001', 'PD001');
INSERT INTO ADDRESS VALUES ('AD002', '15', 'Jalan Ampang', NULL, NULL, '50450', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0002', NULL);
INSERT INTO ADDRESS VALUES ('AD003', '17', 'Piazza San Marco', NULL, NULL, '30124', 'Venice', NULL, 'Veneto', 'Italy', 'P0003', NULL);
INSERT INTO ADDRESS VALUES ('AD004', '25', 'Jalan Sultan Ismail', 'Suite 12', NULL, '50250', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0004', NULL);
INSERT INTO ADDRESS VALUES ('AD005', '13', 'Oxford Street', NULL, NULL, '50455', 'London', 'Westminster', 'England', 'United Kingdom', 'P0005', 'PD002');
INSERT INTO ADDRESS VALUES ('AD006', '19', 'Persiaran KLCC', 'Level 20', NULL, '50088', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0006', 'PD003');
INSERT INTO ADDRESS VALUES ('AD007', '21', 'Jalan Tun Sambanthan', NULL, NULL, '30000', 'Ipoh', NULL, 'Perak', 'Malaysia', 'P0007', 'PD004');
INSERT INTO ADDRESS VALUES ('AD008', '4', 'Persiaran Gurney', 'Lot 5', NULL, '10250', 'George Town', 'Timur Laut', 'Pulau Pinang', 'Malaysia', 'P0008', NULL);
INSERT INTO ADDRESS VALUES ('AD009', '6', 'Jalan Tunku Abdul Rahman', 'Lot 3', NULL, '50100', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0009', 'PD005');
INSERT INTO ADDRESS VALUES ('AD010', '2', 'Jalan Dato Onn', 'Suite 8', NULL, '50480', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0010', NULL);
INSERT INTO ADDRESS VALUES ('AD011', '10', 'Jalan Raja', NULL, NULL, '50000', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0011', 'PD006');
INSERT INTO ADDRESS VALUES ('AD012', '47', 'Jalan Tun Razak', NULL, NULL, '50400', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0012', NULL);
INSERT INTO ADDRESS VALUES ('AD013', '33', 'Jalan Puchong', NULL, NULL, '47100', 'Puchong', NULL, 'Selangor', 'Malaysia', 'P0013', NULL);
INSERT INTO ADDRESS VALUES ('AD014', '22', 'Jalan Ipoh', NULL, NULL, '51200', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0014', NULL);
INSERT INTO ADDRESS VALUES ('AD015', '55', 'Jalan Ampang', NULL, NULL, '50450', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0015', NULL);
INSERT INTO ADDRESS VALUES ('AD016', '6', 'Jalan Gasing', NULL, NULL, '46000', 'Petaling Jaya', NULL, 'Selangor', 'Malaysia', 'P0016', 'PD007');
INSERT INTO ADDRESS VALUES ('AD017', '24', 'Jalan Sultan Ismail', NULL, NULL, '50250', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0017', 'PD008');
INSERT INTO ADDRESS VALUES ('AD018', '26', 'Jalan Bukit Bintang', NULL, NULL, '55100', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0018', NULL);
INSERT INTO ADDRESS VALUES ('AD019', '9', 'Jalan Mahameru', NULL, NULL, '50630', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0019', NULL);
INSERT INTO ADDRESS VALUES ('AD020', '7', 'Jalan Klang Lama', NULL, NULL, '58000', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0020', NULL);
INSERT INTO ADDRESS VALUES ('AD021', '11', 'Jalan Raja Chulan', NULL, NULL, '50200', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0021', NULL);
INSERT INTO ADDRESS VALUES ('AD022', '12', 'Jalan Pudu', NULL, NULL, '55100', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0022', NULL);
INSERT INTO ADDRESS VALUES ('AD023', '13', 'Jalan Imbi', NULL, NULL, '55100', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0023', NULL);
INSERT INTO ADDRESS VALUES ('AD024', '14', 'Jalan Duta', NULL, NULL, '50480', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0024', 'PD009');
INSERT INTO ADDRESS VALUES ('AD025', '15', 'Jalan Sultan', NULL, NULL, '50000', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0025', NULL);
INSERT INTO ADDRESS VALUES ('AD026', '16', 'Jalan Tunku Abdul Rahman', NULL, NULL, '80100', 'Johor Bahru', NULL, 'Johor', 'Malaysia', 'P0026', NULL);
INSERT INTO ADDRESS VALUES ('AD027', '17', 'Jalan Syed Putra', NULL, NULL, '50460', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0027', 'PD010');
INSERT INTO ADDRESS VALUES ('AD028', '18', 'Jalan Ampang Hilir', NULL, NULL, '55000', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0028', NULL);
INSERT INTO ADDRESS VALUES ('AD029', '19', 'Jalan Raja Muda', NULL, NULL, '50300', 'Kuala Lumpur', NULL, 'Wilayah Persekutuan', 'Malaysia', 'P0029', NULL);
INSERT INTO ADDRESS VALUES ('AD030', '20', 'Jalan Bukit Bendera', NULL, NULL, '11200', 'Tanjung Bungah', NULL, 'Penang', 'Malaysia', 'P0030', NULL);


CREATE TABLE Order_ (
    O_OrderID VARCHAR2(20) PRIMARY KEY,
    O_Date DATE NOT NULL,
    O_Type VARCHAR2(20) NOT NULL,
    O_ShippingAddress VARCHAR2(50) NOT NULL,
    O_Status VARCHAR2(20) NOT NULL,
    O_Quantity INTEGER,
    O_PromoDiscount VARCHAR2(20),
    O_Membership VARCHAR2(20) NOT NULL,
    O_PaymentStatus VARCHAR2(20) NOT NULL,
    O_NetPrice INTEGER
);

SELECT * FROM ORDER_;
DROP TABLE ORDER_;

INSERT INTO ORDER_ VALUES ('O0001', '15/05/22', 'Online', '123 Jalan Golf, Kuala Lumpur', 'Pending', 2, '10%', 'Yes', 'Paid', 'RM250.00');
INSERT INTO ORDER_ VALUES ('O0002', '02/06/22', 'In_Store', '456 Persiaran Resort, Penang', 'Processing', 4, '0%', 'No', 'Paid', 'RM180.00');
INSERT INTO ORDER_ VALUES ('O0003', '19/07/22', 'Phone', '789 Golf View Avenue, Johor Bahru', 'Shipped', 1, '5%', 'Yes', 'Pending', 'RM120.00');
INSERT INTO ORDER_ VALUES ('O0004', '05/08/22', 'Online', '321 Green Lane, Langkawi', 'Pending', 3, '0%', 'No', 'Paid', 'RM90.00');
INSERT INTO ORDER_ VALUES ('O0005', '14/09/22', 'In_store', '567 Fairway Road, Kuching', 'Processing', 2, '10%', 'Yes', 'Paid', 'RM150.00');
INSERT INTO ORDER_ VALUES ('O0006', '01/10/22', 'Phone', '987 Tee Street, Kota Kinabalu', 'Shipped', 1, '0%', 'No', 'Paid', 'RM80.00');
INSERT INTO ORDER_ VALUES ('O0007', '18/11/22', 'Online', '654 Putt Lane, Cameron Highlands', 'Pending', 1, '15%', 'Yes', 'Pending', 'RM70.00');
INSERT INTO ORDER_ VALUES ('O0008', '03/12/22', 'In-store', '321 Slice Avenue, Genting Highlands', 'Processing', 3, '5%', 'No', 'Paid', 'RM210.00');
INSERT INTO ORDER_ VALUES ('O0009', '20/01/23', 'Phone', '789 Eagle Drive, Port Dickson', 'Shipped', 2, '0%', 'Yes', 'Pending', 'RM160.00');
INSERT INTO ORDER_ VALUES ('O0010', '07/02/23', 'Online', '456 Putter Lane, Melaka', 'Pending', 4, '10%', 'No', 'Paid', 'RM280.00');


CREATE TABLE ItemInventory (
    I_InventoryID VARCHAR2(20) PRIMARY KEY,
    I_Name VARCHAR2(50) NOT NULL,
    I_Category VARCHAR2(50) NOT NULL,
    I_StockQuantity INTEGER,
    I_Price INTEGER,
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

SELECT * FROM ITEMINVENTORY;
DROP TABLE ITEMINVENTORY;

INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Clubs', 'Equipment', 20, 'RM150.00', 'ABC Golf Co.', 'XYZ Sports', '20/06/23', 'New', 'In Stock', 'O0001', NULL);
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Balls', 'Equipment', 100, 'RM20.00', 'XYZ Golf Inc.', 'PQR Sports', '21/06/23', 'New', 'In Stock', 'O0002', NULL);
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Shoes', 'Apparel', 50, 'RM80.00', 'DEF Golf Ltd.', 'LMN Sports', '22/06/23', 'New', 'In Stock', 'O0003', NULL);
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Bags', 'Equipment', 30, 'RM200.00', 'GHI Golf Co.', 'ABC Sports', '23/06/23', 'New', 'In Stock', 'O0004', NULL);
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Gloves', 'Apparel', 75, 'RM150.00', 'JKL Golf Inc.', 'XYZ Sports', '24/06/23', 'New', 'In Stock', 'O0005', NULL);
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Towels', 'Accessories', 50, 'RM10.00', 'MNO Golf Ltd.', 'PQR Sports', '25/06/23', 'New', 'In Stock', NULL, 'ER001');
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Tees', 'Accessories', 200, 'RM5.00', 'RST Golf Co.', 'LMN Sports', '26/06/23', 'New', 'In Stock', NULL, 'ER002');
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Cart', 'Equipment', 10, 'RM500.00', 'UVW Golf Inc.', 'ABC Sports', '27/06/23', 'New', 'In Stock', NULL, 'ER003');
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Rangefinder', 'Equipment', 15, 'RM150.00', 'XYZ Golf Ltd.', 'PQR Sports', '28/06/23', 'New', 'In Stock', NULL, 'ER004');
INSERT INTO ITEMINVENTORY VALUES ('I0001', 'Golf Ball Retrievers', 'Accessories', 30, 'RM25.00', 'GHI Golf Co.', 'LMN Sports', '29/06/23', 'New', 'In Stock', NULL, 'ER005');


CREATE TABLE EquipmentRental (
    ER_RentalID VARCHAR2(20) PRIMARY KEY,
    ER_EquipmentName VARCHAR2(20) NOT NULL,
    ER_RentalDate VARCHAR2(20) NOT NULL,
    ER_RentalTime VARCHAR2(20) NOT NULL,
    ER_RentalDuration VARCHAR2(20) NOT NULL,
    ER_ReturnDate VARCHAR2(20) NOT NULL,
    ER_ReturnTime VARCHAR2(20) NOT NULL,
    ER_LateFee INTEGER,
    ER_DamageDesc VARCHAR2(50),
    ER_DamageFee INTEGER,
    ER_RentalPrice INTEGER,
    ER_RentalStatus VARCHAR2(20) NOT NULL
);

INSERT INTO EQUIPMENTRENTAL VALUES ('ER001', 'Golf Clubs', '20/06/23', '9:00 AM', '3 hours', '20/06/23', '12:00 PM', 0, 'NONE', 0, 50, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Shoes', '21/06/23', '2:00 PM', '4 hours', '21/06/23', '6:00 PM', 0, 'NONE', 0, 25, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Cart', '22/06/23', '10:00 AM', '6 hours', '22/06/23', '4:00 PM', 0, 'NONE', 0, 80, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Balls', '23/06/23', '8:00 AM', '2 hours', '23/06/23', '10:00 AM', 0, 'NONE', 0, 10, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Gloves', '24/06/23', '11:00 AM', '5 hours', '24/06/23', '4:00 PM', 0, 'NONE', 0, 15, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Towels', '25/06/23', '3:00 PM', '3 hours', '25/06/23', '6:00 PM', 0, 'NONE', 0, 12, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Ball Retrievers', '26/06/23', '9:00 AM', '24 hours', '27/06/23', '9:00 AM', 0, 'NONE', 0, 20, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Tees', '27/06/23', '10:00 AM', '2 hours', '27/06/23', '12:00 PM', 0, 'NONE', 0, 80, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Rangefinder', '28/06/23', '1:00 PM', '4 hours', '28/06/23', '5:00 PM', 0, 'NONE', 0, 30, 'Returned');
INSERT INTO EQUIPMENTRENTAL VALUES ('ER001','Golf Bags', '29/06/23', '11:00 AM', '24 hours', '30/06/23', '11:00 AM', 0, 'NONE', 0, 40, 'Returned');


CREATE TABLE Payment (
    PA_PaymentID VARCHAR2(20) PRIMARY KEY,
    PA_Method VARCHAR2(30) NOT NULL,
    PA_Date VARCHAR2(20) NOT NULL,
    PA_Time VARCHAR2(20) NOT NULL,
    PA_Amount NUMBER(8,2),
    PA_Status VARCHAR2(20),
    DP_DepartmentID VARCHAR2(20),
    M_MembershipID VARCHAR2(20),
    CONSTRAINT FK_PA_Department FOREIGN KEY (DP_DepartmentID) REFERENCES Department (DP_DepartmentID) ON DELETE CASCADE
);

SELECT * FROM PAYMENT;
DROP TABLE PAYMENT;

INSERT INTO PAYMENT VALUES ('PA001', 'Credit Card', '01/06/23', '10:30 AM', 250, 'Paid', 1101, 1101);
INSERT INTO PAYMENT VALUES ('PA002', 'Cash', '02/06/23', '11:15 AM', 150, 'Paid', 1102, 1102);
INSERT INTO PAYMENT VALUES ('PA003', 'Debit Card', '03/06/23', '2:45 PM', 180.5, 'Paid', 1103, 1103);
INSERT INTO PAYMENT VALUES ('PA004', 'Online Banking', '04/06/23', '9:00 AM', 320, 'Paid', 1104, 1104);
INSERT INTO PAYMENT VALUES ('PA005', 'Cash', '05/06/23', '4:20 PM', 90.75, 'Paid', 1105, 1105);
INSERT INTO PAYMENT VALUES ('PA006', 'Credit Card', '06/06/23', '1:10 PM', 410.2, 'Paid', 1106, 1106);
INSERT INTO PAYMENT VALUES ('PA007', 'Online Banking', '07/06/23', '10:50 AM', 275.8, 'Paid', 1107, 1107);
INSERT INTO PAYMENT VALUES ('PA008', 'Debit Card', '08/06/23', '3:30 PM', 150, 'Paid', 1108, 1108);
INSERT INTO PAYMENT VALUES ('PA009', 'Cash', '09/06/23', '11:45 AM', 200.5, 'Paid', 1109, 1109);
INSERT INTO PAYMENT VALUES ('PA010', 'Credit Card', '10/06/23', '5:00 PM', 180.5, 'Paid', 1110, 1110);
INSERT INTO PAYMENT VALUES ('PA011', 'Online Banking', '11/06/23', '9:20 AM', 350.25, 'Paid', 1101, 1101);
INSERT INTO PAYMENT VALUES ('PA012', 'Cash', '12/06/23', '12:30 PM', 150, 'Paid', 1102, 1102);
INSERT INTO PAYMENT VALUES ('PA013', 'Debit Card', '13/06/23', '3:15 PM', 210.5, 'Paid', 1103, 1103);
INSERT INTO PAYMENT VALUES ('PA014', 'Credit Card', '14/06/23', '11:00 AM', 190.8, 'Paid', 1104, 1104);
INSERT INTO PAYMENT VALUES ('PA015', 'Online Banking', '15/06/23', '2:40 PM', 290.75, 'Paid', 1105, 1105);
INSERT INTO PAYMENT VALUES ('PA016', 'Cash', '16/06/23', '9:50 AM', 160.2, 'Paid', 1106, 1106);
INSERT INTO PAYMENT VALUES ('PA017', 'Debit Card', '17/06/23', '4:05 PM', 220, 'Paid', 1107, 1107);
INSERT INTO PAYMENT VALUES ('PA018', 'Credit Card', '18/06/23', '1:20 PM', 410.5, 'Paid', 1108, 1108);
INSERT INTO PAYMENT VALUES ('PA019', 'Online Banking', '19/06/23', '10:15 AM', 175, 'Paid', 1109, 1109);
INSERT INTO PAYMENT VALUES ('PA020', 'Cash', '20/06/23', '3:55 PM', 250.8, 'Paid', 1110, 1110);


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

SELECT * FROM INVOICE;
DROP TABLE INVOICE;

INSERT INTO INVOICE VALUES ('IN001', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '5, Rua Agusta,Lisbon', 'Smith@gmail.com', '30 days', '15/07/23', 0.06, 2500.00, 'Please make payment by the due date. Thank you for choosing our golf resort.', 'PA001');
INSERT INTO INVOICE VALUES ('IN002', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '15, Jalan Ampang, Kuala Lumpur', 'Eskandar@gmail.com', '15 days', '10/07/23', 0.06, 1200, 'Reminder: Payment is due soon. Kindly settle the outstanding amount by the due date.', 'PA002');
INSERT INTO INVOICE VALUES ('IN003', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '17, Piazza San Marco, Venice', 'Dheo@gmail.com', '30 days', '20/07/23', 0.06, 3800, 'This invoice includes charges for green fees, cart rental, and F&B services.', 'PA003');
INSERT INTO INVOICE VALUES ('IN004', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '25, Jalan Sultan Ismail, Kuala Lumpur', 'Chua@gmail.com', '30 days', '18/07/23', 0.06, 1800, 'We appreciate your business. Please remit the payment on time to avoid any inconvenience.', 'PA004');
INSERT INTO INVOICE VALUES ('IN005', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '13, Oxford Street, London', 'Fluer@gmail.com', '45 days', '25/07/23', 0.06, 4500, 'For any invoice-related queries, please contact our accounts department.', 'PA005');
INSERT INTO INVOICE VALUES ('IN006', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '19, Persiaran KLCC, Kuala Lumpur', 'Dara@gmail.com', '15 days', '12/07/23', 0.06, 900, 'Thank you for your recent visit. We hope you enjoyed your golfing experience.', 'PA006');
INSERT INTO INVOICE VALUES ('IN007', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '21, Jalan Tun Sambanthan, Ipoh, Perak', 'Haidar@gmail.com', '30 days', '22/07/23', 0.06, 2300, 'Kindly settle the invoice amount at your earliest convenience.', 'PA007');
INSERT INTO INVOICE VALUES ('IN008', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '4, Persiaran Gurney, George Town', 'Zainab@gmail.com', '45 days', '28/07/23', 0.06, 3200, 'Your invoice is attached. Please review the details and make the necessary payment.', 'PA008');
INSERT INTO INVOICE VALUES ('IN009', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', '6, Jalan Tunku Abdul Rahman, Kuala Lumpur', 'Anika@gmail.com', '30 days', '16/07/23', 0.06, 1600.00, 'Should you require an extension for payment, please contact our billing department in advance.', 'PA009');
INSERT INTO INVOICE VALUES ('IN010', 'Bandar Sungai Long, 11 1/4 miles, Jalan Cheras, 43000 Kajang, Selangor', 'golf@SLGR.com.my', 'Jalan Dato Onn, Kuala Lumpur', 'Joshi@gmail.com', '15 days', '14/07/23', 0.06, 2800, 'Thank you for choosing our golf resort. We look forward to serving you again in the future.', 'PA010');


CREATE TABLE Receipt (
    RE_ReceiptID VARCHAR2(20) PRIMARY KEY ,
    RE_Particular VARCHAR2(50),
    RE_Amount INTEGER,
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

SELECT * FROM RECEIPT;
DROP TABLE RECEIPT;

INSERT INTO RECEIPT VALUES ('RE001', 'Green Fee', 'RM150.00', 'Credit Card', 20, 'V1011', 'NONE', 'MYR', 'John Smith', '-', 'PA011');
INSERT INTO RECEIPT VALUES ('RE002', 'Equipment Rental', 'RM50.00', 'Cash', 5, 'V1012', 'NONE','MYR', 'Sarah Lee', '-', 'PA012');
INSERT INTO RECEIPT VALUES ('RE003', 'Golf Lesson', 'RM700.00', 'Debit Card', 70, 'V1013', 'NONE','MYR', 'Michael Tan', 'Redeem the voucher code to get a prize', 'PA013');
INSERT INTO RECEIPT VALUES ('RE004', 'Food and Beverage', 'RM75.00', 'Mobile Payment', 8, 'V1014', 'NONE','MYR', 'Emily Wong', '-', 'PA014');
INSERT INTO RECEIPT VALUES ('RE005', 'Pro Shop Purchase', 'RM100.00', 'Cash', 10, 'V1015', 'NONE','MYR', 'Ahmad Ibrahim', '-', 'PA015');
INSERT INTO RECEIPT VALUES ('RE006', 'Event Registration', 'RM250.00', 'Credit Card', 30, 'V1016', 'NONE','MYR', 'Karen Lim', '-', 'PA016');
INSERT INTO RECEIPT VALUES ('RE007', 'Membership Renewal', 'RM500.00', 'Debit Card', 50, 'V1017', 'NONE','MYR', 'David Tan', 'Redeem the voucher code to get a prize', 'PA017');
INSERT INTO RECEIPT VALUES ('RE008', 'Golf Cart Rental', 'RM80.00', 'Cash', 8, 'V1018', 'NONE','MYR', 'Rachel Ng', '-', 'PA018');
INSERT INTO RECEIPT VALUES ('RE009', 'Spa Treatment', 'RM150.00', 'Credit Card', 15, 'V1019', 'NONE','MYR', 'Mohamed Ali', '-', 'PA019');
INSERT INTO RECEIPT VALUES ('RE010', 'Tournament Entry', 'RM300.00', 'Debit Card', 25, 'V1020', 'NONE','MYR', 'Jessica Tan', '-', 'PA020');


CREATE TABLE Salary (
    SL_SalaryID INTEGER PRIMARY KEY,
    SL_Gross NUMBER(8,2),
    SL_Date DATE,
    SL_Type VARCHAR(10) NOT NULL,
    SL_Bonus NUMBER(8,2),
    SL_OvertimePay NUMBER(8,2),
    SL_TaxResident VARCHAR2(20),
    SL_EPF NUMBER(8,2),
    SL_SOCSO NUMBER(8,2),
    SL_Deduction NUMBER(8,2),
    SL_Net NUMBER(8,2),
    E_EmployeeID,
    DP_DepartmentID
);

SELECT * FROM SALARY;
DROP TABLE SALARY;

INSERT INTO SALARY VALUES ('SL001', 3500.00, TO_DATE('31/01/2023'), 'Monthly', 500.00, 150.00, 'Yes', 40.00, 40.00, 80.00, 4070.00, 'E0001', 'DP001');
INSERT INTO SALARY VALUES ('SL002', 4200.00, '31/01/2023', 'Monthly', 600.00, 200.00, 'Yes', 42.00, 48.00, 90.00, 4910.00, 'E0002', 'DP002');
INSERT INTO SALARY VALUES ('SL003', 3000.00, '28/02/2023', 'Monthly', 400.00, 75.00, 'Yes', 36.00, 36.00, 72.00, 3403.00, 'E0003', 'DP003');
INSERT INTO SALARY VALUES ('SL004', 3800.00, '28/02/2023', 'Monthly', 550.00, 200.00, 'Yes', 40.00, 56.00, 96.00, 4454.00, 'E0004', 'DP004');
INSERT INTO SALARY VALUES ('SL005', 3200.00, '31/03/2023', 'Monthly', 450.00, 200.00, 'Yes', 38.00, 44.00, 82.00, 3768.00, 'E1005', 'DP005');
INSERT INTO SALARY VALUES ('SL006', 4000.00, '31/03/2023', 'Monthly', 600.00, 150.00, 'Yes', 42.00, 38.00, 80.00, 4670.00, 'E1006', 'DP006');
INSERT INTO SALARY VALUES ('SL007', 3400.00, '30/04/2023', 'Monthly', 500.00, 250.00, 'Yes', 38.00, 41.00, 79.00, 4071.00, 'E1007', 'DP007');
INSERT INTO SALARY VALUES ('SL008', 4300.00, '30/04/2023', 'Monthly', 650.00, 150.00, 'Yes', 45.00, 46.00, 91.00, 5009.00, 'E1008', 'DP008');
INSERT INTO SALARY VALUES ('SL009', 3600.00, '31/05/2023', 'Monthly', 450.00, 75.00, 'Yes', 40.00, 52.00, 92.00, 4033.00, 'E1009', 'DP009');
INSERT INTO SALARY VALUES ('SL010', 4500.00, '31/05/2023', 'Monthly', 700.00, 150.00, 'Yes', 48.00, 40.00, 88.00, 5262.00, 'E1010', 'DP010');


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

SELECT * FROM DEPARTMENT;
DROP TABLE DEPARTMENT;

INSERT INTO DEPARTMENT VALUES ('DP001', 'Operations', 'John Tan', 'Sarah Lim', 'Michael Wong', 'Operational', 'Enhance Customer Experience', 4.2, 50000.00, 500000.00);
INSERT INTO DEPARTMENT VALUES ('DP002', 'Sales', 'Emily Lee', 'David Ng', 'Jessica Abdullah', 'Sales', 'Increase Revenue', 4.5, 60000.00, 700000.00);
INSERT INTO DEPARTMENT VALUES ('DP003', 'Marketing', 'William Goh', 'Olivia Raj', 'Ethan Chong', 'Marketing', 'Promote Brand Awareness', 4.3, 55000.00, 400000.00);
INSERT INTO DEPARTMENT VALUES ('DP004', 'Human Resources', 'Sophia Tan', 'Amir Abdullah', 'Nurul Wong', 'Administrative', 'Employee Development', 4.1, 45000.00, 300000.00);
INSERT INTO DEPARTMENT VALUES ('DP005', 'Finance', 'Daniel Lim', 'Aishah Raj', 'Ismail Lee', 'Financial', 'Cost Optimization', 4.4, 70000.00, 600000.00);
INSERT INTO DEPARTMENT VALUES ('DP006', 'IT', 'Farah Ng', 'Hafiz Abdullah', 'Siti Wong', 'Technical', 'System Integration', 4.2, 80000.00, 450000.00);
INSERT INTO DEPARTMENT VALUES ('DP007', 'Food and Beverage', 'Muhammad Ali', 'Fatimah Hassan', 'Azlan Ahmad', 'Operational', 'Enhance Menu Offering', 4.3, 40000.00, 350000.00);
INSERT INTO DEPARTMENT VALUES ('DP008', 'Maintenance', 'Nurul Hassan', 'Rahim Ali', 'Aisyah Mohd', 'Operational', 'Facility Upkeep', 4.1, 55000.00, 250000.00);
INSERT INTO DEPARTMENT VALUES ('DP009', 'Golf Operations', 'Adam Hussain', 'Aina Tan', 'Irfan Chong', 'Operational', 'Improve Course Conditions', 4.4, 60000.00, 550000.00);
INSERT INTO DEPARTMENT VALUES ('DP010', 'Event Management', 'Jasmine Lee', 'Arif Shah', 'Siti Yusof', 'Event', 'Organize Memorable Events', 4.2, 45000.00, 400000.00);

CREATE TABLE Reservation (
    R_ReservationID VARCHAR2(20) PRIMARY KEY,
    R_StartDate DATE,
    R_StartTime TIME,
    R_EndDate DATE,
    R_EndTime TIME,
    R_GuestNum INTEGER,
    R_Membership VARCHAR2(10),
    R_Discount NUMBER(1,2),
    R_NetPrice NUMBER(8,2),
    R_Status VARCHAR2(20)
);

SELECT * FROM RESERVATION;
DROP TABLE RESERVATION;

INSERT INTO RESERVATION VALUES ('R0001', '01/07/23', '04/07/23', TO_TIMESTAMP('9:00 AM'), '12:00 PM', 4, 'No', 0.00, 1200.00, 'Pending');
INSERT INTO RESERVATION VALUES ('R0002', '10/07/23', '15/07/23', '2:30 PM', '5:30 PM', 2, 'No', 0.00, 500.00, 'Confirmed');
INSERT INTO RESERVATION VALUES ('R0003', '20/07/23', '25/07/23', '10:00 AM', '2:00 PM', 8, 'Yes', 0.20, 1600.00, 'Confirmed');
INSERT INTO RESERVATION VALUES ('R0004', '30/07/23', '01/08/23', '1:00 PM', '4:00 PM', 6, 'No', 0.00, 900.00, 'Pending');
INSERT INTO RESERVATION VALUES ('R0005', '05/08/23', '06/08/23', '11:30 AM', '1:30 PM', 3, 'No', 0.00, 300.00, 'Canceled');
INSERT INTO RESERVATION VALUES ('R0006', '12/08/23', '13/08/23', '4:00 PM', '7:00 PM', 5, 'Yes', 0.10, 450.00, 'Confirmed');
INSERT INTO RESERVATION VALUES ('R0007', '18/08/23', '20/08/23', '9:00 AM', '12:00 PM', 2, 'No', 0.00, 300.00, 'Confirmed');
INSERT INTO RESERVATION VALUES ('R0008', '25/08/23', '27/08/23', '3:30 PM', '6:30 PM', 4, 'No', 0.00, 600.00, 'Pending');
INSERT INTO RESERVATION VALUES ('R0009', '30/08/23', '31/08/23', '10:00 AM', '11:30 AM', 1, 'No', 0.00, 100.00, 'Confirmed');
INSERT INTO RESERVATION VALUES ('R0010', '05/09/23', '10/09/23', '12:00 PM', '3:00 PM', 10, 'Yes', 0.15, 1700.00, 'Confirmed');


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

SELECT * FROM SCOREBOARD;
DROP TABLE SCOREBOARD;

INSERT INTO SCOREBOARD VALUES ('SB001', 'John Smith', 'Summer Open', 'Championship', 1, 4, 5, 3, 4, 1, 'G0001', 'GC001');
INSERT INTO SCOREBOARD VALUES ('SB002', 'John Smith', 'Summer Open', 'Championship', 2, 6, 3, 10, 6, -4, 'G0001', 'GC002');
INSERT INTO SCOREBOARD VALUES ('SB003', 'David Lee', 'Autumn Invitational', 'Championship', 18, 5, 4, 7, 5, -2, '1', 'GC003');
INSERT INTO SCOREBOARD VALUES ('SB004', 'Sarah Tan', 'Winter Challenge', 'Executive', 3, 3, 4, 8, 3, -1, '2', 'GC004');
INSERT INTO SCOREBOARD VALUES ('SB005', 'Michael Chen', 'Summer Open', 'Championship', 6, 5, 5, 5, 5, 0, '23', 'GC005');
INSERT INTO SCOREBOARD VALUES ('SB006', 'Jessica Lim', 'Spring Classic', 'Executive', 12, 4, 4, 6, 4, 0, '4', 'GC006');
INSERT INTO SCOREBOARD VALUES ('SB007', 'Adam Ng', 'Autumn Invitational', 'Championship', 9, 3, 3, 9, 3, 0, '5', 'GC007');
INSERT INTO SCOREBOARD VALUES ('SB008', 'Michelle Yap', 'Winter Challenge', 'Executive', 16, 5, 4, 7, 5, -1, '6', 'GC008');
INSERT INTO SCOREBOARD VALUES ('SB009', 'Kevin Tan', 'Summer Open', 'Championship', 14, 6, 5, 6, 6, 0, '7', 'GC009');
INSERT INTO SCOREBOARD VALUES ('SB010', 'Stephanie Lim', 'Spring Classic', 'Executive', 7, 4, 4, 5, 4, 0, '8','GC010');


CREATE TABLE ResortFacility (
    RS_ResortID VARCHAR2(20) PRIMARY KEY,
    RS_FacilityType VARCHAR2(50),
    RS_Duration FLOAT,
    RS_Price NUMBER(8,2)
);

SELECT * FROM RESORTFACILITY;
DROP TABLE RESORTFACILITY;

INSERT INTO RESORTFACILITY VALUES ('RS001', 'Swimming Pool', 2, 100.00);
INSERT INTO RESORTFACILITY VALUES ('RS002', 'Gymnasium', 1, 50.00);
INSERT INTO RESORTFACILITY VALUES ('RS003', 'Tennis Court', 1.5, 70.00);
INSERT INTO RESORTFACILITY VALUES ('RS004', 'Spa', 2, 80.00);
INSERT INTO RESORTFACILITY VALUES ('RS005', 'Kids Club', 1, 120.00);
INSERT INTO RESORTFACILITY VALUES ('RS006', 'Golf Simulator', 1.5, 60.00);
INSERT INTO RESORTFACILITY VALUES ('RS007', 'Cycling Track', 2, 40.00);
INSERT INTO RESORTFACILITY VALUES ('RS008', 'Billiards Room', 3, 150.00);
INSERT INTO RESORTFACILITY VALUES ('RS009', 'Sauna', 4, 60.00);
INSERT INTO RESORTFACILITY VALUES ('RS010', 'Karaoke Lounge', 1, 90.00);
INSERT INTO RESORTFACILITY VALUES ('RS011', 'Executive Room', 7, 200.00);
INSERT INTO RESORTFACILITY VALUES ('RS012', 'Family Suite', 5, 250.00);
INSERT INTO RESORTFACILITY VALUES ('RS013', 'Premier Villa', 2, 80.00);
INSERT INTO RESORTFACILITY VALUES ('RS014', 'Golf View Room', 3, 100.00);
INSERT INTO RESORTFACILITY VALUES ('RS015', 'Poolside Bungalow', 1.5, 70.00);
INSERT INTO RESORTFACILITY VALUES ('RS016', 'Spa Suite', 2, 60.00);
INSERT INTO RESORTFACILITY VALUES ('RS017', 'Penthouse Suite', 1, 40.00);
INSERT INTO RESORTFACILITY VALUES ('RS018', 'Garden View Chalet', 1.5, 60.00);
INSERT INTO RESORTFACILITY VALUES ('RS019', 'Oceanfront Cottage', 2, 70.00);
INSERT INTO RESORTFACILITY VALUES ('RS020', 'Deluxe Suite', 1, 50.00);
INSERT INTO RESORTFACILITY VALUES ('RS021', 'Clubhouse Café', 2, 80.00);
INSERT INTO RESORTFACILITY VALUES ('RS022', 'Fairway Buffet', 1, 30.00);
INSERT INTO RESORTFACILITY VALUES ('RS023', 'Greenside Grill', 2, 40.00);
INSERT INTO RESORTFACILITY VALUES ('RS024', 'Lakeside Lounge', 1, 50.00);
INSERT INTO RESORTFACILITY VALUES ('RS025', 'Viewpoint Bar', 1.5, 90.00);
INSERT INTO RESORTFACILITY VALUES ('RS026', 'Patio Pavilion', 2, 40.00);
INSERT INTO RESORTFACILITY VALUES ('RS027', 'Garden Terrace', 1.5, 60.00);
INSERT INTO RESORTFACILITY VALUES ('RS028', 'Golfers Lounge', 2, 100.00);
INSERT INTO RESORTFACILITY VALUES ('RS029', 'Skyline Dining Room', 1, 80.00);
INSERT INTO RESORTFACILITY VALUES ('RS030', 'Terrace Restaurant', 3, 120.00);


CREATE TABLE RecreationalFacility (
    RF_FacilityID VARCHAR2(20) PRIMARY KEY ,
    RF_Capacity INTEGER,
    RF_OpeningTime TIME,
    RF_ClosingTime TIME,
    RF_Availability VARCHAR2(10),
    RF_Description VARCHAR2(100),
    RF_MaintenanceDate VARCHAR2(100),
    RF_EmployeeAppointed VARCHAR2(50),
    RF_Location VARCHAR2(50),
    RF_Rating FLOAT,
    RS_ResortID VARCHAR2(20),
    CONSTRAINT FK_RF_Resort FOREIGN KEY (RS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE
);

SELECT * FROM RECREATIONALFACILITY;
DROP TABLE RECREATIONALFACILITY;

INSERT INTO RECREATIONALFACILITY VALUES ('RF001', 50, TO_TIMESTAMP('8:00 AM', 'HH:MI AM'), TO_TIMESTAMP('8:00 PM', 'HH:MI PM'), 'Available', 'Outdoor pool with lounge chairs and sun umbrellas', 'Monthly maintenance on 1st of every month', 'Aniq Afnan', 'Near Clubhouse', 4.2, 'RS001');
INSERT INTO RECREATIONALFACILITY VALUES ('RF002', 30, TO_TIMESTAMP('6:00 AM', 'HH:MI AM'), TO_TIMESTAMP('10:00 PM', 'HH:MI PM'), 'Available', 'Fully equipped fitness center with cardio and strength training equipment', 'Weekly maintenance on Mondays', 'Farid Muhaimin', 'Recreation Center', 4.6, 'RS002');
INSERT INTO RECREATIONALFACILITY VALUES ('RF003', 4, TO_TIMESTAMP('7:00 AM', 'HH:MI AM'), TO_TIMESTAMP('9:00 PM', 'HH:MI PM'), 'Available', 'Well-maintained tennis court with professional grade surface', 'Bi-weekly maintenance on Wednesdays', 'Afiq Aznan', 'Sports Complex', 4.8, 'RS003');
INSERT INTO RECREATIONALFACILITY VALUES ('RF004', 10, TO_TIMESTAMP('9:00 AM', 'HH:MI AM'), TO_TIMESTAMP('6:00 PM', 'HH:MI PM'), 'Available', 'Relaxing spa offering a range of massages and treatments', 'Daily maintenance on weekdays', 'Yaya Ahmad', 'Wellness Center', 4.4, 'RS004');
INSERT INTO RECREATIONALFACILITY VALUES ('RF005', 20, TO_TIMESTAMP('9:00 AM', 'HH:MI AM'), TO_TIMESTAMP('5:00 PM', 'HH:MI PM'), 'Available', 'Fun-filled kids club with games, toys, and supervised activities', 'Monthly maintenance on 15th of every month', 'Atina Joshua', 'Near Clubhouse', 4.9, 'RS005');
INSERT INTO RECREATIONALFACILITY VALUES ('RF006', 2, TO_TIMESTAMP('8:00 AM', 'HH:MI AM'), TO_TIMESTAMP('10:00 PM', 'HH:MI PM'), 'Available', 'State-of-the-art golf simulator with virtual courses', 'Bi-weekly maintenance on Fridays', 'Nina Michael', 'Golf Pro Shop', 4.7, 'RS006');
INSERT INTO RECREATIONALFACILITY VALUES ('RF007', 10, TO_TIMESTAMP('6:00 AM', 'HH:MI AM'), TO_TIMESTAMP('8:00 PM', 'HH:MI PM'), 'Available', 'Scenic cycling track with various difficulty levels', 'Weekly maintenance on Saturdays', 'Hayat Firdaus', 'Outdoor Recreation Area', 4.3, 'RS007');
INSERT INTO RECREATIONALFACILITY VALUES ('RF008', 8, TO_TIMESTAMP('10:00 AM', 'HH:MI AM'), TO_TIMESTAMP('12:00 AM', 'HH:MI AM'), 'Available', 'Elegant billiards room with multiple tables', 'Bi-weekly maintenance on Mondays', 'Ali Hafiz', 'Clubhouse Basement', 4.1, 'RS008');
INSERT INTO RECREATIONALFACILITY VALUES ('RF009', 6, TO_TIMESTAMP('10:00 AM', 'HH:MI AM'), TO_TIMESTAMP('9:00 PM', 'HH:MI PM'), 'Available', 'Relaxing sauna with separate sections for men and women', 'Monthly maintenance on 5th of every month', 'Kumar Sharma', 'Wellness Center', 4.5, 'RS009');
INSERT INTO RECREATIONALFACILITY VALUES ('RF010', 12, TO_TIMESTAMP('7:00 PM', 'HH:MI PM'), TO_TIMESTAMP('2:00 AM', 'HH:MI AM'), 'Available', 'Private karaoke rooms with a wide selection of songs', 'Weekly maintenance on Fridays', 'Hidayah Abdullah', 'Recreation Center', 4, 'RS010');


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

SELECT * FROM ROOM;
DROP TABLE ROOM;

INSERT INTO ROOM VALUES ('RO001', 350, 101, '3rd', 'Single', 'King', 1, 'Wi-Fi, TV, Mini Bar,Kitchenette', 'Garden View', 'Available', 'RS011');
INSERT INTO ROOM VALUES ('RO002', 300, 201, '2nd', 'Double', 'Twin', 2, 'Wi-Fi, TV', 'Pool View', 'Available', 'RS012');
INSERT INTO ROOM VALUES ('RO003', 400, 301, '3rd', 'Double', 'King', 1, 'Wi-Fi, TV, Kitchenette', 'Golf Course View', 'Occupied', 'RS013');
INSERT INTO ROOM VALUES ('RO004', 500, 102, 'Ground', 'Single', 'Queen', 2, 'Wi-Fi, TV, Mini Bar', 'Garden View', 'Available', 'RS014');
INSERT INTO ROOM VALUES ('RO005', 250, 202, 'Ground', 'Family', 'Queen', 3, 'Wi-Fi, TV,Kitchenette,Mini Bar', 'Pool View', 'Available', 'RS015');
INSERT INTO ROOM VALUES ('RO006', 350, 302, '3rd', 'Family', 'King', 2, 'Wi-Fi, TV, Kitchenette', 'Golf Course View', 'Occupied', 'RS016');
INSERT INTO ROOM VALUES ('RO007', 300, 103, '2nd', 'Double', 'Queen', 1, 'Wi-Fi, TV, Mini Bar', 'Garden View', 'Available', 'RS017');
INSERT INTO ROOM VALUES ('RO008', 400, 203, '2nd', 'Double', 'Twin', 1, 'Wi-Fi, TV', 'Pool View', 'Available', 'RS018');
INSERT INTO ROOM VALUES ('RO009', 500, 303, '3rd', 'Family', 'King', 2, 'Wi-Fi, TV, Kitchenette', 'Golf Course View', 'Occupied', 'RS019');
INSERT INTO ROOM VALUES ('RO010', 250, 104, 'Ground', 'Single', 'Queen', 1, 'Wi-Fi, TV, Mini Bar', 'Garden View', 'Available', 'RS020');


CREATE TABLE DiningHospitality (
    D_DiningID VARCHAR2(20) PRIMARY KEY,
    D_TableNum INTEGER,
    D_TableCapacity INTEGER,
    D_TableQuantity INTEGER,
    D_TableType VARCHAR2(20),
    D_Time TIME,
    D_Category VARCHAR2(20),
    D_PaxAmount INTEGER,
    D_SeatingType VARCHAR2(20),
    D_SetMenu VARCHAR2(20),
    RS_ResortID VARCHAR2(20),
    CONSTRAINT FK_D_Resort FOREIGN KEY (RS_ResortID) REFERENCES ResortFacility (RS_ResortID) ON DELETE CASCADE
);

SELECT * FROM DININGHOSPITALITY;
DROP TABLE DININGHOSPITALITY;

INSERT INTO DININGHOSPITALITY VALUES ('D0001', 101, 4, 2, 'Regular', '7:00 PM', 'Dinner', 4, 'Indoor', 'Malaysian Cuisine', 'RS021');
INSERT INTO DININGHOSPITALITY VALUES ('D0002', 102, 6, 1, 'Premium', '6:00 PM', 'Dinner', 6, 'Outdoor', 'International Buffet', 'RS022');
INSERT INTO DININGHOSPITALITY VALUES ('D0003', 103, 8, 2, 'Regular', '1:00 PM', 'Lunch', 8, 'Indoor', 'Vegetarian Set Menu', 'RS023');
INSERT INTO DININGHOSPITALITY VALUES ('D0004', 104, 2, 1, 'Premium', '8:00 AM', 'Breakfast', 2, 'Private', 'Continental Buffet', 'RS024');
INSERT INTO DININGHOSPITALITY VALUES ('D0005', 105, 10, 1, 'Regular', '7:00 PM', 'Dinner', 10, 'Indoor', 'Seafood Extravaganza', 'RS025');
INSERT INTO DININGHOSPITALITY VALUES ('D0006', 106, 4, 1, 'Premium', '12:00 PM', 'Lunch', 4, 'Outdoor', 'Italian Set Menu', 'RS026');
INSERT INTO DININGHOSPITALITY VALUES ('D0007', 107, 6, 2, 'Regular', '7:00 PM', 'Dinner', 6, 'Outdoor', 'Asian Fusion Buffet', 'RS027');
INSERT INTO DININGHOSPITALITY VALUES ('D0008', 108, 8, 2, 'Premium', '1:00 PM', 'Lunch', 8, 'Private', 'Western Set Menu', 'RS028');
INSERT INTO DININGHOSPITALITY VALUES ('D0009', 109, 2, 1, 'Regular', '8:00 AM', 'Breakfast', 2, 'Indoor', 'Continental Breakfast', 'RS029');
INSERT INTO DININGHOSPITALITY VALUES ('D0010', 110, 10, 2, 'Premium', '7:00 PM', 'Dinner', 10, 'Private', 'BBQ Feast', 'RS030');


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

SELECT * FROM GOLFCOURSE;
DROP TABLE GOLFCOURSE;

INSERT INTO GOLFCOURSE VALUES ('GC001', 'Palm Greens Golf Course', 72, 4.2, 138, '6,500', 18, 'Smith Golf', 'Pro Shop, Restaurant', 'Large');
INSERT INTO GOLFCOURSE VALUES ('GC002', 'Lakeview Golf Links', 70, 4.5, 142, '6,200', 18, 'Brown Design', 'Clubhouse, Driving Range', 'Medium');
INSERT INTO GOLFCOURSE VALUES ('GC003', 'Eagle Ridge Golf Club', 68, 4.1, 135, '6,800', 18, 'Lee Architects', 'Pro Shop, Practice Facilities', 'Large');
INSERT INTO GOLFCOURSE VALUES ('GC004', 'Forest Hills Golf Course', 71, 4.3, 140, '6,300', 18, 'Wong Golf', 'Restaurant, Bar', 'Medium');
INSERT INTO GOLFCOURSE VALUES ('GC005', 'Mountain View Golf Club', 73, 4, 137, '6,600', 18, 'Chen Design', 'Pool, Spa', 'Large');
INSERT INTO GOLFCOURSE VALUES ('GC006', 'Riverbend Golf Resort', 69, 4.4, 141, '6,100', 18, 'Lim Architects', 'Clubhouse, Golf Academy', 'Medium');
INSERT INTO GOLFCOURSE VALUES ('GC007', 'Sunrise Valley Golf Club', 72, 4.2, 138, '6,400', 18, 'Tan Golf', 'Golf Carts, Restaurant', 'Large');
INSERT INTO GOLFCOURSE VALUES ('GC008', 'Meadowbrook Golf Course', 70, 4.5, 142, '6,300', 18, 'Ng Design', 'Bar, Pro Shop', 'Medium');
INSERT INTO GOLFCOURSE VALUES ('GC009', 'Hillside Golf Resort', 68, 4.1, 135, '6,700', 18, 'Lim Golf', 'Practice Range, Locker Room', 'Large');
INSERT INTO GOLFCOURSE VALUES ('GC010', 'Ocean Breeze Golf Club', 71, 4.3, 140, '6,200', 18, 'Tan Architects', 'Restaurant, Driving Range', 'Medium');


CREATE TABLE GolfEvent (
    GE_EventID VARCHAR2(20) PRIMARY KEY,
    GE_Name VARCHAR2(50),
    GE_Date DATE,
    GE_StartTime TIME,
    GE_EndTime TIME,
    GE_Fee NUMBER(8,2),
    GE_Sponsorship VARCHAR2(20),
    GE_EquipmentProvided VARCHAR2(10),
    GE_Status VARCHAR2(10),
    GE_Type VARCHAR2(10)
);

SELECT * FROM GOLFEVENT;
DROP TABLE GOLFEVENT;

INSERT INTO GOLFEVENT VALUES ('GE001', 'Summer Classic', '15/07/22', '8:00 AM', '1:00 PM', 'RM100.00', 'ABC Company', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE002', 'Spring Invitational', '23/04/22', '9:30 AM', '3:30 PM', 'RM80.00', 'XYZ Corporation', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE003', 'Autumn Challenge', '08/10/22', '10:00 AM', '4:00 PM', 'RM120.00', 'DEF Enterprises', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE004', 'Winter Cup', '18/12/22', '11:00 AM', '2:00 PM', 'RM90.00', 'GHI Industries', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE005', 'Summer Shootout', '06/08/22', '7:30 AM', '12:30 PM', 'RM150.00', 'JKL Group', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE006', 'Spring Swing', '19/03/22', '8:30 AM', '1:30 PM', 'RM100.00', 'MNO Corporation', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE007', 'Autumn Classic', '24/09/22', '9:00 AM', '3:00 PM', 'RM110.00', 'PQR Enterprises', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE008', 'Winter Shootout', '04/12/22', '10:30 AM', '2:30 PM', 'RM90.00', 'STU Group', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE009', 'Summer Cup', '30/07/22', '8:00 AM', '1:00 PM', 'RM120.00', 'VWX Corporation', 'Yes', 'Open', 'Tournament');
INSERT INTO GOLFEVENT VALUES ('GE010', 'Spring Challenge', '09/04/22', '9:30 AM', '3:30 PM', 'RM80.00', 'YZA Enterprises', 'Yes', 'Open', 'Tournament');

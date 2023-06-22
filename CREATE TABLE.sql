CREATE TABLE PERSON (
    P_PersonID INTEGER PRIMARY KEY,
    P_FirstName VARCHAR2(20) NOT NULL,
    P_LastName VARCHAR2(20) NOT NULL,
    P_Age INTEGER NOT NULL,
    P_Gender VARCHAR2(20) NOT NULL,
    P_Nationality VARCHAR2(20) NOT NULL,
    P_PhoneNum INTEGER NOT NULL
);

CREATE TABLE Employee ( 
    E_EmployeeID INTEGER PRIMARY KEY, 
    E_StartDate DATE NOT NULL, 
    E_YearExperience INTEGER NOT NULL, 
    E_CompanyEmail VARCHAR2(50) NOT NULL, 
    E_Qualification VARCHAR2(50) NOT NULL, 
    E_Status VARCHAR2(50) NOT NULL, 
    E_OvertimeHour INTEGER NOT NULL,  
    E_AnnualLeaveDay INTEGER NOT NULL,  
    P_PersonID INTEGER,
    CONSTRAINT FK_E_P FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

CREATE TABLE Customer ( 
    C_CustomerID INTEGER PRIMARY KEY, 
    C_MailingAddress VARCHAR2(50) NOT NULL,  
    C_UnitAddress VARCHAR2(10) NOT NULL, 
    C_StreetAddress VARCHAR2(50) NOT NULL,  
    C_PostalCode INTEGER(5) NOT NULL,  
    C_City VARCHAR2(50) NOT NULL,  
    C_PhoneNumber VARCHAR2(13) NOT NULL,  
    C_SocialAccount VARCHAR2(50),  
    C_AccountType VARCHAR2(10), 
    C_BankAccountNum INTEGER(12) NOT NULL, 
    P_PersonID INTEGER,
    CONSTRAINT FK_C_P FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE
);

`trigger for concatenate first and last name`

CREATE OR REPLACE TRIGGER  "CONCATENATEDNAME" 
BEFORE
insert or update on "STAFF"
for each row
begin
SELECT P_FirstName || ' ' || P_LastName INTO :NEW.S_Name FROM Person WHERE Person.PersonID = :NEW.PersonID;
end;

CREATE TABLE Staff ( 
    S_StaffID INTEGER PRIMARY KEY, 
    S_Name VARCHAR2(50) NOT NULL,  
    S_JobPosition VARCHAR2(20) NOT NULL,   
    S_JobScope VARCHAR2(100) NOT NULL,  
    S_Skill VARCHAR2(100) NOT NULL,  
    S_Experience VARCHAR2(100) NOT NULL, 
    S_WorkLocation VARCHAR2(100) NOT NULL,  
    S_AttendanceRate NUMBER(3, 2) NOT NULL DEFAULT 0,  
    S_PerformanceRate NUMBER(3, 2) NOT NULL DEFAULT 0,  
    S_Evaluation VARCHAR2(100) NOT NULL DEFAULT,
    P_PersonID, 
    E_EmployeeID,
    CONSTRAINT FK_S_E FOREIGN KEY (E_EmployeeID) REFERENCES Employee (E_EmployeeID) ON DELETE CASCADE,
    CONSTRAINT FK_S_P FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT CHECK_RATE CHECK (S_AttendanceRate > 0 AND S_AttendanceRate <= 100 AND S_PerformanceRate > 0 AND S_PerformanceRate <= 100)
);

`trigger for concatenate first and last name`

CREATE OR REPLACE TRIGGER  "CONCATENATEDNAME2" 
BEFORE
insert or update on "SUPERVISOR"
for each row
begin
SELECT P_FirstName || ' ' || P_LastName INTO :NEW.S_Name FROM Person WHERE Person.PersonID = :NEW.PersonID;
end;

CREATE TABLE Supervisor ( 
    SV_SupervisorID INTEGER PRIMARY KEY, 
    SV_Name VARCHAR2(50) NOT NULL, 
    SV_JobPosition VARCHAR2(50) NOT NULL, 
    SV_JobScope VARCHAR2(50) NOT NULL, 
    SV_TeamSize INTEGER, 
    SV_SubAttend NUMBER(3, 2) NOT NULL DEFAULT 0, 
    SV_AttendEvaluation VARCHAR2(255), 
    SV_SubPerformance NUMBER(3, 2) NOT NULL DEFAULT 0, 
    SV_PerformEvaluation VARCHAR2(255), 
    SV_SubTask VARCHAR2(255) , 
    SV_Responsibilities VARCHAR2(255),
    P_PersonID, 
    E_EmployeeID,
    CONSTRAINT FK_SV_E FOREIGN KEY (E_EmployeeID) REFERENCES Employee (E_EmployeeID) ON DELETE CASCADE,
    CONSTRAINT FK_SV_P FOREIGN KEY (P_PersonID) REFERENCES Person (P_PersonID) ON DELETE CASCADE,
    CONSTRAINT CHECK_RATE CHECK (SV_SubAttend > 0 AND SV_SubAttend <= 100 AND SV_SubPerformance > 0 AND SV_SubPerformance <= 100)
);


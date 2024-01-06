-- Salesperson Table
CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100)
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100)
);

-- Car Table
CREATE TABLE Car (
    CarSerialNumber VARCHAR(50) PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    NewOrUsed CHAR(1)
);

-- Invoice Table
CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    Date DATE,
    Amount DECIMAL(10, 2),
    SalespersonID INT,
    CustomerID INT,
    CarSerialNumber VARCHAR(50),
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(CarSerialNumber)
);

-- ServiceTicket Table
CREATE TABLE ServiceTicket (
    TicketID INT PRIMARY KEY,
    Date DATE,
    Description TEXT,
    CarSerialNumber VARCHAR(50),
    CustomerID INT,
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(CarSerialNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Additional tables like ServiceHistory, Mechanic, CarService, and Parts follow a similar pattern.

-- ServiceHistory Table
CREATE TABLE ServiceHistory (
    RecordID INT PRIMARY KEY,
    ServiceDate DATE,
    Details TEXT,
    CarSerialNumber VARCHAR(50),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(CarSerialNumber)
);

-- Mechanic Table
CREATE TABLE Mechanic (
    MechanicID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100)
);

-- CarService Table
CREATE TABLE CarService (
    CarSerialNumber VARCHAR(50),
    MechanicID INT,
    WorkDescription TEXT,
    PRIMARY KEY (CarSerialNumber, MechanicID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(CarSerialNumber),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);

-- Parts Table
CREATE TABLE Parts (
    PartID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT
);


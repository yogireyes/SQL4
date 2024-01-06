-- Inserting data into Salesperson
INSERT INTO Salesperson (SalespersonID, Name, ContactInfo) VALUES
(1, 'John Doe', 'johndoe@example.com');

-- Inserting data into Customer
INSERT INTO Customer (CustomerID, Name, ContactInfo) VALUES
(100, 'Alice Smith', 'alice@example.com');

-- Similar INSERT statements for Car, Invoice, ServiceTicket, etc.
INSERT INTO Car (CarSerialNumber, Make, Model, Year, NewOrUsed) VALUES
('12345ABC', 'Toyota', 'Camry', 2021, 'N'),
('67890DEF', 'Honda', 'Civic', 2020, 'U');

INSERT INTO Invoice (InvoiceID, Date, Amount, SalespersonID, CustomerID, CarSerialNumber) VALUES
(1, '2024-01-10', 30000.00, 1, 100, '12345ABC'),
(2, '2024-01-12', 20000.00, 1, 100, '67890DEF');

INSERT INTO ServiceTicket (TicketID, Date, Description, CarSerialNumber, CustomerID) VALUES
(1, '2024-01-15', 'Oil Change', '12345ABC', 100),
(2, '2024-01-18', 'Brake Repair', '67890DEF', 100);

-- ServiceHistory
INSERT INTO ServiceHistory (RecordID, ServiceDate, Details, CarSerialNumber) VALUES
(1, '2024-01-15', 'Oil Change Completed', '12345ABC'),
(2, '2024-01-18', 'Brake Pads Replaced', '67890DEF');

-- Mechanic
INSERT INTO Mechanic (MechanicID, Name, Specialization) VALUES
(1, 'Mike Johnson', 'Engine Specialist'),
(2, 'Sarah Lee', 'Brake Systems');

-- CarService
INSERT INTO CarService (CarSerialNumber, MechanicID, WorkDescription) VALUES
('12345ABC', 1, 'Engine Check and Oil Change'),
('67890DEF', 2, 'Brake System Overhaul');

-- Parts (optional, only if needed)
INSERT INTO Parts (PartID, Name, Description) VALUES
(1, 'Oil Filter', 'Oil Filter for Toyota Camry'),
(2, 'Brake Pads', 'Brake Pads for Honda Civic');



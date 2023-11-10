Create Database veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

Create TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR (15),
    email VARCHAR (100)
);

CREATE TABLE invoices (
    invoices INT PRIMARY KEY,
    appointid INT,
    totalamount NUMERIC(10,2),
    payment date TIME,
    FOREIGN KEY (appointid) REFFERENCES appointments(appointid)
);
CREATE TABLE medicalrecords (
    recordid PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    Diagnosis Text,
    Prescription Text,
    notes Text,
    FOREIGN KEY(animalid) REFERENCES animals(animalid),
    FOREIGN KEY(doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners(ownerid, ofirstname,olastname, address, phone, email)
VALUES 
(1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
(2, 'Maria', 'Santos', '456 Elm st, Quezon City', '987-654-3210', 'maria@example.com'),
(3, 'Antonio', 'Gonzales', '789 Oak st, Cebu', '555-123-4567', 'antonio@example.com'),
(4, 'Elena', 'Rodriguez', '345 Pine St, Davao', '777-888-9999', 'elena@examaple.com'),
(5, 'Ricardo', 'Lim', '987 Cedar st, Makati', '222-333-4444', 'ricardo@examaple.com'),
(6, 'isabel', 'Reyes', '111 Acacia st, Pasig', '999-000-1111', 'isabel@examaple.com'),
(7, 'Luis', 'Torres', '555 Maple St, Mandaluyong', '123-555-7777', 'luis@examaple.com'),
(8, 'Carmen', 'Fernandez', '222 Birch St, Taguig', '333-222-1111', 'carmen@examaple.com'),
(9, 'Pedro', 'Santillan', '888 Spruce St, Bacolod', '888-777-6666', 'pedro@examaple.com'),
(10, 'Sofia', 'Villanueva', '777 Walnut St, Iloilo', '111-999-3333', 'sofia@examaple.com'),
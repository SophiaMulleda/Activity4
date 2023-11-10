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
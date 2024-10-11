CREATE TABLE MAHASISWA (
    ID INT PRIMARY KEY,
    NIM INT,
    Nama VARCHAR(100),
    Jurusan VARCHAR(50),
    TanggalLahir DATE 
);

-- Menambahkan Data ke tabel
INSERT INTO Mahasiswa (ID, NIM, Nama, Jurusan, TanggalLahir) 
VALUES (1,233040110, 'Ariska', 'Teknik Informatika', '2000-09-15'),
(2,233040111, 'Amel', 'Teknik Informatika', '2000-03-15'),
(3,233040112, 'Diana', 'Teknik Informatika', '2000-08-15'),
(4,233040113, 'Anna', 'Teknik Informatika', '2000-02-15'),
(5,233040114, 'Haifa', 'Teknik Informatika', '2000-01-15'),
(6,233040115, 'Nada', 'Teknik Informatika', '2001-05-12');

SELECT *
FROM [dbo].[Mahasiswa]
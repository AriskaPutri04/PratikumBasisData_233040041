CREATE TABLE jurusan (
    id BIGINT PRIMARY KEY,
    nama_jurusan BIGINT,
);

CREATE TABLE Mahasiswa (
    id BIGINT PRIMARY KEY,
    NPM VARCHAR(50),
    nama VARCHAR(60),
    tanggal_lahir DATE,
    alamat VARCHAR(100),
    no_hp INT,
    jurusan_id BIGINT,
    dosen_wali_id BIGINT,
    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
    FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id)
);

CREATE TABLE Dosen_Wali (
    id BIGINT PRIMARY KEY,
    NIP BIGINT,
    nama VARCHAR(60),
    tanggal_lahir DATE,
    alamat VARCHAR(100),
    no_hp INT
);



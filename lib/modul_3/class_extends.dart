class Mahasiswa {
  String nama;
  int nim;
  String jurusan;

  Mahasiswa(this.nama, this.nim, this.jurusan);

  void info() {
    print("Nama: $nama");
    print("NIM: $nim");
    print("Jurusan: $jurusan");
  }
}


class MahasiswaAktif extends Mahasiswa {
  int tahunMasuk;

  MahasiswaAktif(super.nama, super.nim, super.jurusan, this.tahunMasuk);

  void status() {
    print("Status: Mahasiswa Aktif");
    print("Tahun Masuk: $tahunMasuk");
  }
}


class MahasiswaAlumni extends Mahasiswa {
  int tahunLulus;

  MahasiswaAlumni(super.nama, super.nim, super.jurusan, this.tahunLulus);

  void status() {
    print("Status: Alumni");
    print("Tahun Lulus: $tahunLulus");
  }
}


void main() {
  MahasiswaAktif mhs1 =
      MahasiswaAktif("Subri", 12345, "Informatika", 2023);

  mhs1.info();
  mhs1.status();

  print("================");

  MahasiswaAlumni mhs2 =
      MahasiswaAlumni("Budi", 67890, "Sistem Informasi", 2020);

  mhs2.info();
  mhs2.status();
}
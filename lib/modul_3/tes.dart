class Mahasiswa {
  final String nama;
  Mahasiswa(this.nama);

  void belajar() {
    print("$nama sedang belajar");
  }
}

// ===== MIXIN 1 =====
mixin Organisasi {
  void rapat() {
    print("Sedang rapat organisasi");
  }
}

// ===== MIXIN 2 =====
mixin Penelitian {
  void riset() {
    print("Sedang melakukan penelitian");
  }
}

// ===== MIXIN 3 =====
mixin Laboratorium {
  void praktikum() {
    print("Sedang praktikum di lab");
  }
}

// ===== CLASS TURUNAN =====
class MahasiswaAktif extends Mahasiswa
    with Organisasi, Penelitian, Laboratorium {

  MahasiswaAktif(super.nama);
}

// ===== MAIN =====
void main() {
  MahasiswaAktif mhs = MahasiswaAktif("Budi");

  mhs.belajar();
  mhs.rapat();
  mhs.riset();
  mhs.praktikum();
}
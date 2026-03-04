
class Mahasiswa {

  final String nama;
  Mahasiswa(this.nama);

    void belajar() {
    print("$nama sedang belajar");
  }
}


mixin Dosen {
    void ngajar() {
        print("Lagi ngajar di uner");
    }
}

mixin Dosen_wali {
    void perwalian() {
        print("Sedang melakukan perwalian");
    }
}

mixin Fakultas {
    void Ruangan(){
        print("Ruangan Penuh");
    }
}

class Mahasiswa1 extends Mahasiswa with Dosen, Fakultas, Dosen_wali {
    Mahasiswa1(super.nama);
}


void main() {
    Mahasiswa1 mhs = Mahasiswa1("Subri");

    mhs.belajar();
    mhs.ngajar();
    mhs.perwalian();
    mhs.Ruangan();

}
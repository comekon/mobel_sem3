import 'package:mobel1/features/mahasiswa_aktif/data/models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  /// Mendapatkan daftar mahasiswa aktif
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    // Simulasi network delay
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy mahasiswa aktif
    return [
      MahasiswaAktifModel(
        nama: 'Budi Santoso',
        nim: '2021001',
        email: 'budi.santoso@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
        status: 'Aktif',
      ),
      MahasiswaAktifModel(
        nama: 'Siti Aminah',
        nim: '2021002',
        email: 'siti.aminah@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
        status: 'Aktif',
      ),
      MahasiswaAktifModel(
        nama: 'Rizky Pratama',
        nim: '2021003',
        email: 'rizky.pratama@example.com',
        jurusan: 'Teknik Informatika',
        semester: '4',
        status: 'Aktif',
      ),
    ];
  }
}

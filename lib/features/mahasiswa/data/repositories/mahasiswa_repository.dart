import 'package:mobel1/features/mahasiswa/data/models/mahasiswa_model.dart';

class MahasiswaRepository {
  /// Mendapatkan daftar mahasiswa
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    // Simulasi network delay
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy mahasiswa
    return [
      MahasiswaModel(
        nama: 'Budi Santoso',
        nim: '2021001',
        email: 'budi.santoso@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
      ),
      MahasiswaModel(
        nama: 'Siti Aminah',
        nim: '2021002',
        email: 'siti.aminah@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
      ),
      MahasiswaModel(
        nama: 'Rizky Pratama',
        nim: '2021003',
        email: 'rizky.pratama@example.com',
        jurusan: 'Teknik Informatika',
        semester: '4',
      ),
      MahasiswaModel(
        nama: 'Dewi Lestari',
        nim: '2022001',
        email: 'dewi.lestari@example.com',
        jurusan: 'Teknik Informatika',
        semester: '4',
      ),
      MahasiswaModel(
        nama: 'Ahmad Fauzi',
        nim: '2022002',
        email: 'ahmad.fauzi@example.com',
        jurusan: 'Teknik Informatika',
        semester: '2',
      ),
    ];
  }
}

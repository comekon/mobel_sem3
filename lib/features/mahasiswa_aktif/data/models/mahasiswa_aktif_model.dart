class MahasiswaAktifModel {
  final String nama;
  final String nim;
  final String email;
  final String jurusan;
  final String semester;
  final String status;

  MahasiswaAktifModel({
    required this.nama,
    required this.nim,
    required this.email,
    required this.jurusan,
    required this.semester,
    required this.status,
  });

  factory MahasiswaAktifModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaAktifModel(
      nama: json['title']?.toString() ?? '',
      nim: json['id']?.toString() ?? '',
      email: 'user${json['userId']}@example.com',
      jurusan:
          json['body']?.toString().split('\n').first ?? 'Teknik Informatika',
      semester: json['userId']?.toString() ?? '1',
      status: 'Aktif',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'nim': nim,
      'email': email,
      'jurusan': jurusan,
      'semester': semester,
      'status': status,
    };
  }
}

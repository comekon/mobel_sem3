class MahasiswaModel {
  final String nama;
  final String nim;
  final String email;
  final String jurusan;
  final String semester;

  MahasiswaModel({
    required this.nama,
    required this.nim,
    required this.email,
    required this.jurusan,
    required this.semester,
  });

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaModel(
      nama: json['name'] ?? '',
      nim: json['id']?.toString() ?? '',
      email: json['email'] ?? '',
      jurusan:
          json['body']?.toString().split('\n').first ?? 'Teknik Informatika',
      semester: json['postId']?.toString() ?? '1',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'nim': nim,
      'email': email,
      'jurusan': jurusan,
      'semester': semester,
    };
  }
}

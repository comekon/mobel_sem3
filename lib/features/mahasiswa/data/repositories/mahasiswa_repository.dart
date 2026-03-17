import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:mobel1/features/mahasiswa/data/models/mahasiswa_model.dart';

class MahasiswaRepository {
  final Dio _dio = Dio();

  /// Mendapatkan daftar mahasiswa menggunakan HTTP (Opsional)
  Future<List<MahasiswaModel>> getMahasiswaListHttp() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => MahasiswaModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data mahasiswa: ${response.statusCode}');
    }
  }

  /// Mendapatkan daftar mahasiswa menggunakan Dio (Main Method yang dipakai Riverpod)
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/comments',
        options: Options(headers: {'Accept': 'application/json'}),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => MahasiswaModel.fromJson(json)).toList();
      } else {
        throw Exception('Gagal memuat data mahasiswa: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Gagal memuat data mahasiswa: ${e.message}');
    }
  }
}

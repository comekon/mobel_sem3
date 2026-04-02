import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobel1/core/services/local_storage_service.dart';
import 'package:mobel1/features/mahasiswa/data/models/mahasiswa_model.dart';
import 'package:mobel1/features/mahasiswa/data/repositories/mahasiswa_repository.dart';

// Repository Provider
final mahasiswaRepositoryProvider = Provider<MahasiswaRepository>((ref) {
  return MahasiswaRepository();
});

// LocalStorageService Provider
final mahasiswaLocalStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

// — Provider semua data mahasiswa yang disimpan ————————————————
final savedMahasiswaProvider = FutureProvider<List<Map<String, String>>>((ref) async {
  final storage = ref.watch(mahasiswaLocalStorageServiceProvider);
  return storage.getSavedUsers();
});

// StateNotifier untuk mengelola state mahasiswa
class MahasiswaNotifier
    extends StateNotifier<AsyncValue<List<MahasiswaModel>>> {
  final MahasiswaRepository _repository;
  final LocalStorageService _storage;

  MahasiswaNotifier(this._repository, this._storage) : super(const AsyncValue.loading()) {
    loadMahasiswaList();
  }

  /// Load data mahasiswa dalam bentuk list
  Future<void> loadMahasiswaList() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getMahasiswaList();
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  /// Refresh data mahasiswa dalam bentuk list
  Future<void> refresh() async {
    await loadMahasiswaList();
  }

  /// Simpan mahasiswa yang dipilih ke local storage (tanpa menghapus yang lama)
  Future<void> saveSelectedMahasiswa(MahasiswaModel mahasiswa) async {
    await _storage.addUserToSavedList(
      userId: mahasiswa.nim,
      username: mahasiswa.nama,
    );
  }

  /// Hapus mahasiswa tertentu dari list
  Future<void> removeSavedMahasiswa(String nim) async {
    await _storage.removeSavedUser(nim);
  }

  /// Hapus semua mahasiswa dari list
  Future<void> clearSavedMahasiswa() async {
    await _storage.clearSavedUsers();
  }
}

// Mahasiswa Notifier Provider
final mahasiswaNotifierProvider =
    StateNotifierProvider.autoDispose<MahasiswaNotifier, AsyncValue<List<MahasiswaModel>>>((ref) {
      final repository = ref.watch(mahasiswaRepositoryProvider);
      final storage = ref.watch(mahasiswaLocalStorageServiceProvider);
      return MahasiswaNotifier(repository, storage);
    });

import 'dart:io';

void main() {

  Map<String, String> data = {
    'Andy': '081992992992',
    'Admin': '08583644231',
    'Dory': '0877766464531254'
  };
  print('Data: $data');

  data['Rio'] = '089654775543';
  print('Data setelah ditambahkan: $data');

  print('Nomor Andy: ${data['Andy']}');



  // input normal
  print("=== INPUT DATA MOBIL ===");

  stdout.write("Masukkan No Rangka: ");
  String noRangka = stdin.readLineSync()!;

  stdout.write("Masukkan Nama Mobil: ");
  String namaMobil = stdin.readLineSync()!;

  stdout.write("Masukkan Bahan Bakar: ");
  String bahanBakar = stdin.readLineSync()!;

  stdout.write("Masukkan Harga: ");
  double harga = double.parse(stdin.readLineSync()!);

  Map<String, dynamic> mobil = {
    "no_rangka": noRangka,
    "nama_mobil": namaMobil,
    "bahan_bakar": bahanBakar,
    "harga": harga
  };

  print("\nData Mobil: $mobil");


  // input multiple
  print("\n=== INPUT MULTIPLE MOBIL ===");

  stdout.write("Masukkan jumlah mobil: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> dataMobil = [];

  for (int i = 0; i < jumlah; i++) {
    print("\n--- Mobil ke-${i + 1} ---");

    stdout.write("Masukkan No Rangka: ");
    String noRangka = stdin.readLineSync()!;

    stdout.write("Masukkan Nama Mobil: ");
    String namaMobil = stdin.readLineSync()!;

    stdout.write("Masukkan Bahan Bakar: ");
    String bahanBakar = stdin.readLineSync()!;

    stdout.write("Masukkan Harga: ");
    double harga = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> mbl = {
      "no_rangka": noRangka,
      "nama_mobil": namaMobil,
      "bahan_bakar": bahanBakar,
      "harga": harga
    };

    dataMobil.add(mbl);
  }

  print("\n=== DAFTAR MOBIL ===");
  for (int i = 0; i < dataMobil.length; i++) {
    print("Index $i:");
    print("No Rangka   : ${dataMobil[i]['no_rangka']}");
    print("Nama Mobil  : ${dataMobil[i]['nama_mobil']}");
    print("Bahan Bakar : ${dataMobil[i]['bahan_bakar']}");
    print("Harga       : ${dataMobil[i]['harga']}");
    print("---------------------------");
  }


  // ubah data
  print("\n=== UBAH DATA ===");

  print("\nPilih mobil yang ingin diubah:");
  for (int i = 0; i < dataMobil.length; i++) {
    print("Index $i - ${dataMobil[i]['nama_mobil']}");
  }

  stdout.write("\nMasukkan index mobil (0-${dataMobil.length - 1}): ");
  int index = int.parse(stdin.readLineSync()!);

  if (index >= 0 && index < dataMobil.length) {

    print("Key tersedia: no_rangka, nama_mobil, bahan_bakar, harga");
    stdout.write("Masukkan key yang ingin diubah: ");
    String key = stdin.readLineSync()!;

    stdout.write("Masukkan data baru: ");
    String inputBaru = stdin.readLineSync()!;

    if (key == "harga") {
      dataMobil[index][key] = double.parse(inputBaru);
    }
    else if (key == "nama_mobil" || key == "bahan_bakar" || key == "no_rangka") {

      if (double.tryParse(inputBaru) != null) {
        print("Input tidak valid! Harus berupa teks.");
      } else {
        dataMobil[index][key] = inputBaru;
      }

    }

    print("Data berhasil diubah!");
  } else {
    print("Index tidak valid!");
  }

  // hapus data
  print("\n=== HAPUS DATA ===");
  stdout.write("Masukkan index mobil yang ingin dihapus (0-${dataMobil.length - 1}): ");
  int indexHapus = int.parse(stdin.readLineSync()!);

  if (indexHapus >= 0 && indexHapus < dataMobil.length) {
    dataMobil.removeAt(indexHapus);
    print("Data mobil berhasil dihapus!");
  } else {
    print("Index tidak valid!");
  }

  // cek data
  print("\n=== CEK DATA ===");

  print("\nPilih mobil yang ingin dicek:");
  for (int i = 0; i < dataMobil.length; i++) {
    print("Index $i - ${dataMobil[i]['nama_mobil']}");
  }

  stdout.write("Masukkan index mobil: ");
  int indexCek = int.parse(stdin.readLineSync()!);

  if (indexCek >= 0 && indexCek < dataMobil.length) {

    print("Key tersedia: no_rangka, nama_mobil, bahan_bakar, harga");
    stdout.write("Masukkan key yang ingin dicek: ");
    String keyCek = stdin.readLineSync()!;

    if (dataMobil[indexCek].containsKey(keyCek)) {
      print("Hasil: ${dataMobil[indexCek][keyCek]}");
    } else {
      print("Key tidak tersedia!");
    }

  } else {
    print("Data tidak tersedia! Silahkan masukkan index yang valid.");
  }


  // hitung jumlah
  print("\nJumlah Mobil: ${dataMobil.length}");


  // tampilkan semua key
  print("\nSemua Key:");
  for (var mbl in dataMobil) {
    print(mbl.keys);
  }


  // tampilkan semua value
  print("\nSemua Value:");
  for (var mbl in dataMobil) {
    print(mbl.values);
  }

}
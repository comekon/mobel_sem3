import 'dart:io';

void main() {

  Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  print('Burung: $burung');


  Set<String> listData = {};

  // tambah data
  stdout.write("Masukkan jumlah data: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Masukkan data ke-${i+1}: ");
    String input = stdin.readLineSync()!;
    listData.add(input);
  }

  // menampilkan data
  print("\n=== SEMUA DATA ===");
  int no = 1;
  for (String data in listData) {
    print("$no. $data");
    no++;
  }

  // hitung jumlah data
  print("Total data: ${listData.length}");

  // tambah data (duplikat)
  stdout.write("\nMasukkan data baru: ");
  String dataBaru = stdin.readLineSync()!;
  listData.add(dataBaru);
  print('Data "$dataBaru" berhasil ditambahkan!');

  // hapus data
  stdout.write("\nMasukkan data yang ingin dihapus: ");
  String dataHapus = stdin.readLineSync()!;
  listData.remove(dataHapus);
  print('Data "$dataHapus" berhasil dihapus!');

  // cek data
  stdout.write("\nMasukkan data yang ingin dicek: ");
  String cekData = stdin.readLineSync()!;

  if (listData.contains(cekData)) {
    print('Data "$cekData" ada di Set!');
  } else {
    print('Data "$cekData" tidak ada di Set!');
  }


}
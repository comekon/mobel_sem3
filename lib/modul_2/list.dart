import 'dart:io';

void main() {
  List<String> names = ['Alfa', 'Beta', 'Charlie'];
  print('Names: $names');

  names.add('Delta');
  print('Names setelah ditambahkan:  $names');

  print('Elemen pertama: ${names[0]}');
  print('Elemen kedua: ${names[1]}');
  
  names[1] = 'Bravo';
  print('Names setelah diubah:  $names');

  names.remove('Charlie');
  print('Names setelah dihapus:  $names');

  print('Jumlah data: ${names.length}');

  print('Menampilkan setiap elemen:');
  for (String name in names) {
    print(name);
  }


  // List<String> dataList = [];
  // print('Data list kosong: $dataList');

  // int count = 0;
  // while (count <= 0) {
  //   stdout.write('Masukkan jumlah list: ');
  //   String? input = stdin.readLineSync();
  //   try {
  //     count = int.parse(input!);
  //     if (count <= 0) {
  //       print('Masukkan angka lebih dari 0!');
  //     }
  //   } catch (e) {
  //     print('Input tidak valid! Masukkan angka yang benar.');
  //   }
  // }

  // for (int i = 0; i < count; i++) {
  //   stdout.write('data ke-${i + 1}: ');
  //   String x = stdin.readLineSync()!;
  //   dataList.add(x);
  // }

  // // Menampilkan data list
  // print('Data dalam list:');
  // print(dataList);


  // m
  List<String> datalist = [];

  // input
  stdout.write("Masukkan jumlah data: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    stdout.write("Index ke-${i+1}: ");
    String input = stdin.readLineSync()!;
    datalist.add(input);
  }

  // tampil berdasar index
  stdout.write("\nMasukkan index yang ingin ditampilkan: ");
  int tampilIndex = int.parse(stdin.readLineSync()!);

  print("Data pada index $tampilIndex : ${datalist[tampilIndex]}");

  // ubah berdasar index
  stdout.write("\nMasukkan index yang ingin diubah: ");
  int ubahIndex = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan data baru: ");
  String dataBaru = stdin.readLineSync()!;

  datalist[ubahIndex] = dataBaru;

  // hapus berdasar index
  stdout.write("\nMasukkan index yang ingin dihapus: ");
  int hapusIndex = int.parse(stdin.readLineSync()!);

  datalist.removeAt(hapusIndex);

  // ===== HASIL AKHIR =====
  print("\n=== SEMUA DATA ===");

  for (int i = 0; i < datalist.length; i++) {
    print("Index $i : ${datalist[i]}");
  }

}
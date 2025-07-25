import 'dart:io';

void main() {
  List<String> keranjangBuah = [];

  print("Masukkan nama buah (ketik 'exit' untuk selesai):");

  while (true) {
    stdout.write("masukan >> ");
    String? input = stdin.readLineSync();

    if (input == null) continue;
    if (input.toLowerCase() == 'exit') break;

    keranjangBuah.add(input);
    print("Buah ditambahkan: $input");
  }

  print("\nDaftar buah yang dimasukkan:");
  for (int i = 0; i < keranjangBuah.length; i++) {
    print("${i + 1}. ${keranjangBuah[i]}");
  }
}

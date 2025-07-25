import 'dart:io';

void main(List<String> args) {
  var cars = {"Tesla": "Electric", "Toyota": "Pertamax"};
  print("Mobil: $cars");

  var fruits = <String, String>{}; 

  fruits["Apple"] = "red";
  print("Buah: $fruits\n");

  while (true) {
    stdout.write("Masukkan nama buah (atau ketik 'exit'): ");
    String? nama = stdin.readLineSync();

    if (nama == null || nama.toLowerCase() == 'exit') break;

    stdout.write("Masukkan warna dari $nama: ");
    String? warna = stdin.readLineSync();

    if (warna == null) warna = "tidak diketahui";

    fruits[nama] = warna;
    print("Buah sekarang: $fruits\n");
  }

  print("Program selesai. Daftar buah akhir:");
  print(fruits);
}

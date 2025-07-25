import 'dart:io';
import 'package:tuple/tuple.dart';

Tuple2<String, String>? inputFruit() {
  stdout.write("Masukkan nama buah (atau 'exit'): ");
  String? name = stdin.readLineSync();
  if (name == null || name.toLowerCase() == 'exit') return null;

  stdout.write("Masukkan warna dari $name: ");
  String? color = stdin.readLineSync();
  if (color == null) return null;

  return Tuple2(name, color);
}

void main() {
  List<Tuple2<String, String>> fruits = [];

  while (true) {
    var result = inputFruit();
    if (result == null) break;
    fruits.add(result);
  }

  print("\nDaftar buah:");
  for (var fruit in fruits) {
    print("- ${fruit.item1}: warna ${fruit.item2}");
  }
}

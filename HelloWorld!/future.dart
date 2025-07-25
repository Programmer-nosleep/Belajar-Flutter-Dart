import 'dart:async';
import 'dart:io';    

class DataFetcher {
  Future<String> fetchData(String name) async {
    await Future.delayed(Duration(seconds: 2));
    return "Hello, $name!";
  }

  Future<int> getLength(String data) async {
    await Future.delayed(Duration(seconds: 1));
    return data.length;
  }
}

void main(List<String> args) async {
  stdout.write("Masukkan nama: ");
  String? name = stdin.readLineSync();

  if (name != null && name.isNotEmpty) {
    var fetcher = DataFetcher();

    Future<String> futureGreeting = fetcher.fetchData(name);
    String greeting = await futureGreeting;
    print(greeting);

    int length = await fetcher.getLength(greeting);
    print("Panjang greeting: $length karakter");
  } else {
    print("Nama tidak boleh kosong.");
  }
}

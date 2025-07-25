class Mahasiswa {
  String nama;
  double nilai;

  Mahasiswa(this.nama, this.nilai);

  void display() {
    print("Nama Mahasiswa: $nama");
    print("Nilai: $nilai");
  }
}

class Dosen extends Mahasiswa {
  String matkul;

  Dosen(String nama, double nilai, this.matkul) : super(nama, nilai);

  void cekKelulusan() {
    print("Mata Kuliah: $matkul");
    if (nilai >= 75) {
      print("$nama dinyatakan LULUS");
    } else {
      print("$nama dinyatakan TIDAK LULUS");
    }
  }

  @override
  void display() {
    super.display(); // tampilkan nama & nilai dari Mahasiswa
    print("Mata Kuliah: $matkul");
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa("Zani", 88);
  mhs.display();

  print("\nData Dosen & Evaluasi:");
  Dosen dosen = Dosen("Zani", 68, "Algoritma");
  dosen.display();
  dosen.cekKelulusan();
}

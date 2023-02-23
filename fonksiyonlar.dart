void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 10);
  print("Alan: $sonuc");
  int sonuc2= hacimHesapla(3, 4, 5);
  print("Hacim: $sonuc2");
}

// Parametresiz fonksiyon
void cevreyiHesapla() {  // Bu fonksiyon geriye bir değer döndürmediği için void olarak tanımlanır
  int en = 5;
  int boy = 4;
  int cevre = (en + boy) * 2;
  print("Çevre: $cevre");
}

// Parametreli fonksiyon
int alanHesapla(int sayi1, int sayi2) {  // Bu fonksiyon geriye int bir değer döndürdüğü için int olarak tanımlanır
  int alan = sayi1 * sayi2;
  //print("Alan: $alan");
  return alan;
}

int hacimHesapla(int en, int yukseklik, int boy) {
 return en*boy*yukseklik;
}

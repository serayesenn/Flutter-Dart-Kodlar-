void main(List<String> args) {
  
  String isim="Seray";
  String soyIsim="Esen";
  int yas=19;

  print("Benim adım $isim, soyadım $soyIsim. Tüm ismimdeki karakter sayısı: ${isim.length + soyIsim.length}");

  double aKenari=5;
  double bKenari=2;
  double cKenari=8;

  print("Kenar uzunlukları ${aKenari.toInt()}, ${bKenari.toInt()} ve ${cKenari.toInt()} olan üçgenin çevresi ${(aKenari + bKenari + cKenari).toInt()}");
}
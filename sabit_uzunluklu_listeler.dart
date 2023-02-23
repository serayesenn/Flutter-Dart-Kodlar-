void main(List<String> args) {
  List<int> sayilar = List.filled(4, 0,
      growable:
          false); // growable kısmı eğer listemiz sabit uzunluklu değil de büyüyen bir listeyse önemli. Sabit uzunluklu bir listeyse bu kısım false olmalı. Aslında orayı hiç yazmasak bie default olarak orası false kabul edilecektir. Burada yazdığımız 0 eğer listenin elemanlarına değer atanmazsa hepsine 0'ı atayacak.
  sayilar[0] = 4;
  sayilar[1] = 2;
  sayilar[2] = 1;
  print(sayilar);
  print("Listenin uzunluğu: " + sayilar.length.toString());
  print(sayilar[3]);

  List<String> isimler = List<String>.filled(4,
      ""); // bu şekilde filled yazmadan önce de veritipi belirtebiliriz ama belirtmesek de olur.
  isimler[0] = "seray";
  isimler[1] = "huseyin";
  isimler[3] = 5.toString();
  print(isimler);

  List<dynamic> karisik = List.filled(
      5, ""); // "" koyduğumuz yere sayı da yazabilirdik, orası önemli değil.
  karisik[0] = "merhaba";
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);

  // Liste elemanlarını gezmeks

  for (int i = 0; i < sayilar.length; i++) {
    print(sayilar[i]);
  }

  print("*****************************************************");

  for (int eleman in sayilar) {
    print(eleman);
  }
}

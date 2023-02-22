void main(List<String> args) {
  // FOR DÖNGÜSÜ

  List isimListesi = ["seray", "hüseyin", "oktay"];

  for (String temp in isimListesi) {
    print(temp);
  }
  print("****************************************");

// Yukarıdakine alternatif çözüm:
  for (int i = 0; i < isimListesi.length; i++) {
    print(isimListesi[i]);
  }

  print("****************************************");

  // WHILE DÖNGÜSÜ

  int sayac = 0;

  while (sayac < 5) {
    print(sayac);
    sayac++;
  }

  print("****************************************");

  // DO WHILE DÖNGÜSÜ

  int sayac2 = 0;

  do {
    print(sayac2);
    sayac2++;
  } while (sayac2 < 5);

  print("****************************************");
// BREAK-CONTINUE ANAHTAR KELİMELERİ

  for (int x = 0; x < 10; x++) {
    if (x > 5) {
      break; // break döngüden çıkarır
    }
    print(x);
  }

  print("****************************************");

  for (int a = 0; a < 10; a++) {
    if (a == 6) {
      continue; // continue o şart dışındakiler için kodun çalışmasını sağlar. örneğin burada 6'yı yazdırmayacak
    }
    print(a);
  }

  print("****************************************");
  ;

  // İÇ İÇE DÖNGÜLER

  for (int j = 1; j < 4; j++) {
    for (int y = 1; y < 4; y++) {
      print("$j * $y = ${j * y}");
    }
  }

  print("****************************************");

  disDongu:
  for (int k = 1; k < 4; k++) {
    for (int m = 1; m < 4; m++) {
      print("$k * $m = ${k * m}");
      if (k == 2) {
        break disDongu; // k=2 olduğunda döngüyü bitirecek
      }
    }
  }
}

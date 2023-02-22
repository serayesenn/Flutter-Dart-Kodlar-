void main(List<String> args) {
  // ARİTMETİK OPERATÖRLER

  double sayi1 = 9;
  double sayi2 = 6;

  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");

  // ATAMA VE KARŞILAŞTIRMA

  int sayi3 = 5;
  sayi3 += 5;
  sayi3 %= 4; // sayi3'ü direkt moduna eşitliyor yani 10%4=2'den 2'ye eşitliyor.
  print(sayi3);

// String ifadeleri karşılaştırırken method değil direkt == veya != kullanıyoruz.

// MANTIKSAL OPERATÖRLER

  bool condition1 = true;
  bool condition2 = false;

  print(condition1 && condition2);
  print(condition1 |
      condition2); // || çift kullanınca dead code uyarısı verdi, tek ile çalıştı. Dead Code (Ölü Kod), bilgisayar yazılımlarının içerisinde yer alan kod dizgilerinin çalışan fakat sonuca etki etmeyen kısımlarıdır. Ölü kodlar diğer kodlarla birlikte çalıştırılır ve işleme alınır ancak işlemin sonucu üzerinde hiçbir etkiye sahip değildirler. Etkisi olmamasına rağmen sorgu üretilmesine neden olduğu için ölü kodlar yazılımların daha geç çalışmasına neden olur ve yazılımların içerisinden ayıklanırlar.

// İŞLEM ÖNCELİĞİ

  int number1 = 10;

  int number2 = 45;

  print(number1++); // Burada sayı 1 artırılır ancak önceki değer yazdırılır.

  print(++number2); // Burada sayı 1 artırılır ve artırılmış değer yazılır.

  int s1 = 10, s2 = 5;
  double sonuc;

  sonuc = ((s1 * s2 + 4 / 2) + (s1++ * s2) + (++s1)).toDouble(); // toDouble kullanmadan da çalışıyor. 
  print(sonuc);
}

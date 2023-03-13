// ignore_for_file: deprecated_member_use

void main(List<String> args) {
  // exceptionlar runtime'da ortaya çıkarlar.

  print("program başladı");

  try {
    int sayi = 100 ~/
        0; // ~ bu işaret bölüm double olacaksa onun int kısmını getir demek. Burası 0 dışında bir sayı olursa sıkıntı yok ancak 0 olursa run time eror. Try kullanarak bu kodu bir dene diyoruz.
    print(sayi);
  } catch (e) {
    // e hatanın kendisidir.
    print("hata çıktı: ${e}");
  } finally {
    print("İşlem Bitti."); // hata çıksa da çıkmasa da çalışacak yer.
  }



  try {
    int sayi = 100 ~/ int.parse("seray");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata: $e");
  } finally {
    print("İşlem bitti.");
  }

  print("Program bitti");
}

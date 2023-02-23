void main(List<String> args) {
  print("Toplam: " +
      sayilariTopla(3)
          .toString()); // Burada mesela sadece sayi1 için atama yaptık ama dilersek sayi2 ve sayi3 içind de atama yapabiliriz.

  print("Fark: " +
      sayilariCikar(num2: 4, num3: 2, num1: 19)
          .toString()); // Bu şekilde atamalarımızı yapıyoruz.
}

// optional
int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  // Eğer kullanıcıya değeri illaki girmek zorunda bırakmıyorsak parametreleri bu şekilde opsiyonel olarak tanımlayabiliyoruz. Ancak kullanıcı bu parameterelere değer girmezse null değer olacakları için bu değerlere örnekteki gibi 0 atamamız doğru olacaktır.
  return sayi1 + sayi2 + sayi3;
}

// optional named
int sayilariCikar({int num1 = 0, int num2 = 0, int num3 = 0}) {
  // Bu şekilde parametreler hem opsiyonel oluyor hem de eğer kullanıcı atama yaparsa istediği parametreden başlayarak atamasını yapıyor.
  return num1 - num2 - num3;
}

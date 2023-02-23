void main(List<String> args) {
  print("Toplam: " +
      sayilariTopla(4, 5)
          .toString()); // Öncesinde bir string ifade olduğu için sonda stringe dönüştürmeyi de unutmuyoruz.
  print("En büyük olan: " + maxOlaniBul(2, 3).toString());
}

int sayilariTopla(int sayi1, int sayi2) =>
    sayi1 +
    sayi2; // Bu tarz gösterimi kullanabilmek için burada tek bir satırlık kod olmak zorundadır.

int maxOlaniBul(int num1, int num2) => num1 > num2 ? num1 : num2;

/*
Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.  
*/

void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;

      // lexical variable scope
      print(aDegiskeni);
      print(
          mainDegiskeni); // en içtek fonksiyonda dış katmanlarının fonksiyonundaki değişkenlere erişebiliriz. Ama içteki fonksiyonun değişkenlerine dış fonksiyonlardan erişim gerçekleşmez.
    }
  }

  var d = carp();
  print(
      d); // bunu çalıştırdığımızda, carp fonksiyonunun bir fonksiyon returnlediğini anlıyoruz. Bu fonksiyonu da d'nin içine attık.

  var sonuc = d(5);
  print(
      sonuc); // d artık fonksiyon olduğu için parametresini verebiliyoruz ve sonuç hesaplanıyor.


        // lexical closure 
      var dondurulenFonksiyon=carp2(30);      // içerideki fonksiyon dışarıdaki fonksiyona bağlanmış oluyor. (30)
      var result=dondurulenFonksiyon(5);  // bu işlemin sonucunda 30*5 yaparak 150'yi verecektir.
      print(result);
}

Function carp() {
  return (int deger) => deger * 2;
}

Function carp2(int value){
  return (int value2) => value*value2;
}
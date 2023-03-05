/*
Dart dilinde interface kavramı yoktur, ama sınıfları impelements anahtar kelimesi ile interfacemiş gibi kulllanabiliriz.  
Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.  
Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.  
Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım sağlanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirilebilir.  
*/

void main(List<String> args) {}

abstract class Hayvan{}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek implements Havlayabilenler, Kosabilenler {
  // Normalde dart çoklu kalıtıma izin vermediği için extends anahtar kelimesini kullanamıyoruz. Bunun yerine implements anahtar kelimesini kullanarak bunu yapabiliriz.
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

// extends ve implementsi bir arada kullanbiliriz:

class Kus extends Hayvan implements Ucabilenler{
  @override
  void fly() {
    // TODO: implement fly
  }

}
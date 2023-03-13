void main(List<String> args) {
  Ogrenci seray=Ogrenci(-5);
  print(seray.yas);
  // Normalde bunu yazdırdığımızda yaş negatif olamaz diyip 0 değerini yazdırıyor.

  try{
    Ogrenci2 seray=Ogrenci2(-5);
  print(seray.yas);
  }catch(e){
    print(e);
  }
}

class AgeException implements Exception{
  String mesaj="Age Exception";

  AgeException({mesaj});

}


class Ogrenci2{
  int yas=0;
  


  Ogrenci2(int y){
    if(y<0){
      throw AgeException();
    } else this.yas=y;
  }
}


class Ogrenci{
  int yas=0;

  Ogrenci(int y){
    if(y<0){
      print("Yaş negatif olamaz.");
    } else this.yas=y;
  }
}
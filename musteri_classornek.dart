class Musteri {
  int? _musteriNo;

  //Musteri(this._musteriNo){}

 /*  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  } */

  

void set musteriNoAta(int no){
  if (no > 300) {
      _musteriNo = no;
    } else
      return;
}

String get musteriNoSoyle{ // getter fonksiyonları oluştururken () kullanmayız
  return "Müşteri no: $_musteriNo";
}

  /* void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("Müşteri oluşturuldu. Müşteri no: $_musteriNo");
  } */
}

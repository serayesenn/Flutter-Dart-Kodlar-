/*
VERİ TİPLERİ VE DEĞİŞKENLER KAVRAMI
DEĞİŞKEN: Bir işlemi gerçekleştirmek içi yapılması gereken ilk şey o veriyi
hafızaya almaktır. İşlem yapmak istediğimizde de veriyi hafızadan çağırıp gerekli
işlemleri yerine getirmektir. Hafızadaki verileri ifade etmek için programlama
dillerinde değişkenleri kullanırız. Özetle, programlama dilinde işlediğimiz
verileri bilgisayarın hafızasında tutmak için yapmış olduğumuz tanımlamalardır.

Tutulan verinin türüne göre farkı veri tipleri vardır. Dart built - in olarak
şu tipleri içerir:
-Number
    int tamsayılar
    double ondalıklı sayılar
-String metinsel ifadeler
-Boolean true/false

Tüm veri tipleri object yani nesnelerdir.

var anahtar kelimes variable anlamına gelir ve veri türünü belirtmek istemiyorsak
kullanırız. Atanan ifadeye göre otomatik olarak türü belirtir.

*/ 


void main(List<String> args) {
  
  int yas=19;
  double ortalama=5.4;
  num yil=2003;
  num ortalama2= 4.5;

  print(yas);

  String ad="seray";

  print(ad);

  print(ad +"in sevdigi renkler");

  bool kizMi=true;

  print(kizMi);

  var okul="ostim";

  var ogrenci_no=210206;

  var kedisiVarMi=false;
}
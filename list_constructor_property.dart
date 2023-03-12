void main(List<String> args) {
  Person seray = Person(3, "seray");
  Person huseyin = Person(4, "hüseyin");
  Person oktay = Person(5, "oktay");
  var ayse = Person(6, "ayşe");
  var ahmet = Ogrenci(7, "ahmet", 4);
  print(ahmet);

  List<Person> tumOgrenciler = [
    seray,
    huseyin,
    oktay,
    ayse,
    ahmet
  ]; // listemizin içine Person tipinde veriler yolladık. Ogrnci tipinde yapsaydık olmazdı çünkü Ogrenci bir alt sınıftır.
  print(tumOgrenciler);

   // Constructors
  // listelerin constructorları vardır. Bunlar liste oluşturulmasını sağlar, [] constructordır.

  var liste1 = List.filled(5, 0); // klasik liste ataması
  var liste2 = List<Ogrenci>.filled(5,
      Ogrenci(0, " ", 0)); // 5 tane Ogrenci nesnesi oluşturan bir liste ataması
  var Listefrom = List.from(
      tumOgrenciler); // buraya iterable türünde yapılar veririz. Bu tür yapılar elemanları art arda okunabilen yapılardır, liste ve set gibi.
  /* var ListeOf = List<Ogrenci>.of(
      tumOgrenciler);  bu <Ogrenci> yaptığımızda hata veriyor. Çünkü üstteki listenin elemanlarının hepsinin Ogrenci türünde olmasını beklemezken ( ki <Ogrenci> yazdığımızda ÇALIŞIRKEN hata verecek. ) bu bekliyor ve değilse hata veriyor. Bu yüzden birazcık daha güvenlidir. AMA tumOgrenciler.whereType<Ogrenci>() yaptığımızzaman hata vermez bu şekilde tipi Ogrenci olan elemanları gezer. */
  var ListeGenerate = List<int>.generate(  // generate bir higher order function'dır.
      5,
      (index) =>
          index +
          2); // burası bir lambda'dır.
          // 5 elemanlı int dizisi oluşturur. dizinin elemanlarını index sayısının 2 fazlası olacak şekilde ayarlanmıştır.
  print(ListeGenerate);

  var ListeGenerate2 =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));
  print(ListeGenerate2);

  var degistirilemezListe = List.unmodifiable([
    1,
    2,
    3
  ]); // bu şekilde değiştirilemez bir liste oluşturuyoruz, listeye eleman ekleme vs yapamıyoruz.


  /* Properties
  * first -> ilk elemanı verir
  * hashCode
  * isEmpty -> bool
  * isNotEmpty
  * last -> son eleman
  * length -> uzunluk
  * reversed -> ters sırada yeni bir liste
  * single -> içinde bir eleman varsa, onu döndürür
  */
}

class Person {
  int id = 0;
  String isim = " ";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id: $id ve isim $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id:$id , isim: $isim, alınan ders sayısı: $alinanDersSayisi\n";
  }
}

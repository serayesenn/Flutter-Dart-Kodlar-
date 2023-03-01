class Ogrenci{
  int id;
  int notDegeri;

  Ogrenci({this.id=1, this.notDegeri=1});

  /* @override
  String toString() {
    // TODO: implement toString
    return super.toString(); 
    BU METOD NESNEYİ EKRANA BASTIRMAMIZI SAĞLAR
    */

    @override
  String toString() {
    
    return "ID: $id, Not Değeri: $notDegeri";
  }
  }

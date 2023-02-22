/* 
  Null safety:
  int number;
  print(number);
  şeklinde değişken oluşturup yazdırdığımızda hata verecektir. Bu yüzden değişken oluşturduğumuz zaman atmasını yapmak zorundayız.
  Varsayılan olarak hiçbir değişkene null atanmaz. Eğer illaki null değer atayacaksak da syntaxi şu şekilde olacak:
  örneğin:
  double? number=null;
   */

void main(List<String> args) {
  double kilo=50.6;
  print(kilo.toInt());

  int hexadecimalSayi=0xAABBCC;
  print(hexadecimalSayi);

}
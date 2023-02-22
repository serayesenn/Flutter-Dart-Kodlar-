/*
String: Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirtilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur.
'ifade 1'
'ifade 2' olarak kullanılabilir.

Interpolation: String ifade içinde başka bir string ifadeyi $ifade olarak
kullanabiliriz.
Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.
*/
void main(List<String> args) {
  
  String isim="seray";
  String soyIsim="esen";
  
  print(isim + " " + soyIsim);

  print("$isim $soyIsim"); // Bu şekilde kullanıma interpolation denmektedir.

  print("Soyadım olan $soyIsim\'de bulunan karakter sayısı: " + soyIsim.length.toString()); // değişken string olduğu için toString kullandık.
  // Bunun da kolay ifade edim yöntemi vardır.
  print("karakter sayısı: ${soyIsim.length}");

  double en=10;
  double boy=12;

  print("Eni ${en.toInt()}, boyu ${boy.toInt()} olan dikdörtgenin alanı: ${(en * boy).toInt()}");
}
void main(List<String> args) {
  
  int sayi1=10;
  int sayi2=24;
  int enKucuk;
  
//sayi1 < sayi2 ? enKucuk=sayi1 : enKucuk=sayi2;

enKucuk= sayi1 < sayi2 ? sayi1 : sayi2;

print(enKucuk);

// ?? ilie null değer olmayanı bulma ve atama


/* String? ad= "Seray";
String? soyad= null;
String? mesaj;

mesaj= ad ?? soyad;
print("Merhaba $mesaj"); */  

// Burada mesajın string? şeklinde atamasını yapmazsak kızar çünkü ad zaten null bir değer olmadığı için bu şekilde yazmana gerek yok diyip uyarı veriyor.



String? ad2=null;
String? soyad2="esen";
String mesaj2;

mesaj2= ad2 ?? soyad2;
print("Merhaba $mesaj2");




}
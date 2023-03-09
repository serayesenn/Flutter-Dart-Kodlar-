void main(List<String> args) {
  Student seray=Student(5, "seray");
  // seray.id=6; değişkenleri class içinde final tanımladığımız için değişiklik yapamıyoruz.

  Student seray2=Student(5, "seray");
  if(seray==seray2){
    print("eşit");
  } else{
    print("Eşit değildir"); // eşit değildir basacak çünkü bellek adreslerini tutuyor. 
  }

  // seray=Student(6, "seray");  bu şekilde değişiklik yapabiliyoruz. Bunun önüne geçmek için kurucuya const 
  
}

class Student{
  final int id;
  final String isim;
  Student(this.id, this.isim);
}
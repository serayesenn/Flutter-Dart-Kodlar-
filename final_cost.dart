void main(List<String> args) {
  final String str1="seray";    // veritipinde var yazamayız.
   // str1="hüseyin";     bu olmuyor final str1'i değiştirilmez kılıyor.

   const String str2="hüseyin";      // var kullanamıyoruz.
   // str2="seray";   aynı şekilde burda da değiştiremiyoruz.

  final liste=[1,2,3];
  final liste2=[4,5,6];

  if(liste==liste2){
    print("Eşit");
  } else{
    print("Eşit değil");
  }  // Bellek adreslerini karşılaştırdığı için eşit değil diyecek.

// final kullandığımızda listeye eleman eklemesi yapabiliyoruz. const kullandığımızda eşit yazdıracak ancak içeriği değiştirilemeyen bir liste oluşturacağı için listeye herhangi bir ekleme yapamıyoruz.  (canonicalized)

}


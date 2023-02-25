void main(List<String> args) {
  List<int?> sayilar =
      []; // <int?> yaptığımız zaman listenin içinde null olabilecek integerlar var diyoruz. Bu da sayilar.length=200; yapıp artırdığımızada hata almamızı önlüyor.
  sayilar.add(1);
  sayilar.add(3);
  sayilar.add(5);
  print(sayilar);
  //sayilar.length=200;
  //mümkün olduğunca üstteki gini kullanmamak lazım.

  List<int> sayilar2 = [1, 2, 3];
  sayilar2
      .add(55); // bu şekilde de nüyüyen liste oluşturup eleman ekleyebiliyoruz.
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(
      55); // ve bu şekilde de büyüyen liste oluşturup eleman ekleyebiliyoruz.
  print(sayilar3);

  List<int> sayilar4 = List.empty(
      growable:
          true); //bu varsayılan olarak sabit ve boş bir liste oluşturur. Bunun büyüyen liste olabilmesi için içine growable:true yazılır. Bu ifadenin List <int> sayilar=[]; 'dan hiçbir farkı yoktur.


}

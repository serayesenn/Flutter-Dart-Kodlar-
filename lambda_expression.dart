/*

Lambda: İsmi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir.  

*/

void main(List<String> args) {
  Function fonksiyon1=(int a, int b){
    int toplam=a+b;
    print(toplam);
  };

  fonksiyon1(5,8);

  var f2=(int s)=>s*2;      // return 2

  print(f2(6));
}
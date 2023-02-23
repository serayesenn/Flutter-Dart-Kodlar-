
 /*
  SORU 1: 3 tane double değişken oluşturup bunların ortalamasını yazdıran program
  SORU 2: Kenarlarını girdiğiniz üçgenin çeşidini yazdıran program
  SORU 3: Vize ve final notlarını alıp dersi geçip geçmediğini yazdıran program (geçme notu alt değeri 50, vizenin %40'ı finalin %60'ı alınır)
  SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız
  SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız
  SORU 6: Tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız
  */
void main(List<String> args) {
 
// 1. SORU

double a=5.5;
double b=4.7;
double c=8.9;
double ort;

ort= (a+b+c)/3;
print(ort);

print("***********************************************");

// 2. SORU

int kenar1=5;
int kenar2=5;
int kenar3=5;

if(kenar1==kenar2 && kenar2!=kenar3 && kenar1!=kenar3){
  print("Bu üçgen ikizkenar üçgendir.");
}
if(kenar1==kenar3 && kenar3!=kenar3 && kenar1!=kenar2){
  print("Bu üçgen ikizkenar üçgendir.");
}
if(kenar2==kenar3 && kenar3!=kenar1 && kenar2!=kenar1){
  print("Bu üçgen ikizkenar üçgendir.");
}
else if (kenar1==kenar2&& kenar2==kenar3){
  print("Bu üçgen eşkenar üçgendir.");
}
else{
  print("Bu üçgen çeşitkenar üçgendir.");
}

print("***********************************************");

// 3. SORU

int vizeNotu=55;
int finalNotu=67;
double gecmeNotu;

gecmeNotu= ((vizeNotu*4)/10 + (finalNotu*6)/10);

if(gecmeNotu>50){
  print("Notunuz: $gecmeNotu, dersi geçtiniz.");
}
else{
  print("Notunuz: $gecmeNotu, dersten kaldınız.");
}

print("***********************************************");

// 4. SORU

String isim="Seray";
int sayac=1;

while(sayac<=5){
  print(isim);
  sayac++;
}

print("***********************************************");

// 5. SORU

for(int i=1; i<=100;i++){
  if(i%15==0){
    print(i*i);
  }
}

print("***********************************************");

// 6. SORU

int sayi=5;
int fakt=1;

for(int x=sayi; x>0; x--){
  fakt=fakt*x;
}
print(fakt);
}
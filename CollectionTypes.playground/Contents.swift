import UIKit

//              Collection Types

/*
 
 Array = indeks numarasıyla cagırılır, ilk değer 0 dan baslar. düzenli islemlerde kullanılır. en cok kullanılan tiptir.
 
 Set   =  Düzensizdir. içeriğini karıştırır.  (karıştırma özellkleri kullanılabilir.)
 
 Dictionary = Array'e benzer. ancak indeks numarası değil, keysler kullanılarak değer atanabilir. kullanışlıdır.
 
 */




//                              ARRAY

// Array Kullanımı
var haliSaha = ["Ahmet","Mehmet","Tugrul"]
var meyveler = [String]()


// Veri Ekleme
meyveler.append("Elma")  // 0. indeks olur
meyveler.append("Muz")  // 1. indeks olur
meyveler.append("Kavun") // 2. indeks olur


// Veri Güncelleme
meyveler[0] = "kiraz"
print(meyveler)


// İnsert = Veri ekler ancak indeks numarasını biz belirleriz
meyveler.insert("Portakal", at: 1)
print(meyveler)


//Veri Okuma
print(meyveler[3])

var m = meyveler[2]
print(m)


print("Boyutu : \(meyveler.count)")  // Kümenin boyutu hakkında bilgi verir.

print("Boş mu : \(meyveler.isEmpty)") // Kümenin boş olup olmadıgı hakkında bilgi verir.


for meyve in meyveler {                 // Bu içeriği şekilde sıralayabiliriz
    print("Sonuc 1 : \(meyve)")
}

for (i,meyve) in meyveler.enumerated() {      // Sıralı indeksini görmek istiyorsak bunu yapabiliriz.
    print(" No \(i) -> \(meyve)")
}


// Veri Silme İşlemi    (remove)

meyveler.remove(at: 2)  // 2. indeks numaralı veriyi siler
print(meyveler)




        // Nesne Tabanli Ornekler

class Ogrenciler {
    var no : Int?
    var ad : String?
    var sinif : String?
    
    init(no : Int,ad : String,sinif : String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    
}

var a1 = Ogrenciler(no: 166, ad: "Muhammet", sinif: "3C")
var a2 = Ogrenciler(no: 122, ad: "Ayse", sinif: "4C")
var a3 = Ogrenciler(no: 200, ad: "Omur", sinif: "5A")
var a4 = Ogrenciler(no: 336, ad: "Burak", sinif: "3D")
var a5 = Ogrenciler(no: 886, ad: "Selen", sinif: "4C")
var a6 = Ogrenciler(no: 136, ad: "Derya", sinif: "3C")


var ogrenciListesi = [Ogrenciler]()
ogrenciListesi.append(a1)
ogrenciListesi.append(a2)
ogrenciListesi.append(a3)
ogrenciListesi.append(a4)
ogrenciListesi.append(a5)
ogrenciListesi.append(a6)


for i in ogrenciListesi {
    print("No : \(i.no!) - Ad : \(i.ad!) - Sınıf : \(i.sinif!)")
    
}

print("----------------------------------")

//ARRAY FİLTRELEME

var f1 = ogrenciListesi.filter({ $0.no! > 200 && $0.no! < 400 })   // numarası 200 den büyük, 400 den küçük olanları göster

for l in f1 {
    print("No : \(l.no!) - Ad : \(l.ad!) - Sınıf : \(l.sinif!)")
    
}


print("-------------")


// ARRAY SIRALAMA - SORTİNG

var s1 = ogrenciListesi.sorted(by: )({ $0.no! < $1.no! })   // Kücükten Büyüge sırala
print("Kücükten Büyüge doğru sıralandı ;")
for l in s1 {
    print("No : \(l.no!) - Ad : \(l.ad!) - Sınıf : \(l.sinif!)")
    
}

var s2 = ogrenciListesi.sorted(by: )({ $0.no! > $1.no! })   // Buyukten Kucuge sırala
print("Buyukten kucuge doğru sıralandı ;")
for l in s2 {
    print("No : \(l.no!) - Ad : \(l.ad!) - Sınıf : \(l.sinif!)")
    
}

var s3 = ogrenciListesi.sorted(by: )({ $0.ad! < $1.ad! })   // Metinsel Kücükten Büyüge sırala
print("Metinsel olarak Kucukten Büyüge doğru sıralandı ;")
for l in s3 {
    print("No : \(l.no!) - Ad : \(l.ad!) - Sınıf : \(l.sinif!)")
    
}

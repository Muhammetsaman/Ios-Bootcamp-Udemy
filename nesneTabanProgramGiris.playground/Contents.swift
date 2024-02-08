import UIKit

/* NESNE TABANLI PROGRAMLAMA
 
 CLASS  : Kısaca taslak gibi düşünebiliriz.
 STRUCT : Bu taslağın oluşturduğu yapılardır.                            
 
 Örneğin filmler uygulaması: bir film afişi taslağımız var bu taslağı kullanarak birçok film afişi yapabiliriz. Bunun için ilk olarak
 bir afiş taslagı oluşturacagız, bu bizim sınıfımız olacak. ardından bu sınıftan nesneler üretip buraya diğer film afişlerini ekleyebileceğiz.             */


// Class örneği taslak oluşturalım

class Araba {
    var renk:String?
    var hiz:Int?                    // burada bir sınıf oluşturdum ve burada ki değişkenlere sonradan farklı değerler atayıp onlara kendi aralarında                                    farklı özellikler vereceğim.
    var calisiyorMu:Bool?
    
    init(renk:String,hiz:Int,calisiyorMu:Bool) {    // Bu sayede değer atarken tek tek yazmak yerine tek satırda hepsine değer atayabileceğim.
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
        print("init metodu çalışıyor")
    }
    
    
    
    
    func Calistir () {              // Fonksiyonlar ekledim ve arabalarımın hızını kontrol edebileceğim
        hiz = 5
        calisiyorMu = true
    }
    
    func Durdur() {
        hiz = 0
        calisiyorMu = false
    }
    
    func hizlan(kackm:Int) {
        hiz!+=kackm  // hiz + kackm = hiz
    }
    
    func yavasla(kackm:Int){
        hiz!-=kackm
    }
    
    func BilgiAl() {            // yaptıgım bu fonksiyon sayesinde defalarca print yaptırma derdinden kurtulacağım
        
        
        print("--------------------")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu?: \(calisiyorMu!)")
        
        
    }
}


// Nesne oluşturma

var audi = Araba(renk:"siyah", hiz: 200, calisiyorMu: true)

var tofas = Araba(renk: "Beyaz", hiz: 120, calisiyorMu: false)

// Değer atama                          ANCAK daha kolay metodu var. init metodu

audi.renk = "Siyah"
audi.hiz = 250
audi.calisiyorMu = true


tofas.renk = "Mavi"
tofas.hiz = 150
tofas.calisiyorMu = false




// Değer okuma

print("--------------------")
print("Renk         : \(audi.renk!)")
print("Hız          : \(audi.hiz!)")
print("Çalışıyor mu?: \(audi.calisiyorMu!)")

                                                        // ANCAK bunun daha pratik bir yolu var. Fonksiyon oluşturma (func)
print("--------------------")
print("Renk         :\(tofas.renk!)")
print("Hız          : \(tofas.hiz!)")
print("Çalışıyor mu?: \(tofas.calisiyorMu!)")


// Fonksiyonu taslagın icine yerlestirdikten sonra tek yapmam gereken fonskiyonu calıstırmak. her özelliği ayrı ayrı okutmama gerek yok.

var mercedes = Araba(renk:"Turuncu" , hiz:300, calisiyorMu: true)
mercedes.renk = "Turuncu"
mercedes.hiz = 300
mercedes.calisiyorMu = true

mercedes.BilgiAl()
mercedes.Durdur()
mercedes.BilgiAl()
mercedes.Calistir()
mercedes.BilgiAl()
mercedes.hizlan(kackm: 120) // Aracı hızlandırdım
mercedes.BilgiAl()
mercedes.yavasla(kackm: 30) // Aracı yavaslattım
mercedes.BilgiAl()


// init metodu tek te değer atamak yerine tek seferde bütün değerleri vermemizi sağlayacak.

var ferrari = Araba(renk: "kırmızı", hiz: 350, calisiyorMu: true)
ferrari.BilgiAl()

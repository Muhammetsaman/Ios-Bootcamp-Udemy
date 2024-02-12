import UIKit
 
//       STATİC DEGİSKENLER VE METODLAR

class ASinifi {
    
  static  var x = 10
    
    static func metod () {
        print(" Metod Çalıştı.")
    }
}


let a = ASinifi()

/* print(a.x)        // TEK DEĞER İLE BÜTÜN SINIF İÇERĞİNE ULAŞABİLİRİZ. DAHA PRATİKTİR.
print(a.metod())


print(ASinifi().x) // SANAL NESNE - VİRTUAL OBJECT - İSİMSİZ NESNE   (DAHA FAZLA YER TUTAR)  static tanımlama ile karıştırılabilir benzerdir.
ASinifi().metod()   */


print(ASinifi.x)
ASinifi.metod()   // Static (ASinifinin yanında ki parantezleri kaldıracağız.) Direkt olarak sınıf ve içeriğine ulaşmamızı sağlayacak.






//           ENUMERATİON     :   değerleri küme halinde  gruplayarak sonradan daha rahat erişebilmemizi sağlayacaktır. kodun okunmasında ve yazılmasında faydalı olacak.




enum CikolataDukkani {
        
        case kucuk
        case orta
        case buyuk
}

func FiyatHesapla (boyut : CikolataDukkani, Adet : Int) {
    switch boyut {
        case .kucuk : print("Fiyat : \(Adet * 10)")
        case .orta : print("Fiyat : \(Adet * 15)")
        case .buyuk : print("Fiyat : \(Adet * 20)")
    }
    
}
FiyatHesapla(boyut: .orta, Adet: 10)
FiyatHesapla(boyut: .buyuk, Adet: 55)



enum iphoneModelleri {
    case iphone11
    case iphone12
    case iphone13
    case iphone14
    case iphone15
}


func iphoneFiyatlari(Model: iphoneModelleri, Adet: Int ) {
    switch Model {
    
    case .iphone11 : print("Model İphone 11, Fiyat : \(Adet * 20000)")
    case .iphone12 : print("Model İphone 12, Fiyat : \(Adet * 25000)")
    case .iphone13 : print("Model İphone 13, Fiyat : \(Adet * 33000)")
    case .iphone14 : print("Model İphone 14, Fiyat : \(Adet * 38000)")
    case .iphone15 : print("Model İphone 15, Fiyat : \(Adet * 45000)")
   
    }
    
}


iphoneFiyatlari(Model: .iphone13, Adet: 5)
iphoneFiyatlari(Model: .iphone11, Adet: 2)




//          COMPOSİTİON    : Veri yapılarında ki değerleri birbirleri ile ilişkilendirirken başvuracağımız yöntemdir.

    
    class kategoriler {
        var kategori_id:Int?
        var kategori_ad:String?
        
        init(kategori_id: Int?, kategori_ad: String?) {
            self.kategori_id = kategori_id
            self.kategori_ad = kategori_ad
        }
        
    }
    
    
    class yonetmenler {
        var yonetmen_id: Int?
        var yonetmen_ad : String?
        
        
        init(yonetmen_id: Int?, yonetmen_ad: String?) {
            self.yonetmen_id = yonetmen_id
            self.yonetmen_ad = yonetmen_ad
        }
        
    }
    
    class filmler {
        var film_id: Int?
        var film_ad: String?
        var film_yil: Int?
        var kategori: kategoriler?
        var yonetmen: yonetmenler?
        
        
        init(film_id: Int?, film_ad: String?, film_yil: Int?, kategori: kategoriler?, yonetmen: yonetmenler?) {
            self.film_id = film_id
            self.film_ad = film_ad
            self.film_yil = film_yil
            self.kategori = kategori
            self.yonetmen = yonetmen
        }
    }


var k1 = kategoriler(kategori_id: 1, kategori_ad: "Dram")
var k2 = kategoriler(kategori_id: 2, kategori_ad: "Korku")
var k3 = kategoriler(kategori_id: 3, kategori_ad: "Aksiyon")

var y1 = yonetmenler(yonetmen_id: 1, yonetmen_ad: "Christoper Nolan")
var y2 = yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quetin Tarantino")
var y3 = yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")

var f1 = filmler(film_id: 1, film_ad: "Oppenheimer", film_yil: 2023, kategori: k1, yonetmen: y1)

print("Film İD         : \(f1.film_id!)")
print("Film Adı        : \(f1.film_ad!)")
print("Film Yılı       : \(f1.film_yil!)")
print("Film Kategorisi : \(f1.kategori!.kategori_ad!)")
print("Film Yönetmeni  : \(f1.yonetmen!.yonetmen_ad!)")

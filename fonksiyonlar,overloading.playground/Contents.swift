import UIKit

/* Fonksiyonlar belirli işlemleri temsil eden yapılardır
 kullanım amacı tekrarlanan kod yapılarının önüne geçmektir.
 kodun hem okunmasına faydası vardır hemde daha pratik hale getirir.
 Class ve Stucture içinde yer alan fonksiyonlara denir
 
 
 func "fonksiyon adı" ( parametre ) -> " " {

        // kodlama buraya yazılır
 
                return (dönüş değeri)
 
    }                                                                                       */



class Fonksiyonlar {
    
    // GERİ DÖNÜŞ DEĞERİ OLMAYAN  (VOİD)
    func selamla1 () {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    // GERİ DÖNÜŞ DEĞERİ OLAN
    func selamla2 () -> String {
        let sonuc2 = "Merhaba Ahmet"
        return sonuc2
    }
    
    // Parametre Ekleme
    func selamla3 (isim : String) {   // Parametreyi bu satıra ekledikten sonra sonradan girilen değer calısacaktır.
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama (sayi1 : Int, sayi2 : Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
 
    // OVERLOADİNG : metodların class içerisinde tekrar tekrar kullanılmasını saglar. aynı isimde bir fonksiyonu parametrelerin türlerini değistirerek defalarca kullanabilirim.
    
    func carpma (sayi1:Int,sayi2:Int) {
        let carpım = sayi1 * sayi2
        print("Sonuc : \(carpım)")    }
    
    func carpma (sayi1:Double,sayi2:Double){
        let carpım = sayi1 * sayi2
        print("Sonuc : \(carpım)")
    }
    
    func carpma (sayi1:Int,sayi2:Int,yapanKisi:String){
        let carpma = sayi1 * sayi2
        print("Sonuc : \(carpma) , İslemi yapan kisi \(yapanKisi)")
    }
    
}

let a = Fonksiyonlar()
a.selamla1()


let GelenSonuc = a.selamla2()
print("Gelen Sonuc : \(GelenSonuc)")


a.selamla3(isim: "zeynep")


let GelenToplam = a.toplama(sayi1: 20, sayi2: 35)
print("Gelen Toplam : \(GelenToplam)")


a.carpma(sayi1: 25, sayi2: 5, yapanKisi: "Muhammet")
a.carpma(sayi1: 15, sayi2: 3)
a.carpma(sayi1: 12.2, sayi2: 13.1)

import UIKit

/*
 GUARD
 if yapısının tersi gibi düşünebiliriz. koşul sağlanmadığı takdirde return ederek kodu çalıştırmaz ve diğer kod bloğunun çalışmasını sağlar.
 */



// İF Örneği

func KisiTanimla1 (ad : String) {     // Eğer isim Ahmet ise HG Ahmet bey yazdır, değilse else çalışsın
    if ad == "Ahmet" {
        print("Hoşgeldiniz Ahmey Bey")
    }else {
        print("Tanımsız Kişi")
    }
    
}


// GUARD Örneği

func KisiTanimla2 (ad: String){
    guard ad == "Ahmet" else {
        print("Tanınmayan Kişi")
        return
    }
    print("Hoşgeldiniz Ahmet Bey")
}

KisiTanimla2(ad: "Ahmet")



// HATA AYIKLAMA

// compile error : editor hataları

// let x = 40
// x = 50



// Runtime error hataları : exception : Çalışma sırasında oluşan hatalar

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme (sayi1: Int , sayi2 : Int) throws -> Int{
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sıfıra Bölünemez")
}

// Veya

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)  // Hata olursa sonuc nil olur

if let temp = sonuc1 {
    print(temp)
} else {
    print("Sıfıra bölünemez")
}

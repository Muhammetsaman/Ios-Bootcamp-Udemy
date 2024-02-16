import UIKit


//                 Override Kalıtım

//    Mevcut sınıftan başka sınıflar türetmek için kullanılır. 
//    üst sınıfa superclass, alt sınıfa subclass denir
//    bir sınıfa birden fazla sınıf kalıtım yoluyla bağlanamaz.





class Ev {
    var pencereSayisi :Int?
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}



class Saray : Ev {                  //  : kullanarak ev sınıfını saraya bağladım.
    var kuleSayisi: Int?
    init(kuleSayisi: Int, pencereSayisi: Int ){   // değer verme işini kullanıcıya bırakıyorum.
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa : Ev {
    var garajVarmi :Bool?
    init(garajVarmi: Bool,pencereSayisi :Int ) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}


let topkapiSarayi = Saray(kuleSayisi: 7, pencereSayisi: 55)

let buyukVilla = Villa(garajVarmi: true, pencereSayisi: 8)

print("Topkapı Sarayı Kule Sayısı: \(topkapiSarayi.kuleSayisi!)")
print("Topkapı Sarayı Pencere Sayısı: \(topkapiSarayi.pencereSayisi!)")


print("Buyuk villa garaj var mı? : \(buyukVilla.garajVarmi!)")
print("Buyuk villa pencere sayısı : \(buyukVilla.pencereSayisi!)")




//             OVERRİDE

 //         Üst sınıf metodlarının, alt sınıflarda tekrar tekrar kullanılmasıdır.

//          örn Hayvan > Memeli > Kedi,Köpek (ses çıkar)




class Hayvan {
    func sesCikar() {
        print("Sesim yok")
    }
}


class Memeli : Hayvan {
    
    
        }


class Kedi : Memeli {
   
    override func sesCikar() {
        print("Miyav Miyav")
    }
}


class Kopek : Memeli {
   
    override func sesCikar() {
        print("Hav Hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() // Kalıtım yok kendi fonksiyonunu çalıştırır
memeli.sesCikar() // Kalıtım var üst sınıfının fonksiyonunu çalıştırır
kedi.sesCikar()   // Kalıtım var ama kendi metodlarını kullanıyor
kopek.sesCikar() // Kalıtım var ama kendi metodlarını kullanıyor





//          Nesnelerin tur Dönüşümü  DownCasting, UpCasting


// DownCasting:  üst sınıfın(super class) alt sınıfa dönüşmesi downcasting. örn; evin, saraya ve villaya dönüşmesi.     as! ve as? keywordu kullanılır.

// UpCasting : Alt sınıfın(sub class) üst sınıfa dönüşmesi upcasting. örb ; sarayın veya villanın, eve dönüşmesi.       as keywordu kullanılır.

// Her zaman kalıtım şartı aranır. örneğin saray villaya dönüşemez çünkü aralarında kalıtım ilişkisi yoktur.




var saray = Ev(pencereSayisi: 45) as? Saray // DownCasting

var ev = Saray(kuleSayisi: 30, pencereSayisi: 44) as Ev // UpCasting






//          PROTOCOL (İNTERFACE)

/* Yapılar arası iletişim kurmak için kullanılabilir.
 : İLE KULLANILIR
 Bir sınıf birden fazla protocol alabilir
 Kalıtım ile arasında ki fark: kalıtımda üst yapıyı altta kulanırken fonksiyonunu almak zorunda değildik ancak
 protocolde bütün fonksiyonları kullanmak zorundayız 
 Kalıtımda bir yerden özellik alıyorsa , ile başka yerden özellik alamaz ama protocolde alınabilir      */


// Taslak
protocol MyProtocol {
    var degisken : Int {get set} // Hem değer atayabiliriz, hem değer okuyabiliriz.
    
    func metod1 ()
    func metod2 () -> String
    
}
 
 
class ClassA : MyProtocol {
    var degisken: Int = 5555
    
    func metod1() {
        print("Metod 1 Calisti")
    }
    
    func metod2() -> String {
        return("Metod 2 calisti..")
    }
}

var a = ClassA()
print(a.degisken)

a.metod1()

print(a.metod2())




// Extension  (Genişletme)


extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi
    }
    
}

var x = 3.carp(sayi: 55)
print(x)



// Closure

var ifade = {
    print("Selam")
}

ifade()

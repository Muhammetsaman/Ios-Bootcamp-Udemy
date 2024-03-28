//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Muhammet on 28.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Tanımlama
        let ud = UserDefaults.standard
            
        
        // Kayıt
        ud.set("Ahmet", forKey: "ad")
        ud.set(1.78, forKey: "boy")
        ud.set(23, forKey: "yas")
        ud.set("true", forKey: "bekar")
        
        let liste = ["ali" , "ece"]
        ud.setValue(liste, forKey: "liste")
        
        let sehir = ["16" : "BURSA" , "34" : "İSTANBUL"]
        ud.setValue(sehir, forKey: "sehirler")
       
        
        // Silme
//                ud.removeObject(forKey: "ad")
        
        
        // Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"  // eğer ad boşsa isim yok yazdıracak
        let gelenYas = ud.integer(forKey: "yas")
        let gelenBoy = ud.double(forKey: "boy")
        let gelenBekar = ud.bool(forKey: "bekar")
        
        print("Gelen Ad    : \(gelenAd)")
        print("Gelen Yaş   : \(gelenYas)")
        print("Gelen Boy   : \(gelenBoy)")
        print("Gelen Bekar : \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
       
        for a in gelenListe {
            print("Gelen Liste : \(a)")
        }
        
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String : String]()
        
    
         for (anahtar,deger) in gelenSehirler {
             print("Gelen Şehir : \(anahtar) -> \(deger)")
         }
        
        
        // Sayac
        
        var sayac = ud.integer(forKey: "sayac")
        sayac = sayac + 1
        ud.set(sayac, forKey: "sayac")
        labelSayac.text = "Açılış Sayısı : \(sayac)"
        
       
    }


}


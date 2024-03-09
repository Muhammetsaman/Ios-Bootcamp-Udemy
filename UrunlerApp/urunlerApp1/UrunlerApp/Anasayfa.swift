//
//  ViewController.swift
//  UrunlerApp
//
//  Created by Muhammet on 7.03.2024.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var urunlerTableView: UITableView!
        
     var urunlerListesi = [Urunler]()
    
    override func viewDidLoad() {
        
        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        
        super.viewDidLoad()
  
        var u1 = Urunler(id: 1, ad: "Macbook Pro", resim: "bilgisayar", fiyat:43000)
        var u2 = Urunler(id: 2, ad: "Rayban Club Master", resim: "gozluk", fiyat:3000)
        var u3 = Urunler(id: 3, ad: "Sony ZX Series", resim: "kulaklik", fiyat:40000)
        var u4 = Urunler(id: 4, ad: "Gio Armani", resim: "parfum", fiyat:2000)
        var u5 = Urunler(id: 5, ad: "Casio X Series", resim: "saat", fiyat:8000)
        var u6 = Urunler(id: 6, ad: "Dyson V8", resim: "supurge", fiyat:180000)
        var u7 = Urunler(id: 7, ad: "Iphone 13", resim: "telefon", fiyat:32000)
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
            
        urunlerTableView.separatorColor = UIColor(white: 0.95, alpha: 1) // arka plan rengiyle aynı yaptım
        
    }

}

extension Anasayfa : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let urun = urunlerListesi[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "urunlerHucre") as! UrunlerHucre
        hucre.imageViewUrun.image = UIImage(named: urun.resim!)
        hucre.labelUrunAd.text = urun.ad
        hucre.labelUrunFiyat.text = "\(urun.fiyat!) ₺"
        
        hucre.backgroundColor = UIColor(white: 0.95, alpha: 1)
        hucre.hucreArkaPlan.layer.cornerRadius = 10
        
       return hucre
    }
}


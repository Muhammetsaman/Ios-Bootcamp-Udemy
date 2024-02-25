//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Muhammet on 21.02.2024.
//

import UIKit

class AnaSayfa: UIViewController {
    
    @IBOutlet weak var labelAnaSayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnaSayfa.text =  "Hoşgeldiniz!"
        
    }
    
    @IBAction func buttonAnaSayfa(_ sender: Any) {
        labelAnaSayfa.text =  "Diğer sayfaya geçin"
        labelAnaSayfa.text = "Selamm"
        labelAnaSayfa.sizeToFit()
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 33, boy: 1.88, bekarMi: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender:kisi)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        print("Prepare metodu Çalıştı")  // Sayfada ki tüm geçişleri algıladıgı icin filtreleme yapmamız gerekir.
        
        if segue.identifier == "oyunEkraninaGecis" {  // Filtreleme bu şekilde yapılır.
            print("oyunEkraninaGecis calisti")
            
            if let veri = sender as? Kisiler {
                print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkraniVC // Destination hedef sayfa
                gidilecekVC.kisi = veri // veri adlı veriyi sonra ki sayfada ki  mesaja ilettik
                
                
            }
        }
        
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        if let yutuplink = URL(string:"https://www.youtube.com/channel/UCvGZBCDfPVhKWWGsgULiDdw") {
            UIApplication.shared.open(yutuplink, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func buttonSavee(_ sender: Any) {
        print("Kaydedildi")
    }
    
}


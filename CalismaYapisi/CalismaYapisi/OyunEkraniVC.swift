//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Muhammet on 21.02.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            
            print("-----------Oyun Ekranı-------------")
            print("Kişi adı     : \(k.ad!)")
            print("Kişi yaş     : \(k.yas!)")
            print("Kişi Boyu    : \(k.boy!)")
            print("Kişi adı     : \(k.bekarMi!)")
                                    
        }
        
        
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
         performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
}

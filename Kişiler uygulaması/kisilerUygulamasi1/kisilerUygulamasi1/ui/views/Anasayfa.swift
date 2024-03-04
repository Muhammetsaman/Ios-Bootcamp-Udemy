//
//  ViewController.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 4.03.2024.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }


    @IBAction func buttonDetay(_ sender: Any) {
        
        let kisi = kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "6666")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? kisiler{
                let gidilecekVC = segue.destination as! kisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
    
    
    
}





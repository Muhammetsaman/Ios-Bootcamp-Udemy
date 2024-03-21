//
//  kisiDetay.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 4.03.2024.
//

import UIKit

class kisiDetay: UIViewController {
    
   
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var viewModel = KisiDetayViewModel()
    
    
    var kisi:kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
        
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text , let k = kisi {
            viewModel.guncelle(kisi_id: k.kisi_id!, kisi_ad: k.kisi_ad!, kisi_tel: k.kisi_tel!)
            
           
            
        }
        
    }
    
   
}

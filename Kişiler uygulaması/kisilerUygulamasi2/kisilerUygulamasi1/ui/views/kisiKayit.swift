//
//  kisiKayit.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 4.03.2024.
//

import UIKit

class kisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var viewModel = KisiKayıtViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



    }
    

    @IBAction func buttonKaydet(_ sender: Any) {
        
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            viewModel.kaydet(kisi_ad: ka, kisi_tel: kt)
        
        }
        
    }
    
    
    
    
}

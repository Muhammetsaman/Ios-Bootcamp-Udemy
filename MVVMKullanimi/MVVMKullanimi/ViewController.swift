//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Muhammet on 20.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldsSayi1: UITextField!
    @IBOutlet weak var textFieldSayi2: UITextField!
    
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        _ = viewModel.sonuc.subscribe(onNext: {
            s in self.labelSonuc.text = s       // Dinleme
        })
        
            
    }

    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = textFieldsSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
          
        }
        
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = textFieldsSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            
        }
    }
    
    
}


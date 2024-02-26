//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Muhammet on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başık", message: "Mesaj", preferredStyle: .alert)
        
        self.present(alertController, animated: true)
        
        let iptalAction = UIAlertAction(title: "İptal", style:.cancel){
            action in print("İptal edildi")
        }
        
        
        let tamamAction = UIAlertAction(title: "Tamam", style:.destructive){
            action in print("Tamam seçildi")
        }
        
        alertController.addAction(iptalAction)
        alertController.addAction(tamamAction)
    }
    
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let actionSheetController = UIAlertController(title: "Başık", message: "Mesaj", preferredStyle: .actionSheet)
        
        self.present(actionSheetController, animated: true)
        
        let iptalAction = UIAlertAction(title: "İptal", style:.cancel){
            action in print("İptal edildi")
        }
        
        
        let tamamAction = UIAlertAction(title: "Tamam", style:.destructive){
            action in print("Tamam seçildi")
        }
        
        actionSheetController.addAction(iptalAction)
        actionSheetController.addAction(tamamAction)
    }
    
    
    @IBAction func ButtonOzelAlert(_ sender: Any) {
        
        let ozelAlert = UIAlertController(title: "Giriş", message: "Mesaj", preferredStyle: .alert)
        
        self.present(ozelAlert, animated: true)
        
      
        
        ozelAlert.addTextField {
            textfield in textfield.placeholder = "Kullanıcı Adı Giriniz" // arkaplanda ki yazıyı ayarlar
            textfield.keyboardType      = .numbersAndPunctuation // rakam klavyesi kullan
            textfield.isSecureTextEntry = false // güvenli olsun (her rakam girdiğinde öncekini noktaya çevirir.
                    }
        
        ozelAlert.addTextField {
            textfield in textfield.placeholder = "Şifre Giriniz" // arkaplanda ki yazıyı ayarlar
            textfield.keyboardType      = .numberPad // rakam klavyesi kullan
            textfield.isSecureTextEntry = true // güvenli olsun (her rakam girdiğinde öncekini noktaya çevirir.
                    }
        
        let tamamAction = UIAlertAction(title: "Kaydet", style:.cancel){
            action in let tf = ozelAlert.textFields! [0] as UITextField
            let tf1 = ozelAlert.textFields! [1] as UITextField
            
            if let kullaniciAdi = tf.text , let kullaniciSifre = tf1.text{
                print("Kullanıcı Adı : \(kullaniciAdi)")
                print("Kullanıcı Şifre : \(kullaniciSifre)")
            }
            
        }
        
        ozelAlert.addAction(tamamAction)
        
    }
      
}


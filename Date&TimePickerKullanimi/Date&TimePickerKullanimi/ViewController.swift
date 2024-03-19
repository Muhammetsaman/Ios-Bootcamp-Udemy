//
//  ViewController.swift
//  Date&TimePickerKullanimi
//
//  Created by Muhammet on 19.03.2024.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var tfTarih: UITextField!
   @IBOutlet weak var tfSaat: UITextField!
    
    
    var datePicker: UIDatePicker?
    var timePicker: UIDatePicker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date // Tarih Göster
        tfTarih.inputView = datePicker // datePickerı tftarih textfieldına aktardık
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time // Saat Göster
        tfSaat.inputView = timePicker // datePickerı tfSaat textfieldına aktardık
        
        
        if #available(iOS 13.4, *){  // Eğer ios 13.4 üstü ise aşağıda ki tekerlek stilini kullan
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
            
        }
        
        
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))  // aşağıda ki metodu çalıştırdık.
        view.addGestureRecognizer(dokunmaAlgilama)
        
        //Verileri anlık aktarmak için
        datePicker?.addTarget(self, action: #selector(tarihGoster(uidDatePicker:)), for: .valueChanged)
        timePicker?.addTarget(self, action: #selector(saatGoster(uisaat:)), for:
            .valueChanged)
        
        
    }

    @objc func dokunmaAlgilamaMetod(){
        print("Ekrana Dokunuldu")
        view.endEditing(true)
    }

    @objc func tarihGoster(uidDatePicker : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MM.dd.yyyy" // Format Seçimi (gün,ay,yıl veya ay,gün,yıl vs.)
        let alinanTarih = format.string(from: uidDatePicker.date)
        tfTarih.text = alinanTarih
    }
    
    @objc func saatGoster(uisaat : UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let alinanSaat = format.string(from: uisaat.date)
        tfSaat.text = alinanSaat
        
        
    }
  }

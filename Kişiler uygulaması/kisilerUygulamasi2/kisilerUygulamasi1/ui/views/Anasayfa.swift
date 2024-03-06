//
//  ViewController.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 4.03.2024.
//

import UIKit

class Anasayfa: UIViewController {  // searchBar için protkol eklememiz gerekiyor
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    var kisilerListesi = [kisiler]()
  
    override func viewDidLoad() {
        kisilerTableView.dataSource = self
        kisilerTableView.delegate = self
        
        super.viewDidLoad()
        searchBar.delegate = self  // searchbar ile protokol arası bağlantı kurduk
        
        var k1 = kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        var k4 = kisiler(kisi_id: 4, kisi_ad: "Selim", kisi_tel: "5555")
        var k2 = kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222")
        var k3 = kisiler(kisi_id: 3, kisi_ad: "Fatih", kisi_tel: "3333")
        var k5 = kisiler(kisi_id: 5, kisi_ad: "Selen", kisi_tel: "9876")
        var k6 = kisiler(kisi_id: 6, kisi_ad: "Ayşe", kisi_tel: "9076")
        var k7 = kisiler(kisi_id: 7, kisi_ad: "Oguz", kisi_tel: "1234")
        var k8 = kisiler(kisi_id: 8, kisi_ad: "İsmail", kisi_tel: "7635")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
        kisilerListesi.append(k4)
        kisilerListesi.append(k5)
        kisilerListesi.append(k6)
        kisilerListesi.append(k7)
        kisilerListesi.append(k8)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya dönüldü")
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

// Genişletelim
extension Anasayfa : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi Ara :  \(searchText)")
    }
}


extension Anasayfa : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  kisilerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi[indexPath.row]
        
        var hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        hucre.labelkisiad.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        
        
        return hucre
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){contextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) Silinsin mi?", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
           
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                print("Kişi Sil \(kisi.kisi_id!)")
                
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}

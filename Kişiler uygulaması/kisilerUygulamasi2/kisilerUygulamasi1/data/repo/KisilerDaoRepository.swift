//
//  KisilerDaoRepository.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 21.03.2024.
//

import Foundation
import RxSwift


class KisilerDaoRepository {
    
    var kisilerListesi = BehaviorSubject<[kisiler]>(value: [kisiler]())
    
    func kaydet (kisi_ad : String, kisi_tel : String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    
    func guncelle (kisi_id : Int, kisi_ad : String, kisi_tel : String){
        print("Kişi Güncelle :  \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    func sil (kisi_id : Int){
        print("Kişi Sil \(kisi_id)")
        kisileriYukle()
    }
    
    func ara(aramaKelimesi : String){
        print("Kişi Ara :  \(aramaKelimesi)")
    }
    
    func kisileriYukle(){
        
        var liste = [kisiler]()
        
        let k1 = kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        let k4 = kisiler(kisi_id: 4, kisi_ad: "Selim", kisi_tel: "5555")
        let k2 = kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222")
        let k3 = kisiler(kisi_id: 3, kisi_ad: "Fatih", kisi_tel: "3333")
        let k5 = kisiler(kisi_id: 5, kisi_ad: "Selen", kisi_tel: "9876")
        let k6 = kisiler(kisi_id: 6, kisi_ad: "Ayşe", kisi_tel: "9076")
        let k7 = kisiler(kisi_id: 7, kisi_ad: "Oguz", kisi_tel: "1234")
        let k8 = kisiler(kisi_id: 8, kisi_ad: "İsmail", kisi_tel: "7635")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        liste.append(k4)
        liste.append(k5)
        liste.append(k6)
        liste.append(k7)
        liste.append(k8)
        kisilerListesi.onNext(liste)
    }
    
}

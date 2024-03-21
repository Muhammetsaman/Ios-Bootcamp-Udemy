//
//  AnasayfaViewModel.swift
//  kisilerUygulamasi1
//
//  Created by Muhammet on 21.03.2024.
//

import Foundation
import RxSwift



class AnasayfaViewModel {
    
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[kisiler]>(value: [kisiler]())
    
    init(){
        kisilerListesi = krepo.kisilerListesi
        krepo.kisileriYukle()
    }
    
    func sil (kisi_id : Int){
        krepo.sil(kisi_id: kisi_id)
    }
    func ara(aramaKelimesi : String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
    
}

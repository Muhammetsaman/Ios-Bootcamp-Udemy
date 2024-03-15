//
//  ViewController.swift
//  FilmlerApp
//
//  Created by Muhammet on 14.03.2024.
//

import UIKit

class Anasayfa: UIViewController {
    
    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    var FilmlerListesi = [Filmler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
     
        let f1 = (Filmler(id: 1, ad: "Django", resim: "django", fiyat: 24))
        let f2 = (Filmler(id: 2, ad: "Interstellar", resim: "interstellar", fiyat: 24))
        let f3 = (Filmler(id: 3, ad: "Inception", resim: "inception", fiyat: 24))
        let f4 = (Filmler(id: 4, ad: "The Hateful Eight", resim: "thehatefuleight", fiyat: 24))
        let f5 = (Filmler(id: 5, ad: "The Pianist", resim: "thepianist", fiyat: 24))
        let f6 = (Filmler(id: 6, ad: "Anadoluda", resim: "anadoluda", fiyat: 24))
        FilmlerListesi.append(f1)
        FilmlerListesi.append(f2)
        FilmlerListesi.append(f3)
        FilmlerListesi.append(f4)
        FilmlerListesi.append(f5)
        FilmlerListesi.append(f6)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        // 10x10x10  =  30
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik - 30) / 2
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.6)
        filmlerCollectionView.collectionViewLayout = tasarim
    }

}


extension Anasayfa : UICollectionViewDelegate, UICollectionViewDataSource,HucreProtocol {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FilmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = FilmlerListesi[indexPath.row]
        
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "filmlerHucre", for: indexPath)
        as! FilmlerHucre
        
        hucre.imageViewFilm.image = UIImage(named: film.resim!)
        hucre.labelFiyat.text = "\(film.fiyat!)₺"
        
        hucre.layer.borderColor = UIColor.lightGray.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10
        
        hucre.hucreProtocol = self
        hucre.indexPath = indexPath
        
        
     return hucre
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = FilmlerListesi[indexPath.row]
        
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let film = sender as? Filmler {
                let gidilecekVC = segue.destination as! DetaySayfa
                gidilecekVC.film = film
            }
        }
    }
    func sepeteEkleTikla(indexPath: IndexPath) {
        let film = FilmlerListesi[indexPath.row]
        print("\(film.ad!) Seçildi")
    }
    
}

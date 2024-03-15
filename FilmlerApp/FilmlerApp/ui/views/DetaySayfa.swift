//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by Muhammet on 14.03.2024.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var labelFiyat: UILabel!
    @IBOutlet weak var labelFilm: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
   
    var film : Filmler?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let f = film {
            labelFilm.text = f.ad
            labelFiyat.text = "\(f.fiyat!) ₺"
            imageViewFilm.image = UIImage(named: f.resim!)
            
        }
        
         }
        
    }
    

    


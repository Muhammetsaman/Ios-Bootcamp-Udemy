//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Muhammet on 19.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearence = UINavigationBarAppearance ()
        appearence.backgroundColor = UIColor(named: "anaRenk") // üst kısmın rengini kırmızı yaptık
        appearence.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,
            .font : UIFont(name: "Pacifico-Regular", size: 25)!] // yazı rengini ve fontu değiştirdik.
       
        navigationController?.navigationBar.barStyle = .black // üst kısımda koyu ton kullandıgımızı belirttik. (şarj ve saatin rengini beyaz yaptık.)
        
        navigationController?.navigationBar.standardAppearance = appearence  // farklı telefon modellerine uyumlu olması için bu kod yapılarını kullandık.
        navigationController?.navigationBar.compactAppearance = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence
        
    }
    
    


}


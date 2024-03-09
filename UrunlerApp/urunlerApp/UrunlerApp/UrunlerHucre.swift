//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Muhammet on 7.03.2024.
//

import UIKit



protocol HucreProtokol{
    func sepeteEkleTiklandi(indexPath:IndexPath)

}



class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var hucreArkaPlan: UIView!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    var HucreProtocol : HucreProtokol?
    var indexPath : IndexPath?
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        HucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
        
    }
}

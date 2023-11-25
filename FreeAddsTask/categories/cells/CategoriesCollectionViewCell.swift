//
//  CategoriesCollectionViewCell.swift
//  FreeAddsTask
//
//  Created by Mina Eid on 25/11/2023.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {

    //MARK: - Outlets
    
    @IBOutlet weak var imageOfActor : UIImageView!
    @IBOutlet weak var titleLbl : UILabel!
    @IBOutlet weak var positionLbl : UILabel!
    @IBOutlet weak var followBtn : UIButton!
    
    //MARK: - Propery
    
    var titleArray = ["Amr Salama" , "Ben Affleck" , "Ana de Armas"]
    var positionArray = ["Film Director" , "American Actor" , "Spanish Actress"]
    var followArray = ["Follow" , "unfollow" , "Follow"]
    var imageArray = ["Amr" , "Ben" , "Ana"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
      //  configCell()
    }
    
    func configCell(index: Int) {
       
        guard index >= 0, index < titleArray.count else {
            return
        }
        
        titleLbl.text = titleArray[index]
        positionLbl.text = positionArray[index]
        
        let followTitle = followArray[index]
        followBtn.setTitle(followTitle, for: .normal)
        
        if followTitle == "unfollow" {
            followBtn.backgroundColor = .clear
        } else {
           
            //followBtn.backgroundColor = UIColor.systemBlue
        }
        
        let imageName = imageArray[index]
        imageOfActor.image = UIImage(named: imageName)
    }
    

}

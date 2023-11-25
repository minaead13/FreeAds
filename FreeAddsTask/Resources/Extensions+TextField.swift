//
//  Extensions+TextField.swift
//  FreeAddsTask
//
//  Created by Mina Eid on 25/11/2023.
//

import UIKit
extension UITextField {
    func addTextField(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        //self.layer.masksToBounds = false
        
       //self.layer.borderWidth = 2
        
    }
}
extension UIImageView {
    
    func configureImageView(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 6, height: 6)
    }
}

//
//  ViewController.swift
//  FreeAddsTask
//
//  Created by Mina Eid on 25/11/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Outlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    @IBOutlet weak var catCollectionView: UICollectionView!
    
    //MARK: - variables
    
    var filterArray = ["All Categories", "Sport", "Cima" , "Cars" , "Fashion", "Real Estate", "Food", "Toon", "Anything"]
    
    var productsArray = [ UIImage(named: "p1"), UIImage(named: "p2"), UIImage(named: "p3"), UIImage(named: "p4")]
    
    //MARK: - LifeCycle of UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
    }
    
    func registerCell(){
        let cellNib = UINib(nibName: "CategoriesCollectionViewCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "cell")
        
        let cellNib1 = UINib(nibName: "filterCollectionViewCell", bundle: nil)
        filterCollectionView.register(cellNib1, forCellWithReuseIdentifier: "cell1")
        
        let cellNib2 = UINib(nibName: "ProductsCollectionViewCell", bundle: nil)
        catCollectionView.register(cellNib2, forCellWithReuseIdentifier: "cell2")
        
        catCollectionView.delegate = self
        catCollectionView.dataSource = self
    }
    
    //MARK: - UICollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView {
            return 3
        } else if collectionView == filterCollectionView {
            return filterArray.count
        } else if collectionView == catCollectionView {
            return productsArray.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoriesCollectionViewCell
            cell.configCell(index: indexPath.item)
            return cell
        } else if collectionView == filterCollectionView {
            let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! filterCollectionViewCell
            cell.filterLabel.text = filterArray[indexPath.row]
            return cell
        } else if collectionView == catCollectionView {
            let cell = catCollectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! ProductsCollectionViewCell
            cell.imageView.image = productsArray[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          if collectionView == filterCollectionView {
           return CGSize(width: filterCollectionView.frame.width * 2 , height: 15)
          } else if collectionView == catCollectionView {

              return CGSize(width: 180 , height: catCollectionView.frame.height)
              
              
          } else {
              return CGSize(width: collectionView.frame.width  , height: collectionView.frame.height)
          }
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == catCollectionView {
            return 0.5
        } else {
            return 10
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == catCollectionView {
            return 5
        } else {
           return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == catCollectionView {
            return UIEdgeInsets(top: 2, left: 2, bottom: 5, right: 2)
        } else {
           return UIEdgeInsets(top: 1, left: 3, bottom: 1, right: 10)
        }
    }

}


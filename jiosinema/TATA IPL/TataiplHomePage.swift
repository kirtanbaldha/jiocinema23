//
//  TataiplHomePage.swift
//  jiosinema
//
//  Created by R & W on 09/05/23.
//

import UIKit

class TataiplHomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
  

    @IBOutlet weak var collectionView1IplPage1: UICollectionView!
    @IBOutlet weak var collectionView2IplPage1: UICollectionView!
    @IBOutlet weak var collectionView3IplPage1: UICollectionView!
    @IBOutlet weak var collectionView4IplPage1: UICollectionView!
    @IBOutlet weak var collectionView5IplPage1: UICollectionView!
    @IBOutlet weak var collectionView6IplPage1: UICollectionView!
    @IBOutlet weak var collectionView7IplPage1: UICollectionView!
    
    
    var arrForCollectionView1IPl1 = [1,2]
    var arrForCollectionView2IPl1 = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10","H11","H12","H13","H14","H15","H16","H17","H18","H19","H20",]
    var arrForCollectionView3IPl1 = [1,2,3]
    var arrForCollectionView4IPl1 = ["cap1","cap2","cap3","cap4","cap5","cap6","cap7","cap8","cap9",]
    var arrForCollectionView5IPl1 = ["hero1","hero2","hero3","hero4","hero5","hero6","hero7","hero8","hero9","hero10",]
    var arrForCollectionView6IPl1 = ["best1","best2","best3","best4","best5","best6","best7","best8","best9","best10","best11"]
    var arrForCollectionView7IPl1 = ["key1","key2","key3","key4","key5","key6","key7","key8","key9","key10","key11","key12","key13","key14","key15",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->
        Int {
            if collectionView == self.collectionView1IplPage1{
                return arrForCollectionView1IPl1.count
            }
            else if collectionView == self.collectionView2IplPage1 {
                return arrForCollectionView2IPl1.count
            }
            else if collectionView == self.collectionView3IplPage1{
                return arrForCollectionView3IPl1.count
            }
            else if collectionView == self.collectionView4IplPage1{
                return arrForCollectionView4IPl1.count
            }
            else if collectionView == self.collectionView5IplPage1{
                return arrForCollectionView5IPl1.count
            }
            else if collectionView == self.collectionView6IplPage1{
                return arrForCollectionView6IPl1.count
            }
            else {
                return arrForCollectionView7IPl1.count
            }
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1IplPage1{
            let cellIpl1 = collectionView1IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl1", for: indexPath) as! CollectionViewCell1IplPage1
            cellIpl1.imgForCollectionView1IplPage1.image = UIImage(named: "\(arrForCollectionView1IPl1[indexPath.row])")
            return cellIpl1
        }
        else if collectionView == self.collectionView2IplPage1{
            let cellIpl2 = collectionView2IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl2", for: indexPath) as! CollectionViewCell2IplPage1
            cellIpl2.imgForCollectionView2IplPage1.image = UIImage(named: "\(arrForCollectionView2IPl1[indexPath.row])")
            return cellIpl2
        }
        else if collectionView == self.collectionView3IplPage1{
            let cellIpl3 = collectionView3IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl3", for: indexPath) as! CollectionViewCell3IplPage1
            cellIpl3.imgForCollectionView3IplPage1.image = UIImage(named: "\(arrForCollectionView3IPl1[indexPath.row])")
            return cellIpl3
        }
        else if collectionView == self.collectionView4IplPage1{
            let cellIpl4 = collectionView4IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl4", for: indexPath) as! CollectionViewCell4IplPage1
            cellIpl4.imgForCollectionView4IplPage1.image = UIImage(named: "\(arrForCollectionView4IPl1[indexPath.row])")
            return cellIpl4
        }
        else if collectionView == self.collectionView5IplPage1{
            let cellIpl5 = collectionView5IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl5", for: indexPath) as! CollectionViewCell5IplPage1
            cellIpl5.imgForCollectionView5IplPage1.image = UIImage(named: "\(arrForCollectionView5IPl1[indexPath.row])")
            return cellIpl5
        }
        else if collectionView == self.collectionView6IplPage1{
            let cellIpl6 = collectionView6IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl6", for: indexPath) as! CollectionViewCell6IplPage1
            cellIpl6.imgForCollectionView6IplPage1.image = UIImage(named: "\(arrForCollectionView6IPl1[indexPath.row])")
            return cellIpl6
        }
        else {
            let cellIpl7 = collectionView7IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl7", for: indexPath) as! CollectionViewCell7IplPage1
            cellIpl7.imgForCollectionView7IplPage1.image = UIImage(named: "\(arrForCollectionView7IPl1[indexPath.row])")
            return cellIpl7
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1IplPage1{
            return CGSize(width: 390, height: 180)
        }
        else if collectionView == self.collectionView2IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView3IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView4IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView5IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView6IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else{
            return CGSize(width: 90, height: 90)
        }
        
        
    }
    


}

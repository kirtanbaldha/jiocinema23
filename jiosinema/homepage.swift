//
//  homepage.swift
//  jiosinema
//
//  Created by R & W on 18/04/23.
//

import UIKit

class homepage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  

    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    
    var arrForCollectionView1 = [1,2,3,4,5,6]
    var arrForCollectionView2 = [1,2,3,4,5,6]
    var arrForCollectionView3 = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1{
            return arrForCollectionView1.count
        }
        else if collectionView == self.collectionView2{
            return arrForCollectionView2.count
        }
        else{
            return arrForCollectionView3.count
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1{
            var cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
            cell1.imageForCollectionView.image = UIImage(named: "\(arrForCollectionView1[indexPath.row])")
            return cell1
        }
       else if collectionView == self.collectionView2{
           var cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
           cell2.imageForCollectionView2.image = UIImage(named: arrForCollectionView2[indexPath.row].description)
           return cell2
        }
        else{
            var cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imageForCollectionView3.image = UIImage(named: arrForCollectionView3[indexPath.row].description)
            return cell3
         }
       
        }
        
    }
    
    

    



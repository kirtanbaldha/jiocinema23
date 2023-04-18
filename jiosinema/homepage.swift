//
//  homepage.swift
//  jiosinema
//
//  Created by R & W on 18/04/23.
//

import UIKit

class homepage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  

    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    
    var arrForCollectionView1 = [1,2,3,4,5,6]
    var arrForCollectionView2 = [1,2,3,4,5,6]
    var arrForCollectionView3 = [1,2,3,4,5,6]
    var arrForCollectionView4 = [1,2,3,4,5,6]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func match24ActionButton(_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "matchActionButton") as! matchActionButton
        navigationController?.pushViewController(naviget, animated: true)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1{
            return arrForCollectionView1.count
        }
        else if collectionView == self.collectionView2{
            return arrForCollectionView2.count
        }
        return arrForCollectionView3.count
        
        
            
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1{
            let cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
            cell1.imageForCollectionView.image = UIImage(named: "\(arrForCollectionView1[indexPath.row])")
            return cell1
        }
       else if collectionView == self.collectionView2{
           let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
           cell2.imageForCollectionView2.image = UIImage(named: arrForCollectionView2[indexPath.row].description)
           return cell2
        }
        else {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imageForCollectionView3.image = UIImage(named: arrForCollectionView3[indexPath.row].description)
            return cell3
         }
            
            
        
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1{
       return CGSize(width: 380, height: 183)
        }
       else if collectionView == self.collectionView2{
       return CGSize(width: 181, height: 128)
        }
        else{
        return CGSize(width: 181, height: 128)

            
        }
    }
    }
    
    

    



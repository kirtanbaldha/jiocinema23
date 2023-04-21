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
    @IBOutlet weak var collectionView4: UICollectionView!
    @IBOutlet weak var collectionView5: UICollectionView!
    @IBOutlet weak var collectionView6: UICollectionView!
    @IBOutlet weak var collectionView7: UICollectionView!
    @IBOutlet weak var collectionView8: UICollectionView!
    
    var arrForCollectionView1 = [1,2,3,4,5,6]
    var arrForCollectionView2 = [1,2,3,4,5,6]
    var arrForCollectionView3 = ["w1","w3","w4","w5","w6","w7"]
    var arrForCollectionView4 = ["h1","h2","h3","h4","h5","h6","h7","h8","h9"]
    var arrForCollectionView5 = [1,2,3,4,5,6]
    var arrForCollectionView6 = ["v1","v2","v3","v4","v5","v6"]
    var arrForCollectionView7 = ["CSK","GT","HRS","KKR","LSG","PK","RR","MI"]
    var arrForCollectionView8 = ["s1","s2","s3","s4","s5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func match24ActionButton(_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "matchActionButton") as! match26Page
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func previweButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "preview") as! preview
        navigationController?.pushViewController(naviget, animated: true)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1{
            return arrForCollectionView1.count
        }
        else if collectionView == self.collectionView2{
            return arrForCollectionView2.count
        }
        else if collectionView == self.collectionView3 {
            return arrForCollectionView3.count
        }
        else if collectionView == self.collectionView4{
            return arrForCollectionView4.count
        }
        else if collectionView == self.collectionView5{
            return arrForCollectionView5.count
        }
        else if collectionView == self.collectionView6{
            return arrForCollectionView6.count
        }
        else if collectionView == self.collectionView7{
            return arrForCollectionView7.count
        }
        else{
            return arrForCollectionView8.count

        }
        
        
           
        
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
        else if collectionView == self.collectionView3 {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imageForCollectionView3.image = UIImage(named: arrForCollectionView3[indexPath.row].description)
            return cell3
        }
        else if collectionView == self.collectionView4{
            let cell4 = collectionView4.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell4
            cell4.imageForCollectionView4.image = UIImage(named: arrForCollectionView4[indexPath.row].description)
            return cell4
        }
        else if collectionView == self.collectionView5{
            let cell5 = collectionView5.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell5
            cell5.imageForCollectionView5.image = UIImage(named: arrForCollectionView5[indexPath.row].description)
            return cell5
        }
        else if collectionView == self.collectionView6{
            let cell6 = collectionView6.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCell6
            cell6.imageForCollectionView6.image = UIImage(named: arrForCollectionView6[indexPath.row].description)
            return cell6
            
        }
        else if collectionView == self.collectionView7{
            let cell7 = collectionView7.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCell7
            cell7.imageForCollectionView7.image = UIImage(named: arrForCollectionView7[indexPath.row].description)
            return cell7
        }
        else {
            let cell8 = collectionView8.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! CollectionViewCell8
            cell8.imageForCollectionView8.image = UIImage(named: arrForCollectionView8[indexPath.row].description)
            return cell8
        }
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1{
            return CGSize(width: 380, height: 183)
        }
        else if collectionView == self.collectionView2{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView3{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView4{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView5{
            return CGSize(width: 181, height: 128)

        }
        else if collectionView == self.collectionView6{
            return CGSize(width: 181, height: 128)

        }
        else if collectionView == self.collectionView7{
            return CGSize(width: 105, height: 95)
        }
        else {
            return CGSize(width: 368, height: 165)

        }
        
        
        
    }
    
    
    
}




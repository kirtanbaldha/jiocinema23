//
//  PopularSports.swift
//  jiosinema
//
//  Created by R & W on 08/05/17.
//

import UIKit

class PopularSports: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionViewForPopulerSports: UICollectionView!
    
    var arrForPopulerSports = ["athletics","badminton","bsaketball","cricket","rider","squash","tennis","football"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForPopulerSports.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForPopulerSports.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForPopulerSports
        
        cell.imgForPopulerSports.image = UIImage(named: "\(arrForPopulerSports[indexPath.row])")
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let cvsize = collectionViewForPopulerSports.frame.width
        return CGSize(width: 90, height: 90)
    

    }

    


}

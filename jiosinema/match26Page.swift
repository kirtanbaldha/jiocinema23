//
//  matchActionButton.swift
//  jiosinema
//
//  Created by R & W on 18/04/23.
//

import UIKit

class match26Page: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var cv: UICollectionView!
    
    var arrFormatch26pageCollectionView = [1,2,3,4,5,6]


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrFormatch26pageCollectionView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForMatch26
        cell.imageForCollectionViewMatch26.image = UIImage(named: "\(arrFormatch26pageCollectionView[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 172, height: 128)
    }

    

}

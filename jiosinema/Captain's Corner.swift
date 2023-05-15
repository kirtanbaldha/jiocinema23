//
//  Captain's Corner.swift
//  jiosinema
//
//  Created by R & W on 15/05/23.
//

import UIKit

class Captain_s_Corner: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var cv: UICollectionView!
    
    var arrForCaptainsCorner = ["cap1","cap2","cap3","cap4","cap5","cap6","cap7","cap8","cap9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForCaptainsCorner.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForCaptionCorner
        cell.imgForCaptionCorner.image = UIImage(named: "\(arrForCaptainsCorner[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

   

}

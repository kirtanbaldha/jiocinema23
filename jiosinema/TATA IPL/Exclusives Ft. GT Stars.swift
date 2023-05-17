//
//  Exclusives Ft. GT Stars.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class Exclusives_Ft__GT_Stars: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
  

    @IBOutlet weak var cv: UICollectionView!
    var arrForFtGtStar = ["exclusivesGT1","exclusivesGT2","exclusivesGT3"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForFtGtStar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForExclusives_Ft__GT_Stars
        cell.imgForFtGtStar.image = UIImage(named: "\(arrForFtGtStar[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

   
}

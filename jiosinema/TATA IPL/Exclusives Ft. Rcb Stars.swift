//
//  Exclusives Ft. Rcb Stars.swift
//  jiosinema
//
//  Created by R & W on 16/05/23.
//

import UIKit

class Exclusives_Ft__Rcb_Stars: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForRcbStars = ["exclusives1","exclusives2","exclusives3","exclusives4","exclusives5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForRcbStars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForExclusives_Ft__Rcb_Stars
        cell.imgForRcbStars.image = UIImage(named: "\(arrForRcbStars[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 200)
    }

   

}

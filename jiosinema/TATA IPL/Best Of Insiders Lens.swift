//
//  Best Of Insiders Lens.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class Best_Of_Insiders_Lens: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForBestOfInsiderLens = [1,2]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForBestOfInsiderLens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForBest_Of_Insiders_Lens
        cell.imgForBestOfInsidersLens.image = UIImage(named: "\(arrForBestOfInsiderLens[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

    

}

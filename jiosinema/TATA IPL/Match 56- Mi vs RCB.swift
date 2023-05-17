//
//  Match 56- Mi vs RCB.swift
//  jiosinema
//
//  Created by R & W on 15/05/23.
//

import UIKit

class Match_56__Mi_vs_RCB: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 

    @IBOutlet weak var cv: UICollectionView!
    
    var arrForMatch56MivsRCB = [1,2]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForMatch56MivsRCB.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForMatch56MivsRCB
        cell.imgForMatch56MIvsRCB.image = UIImage(named: "\(arrForMatch56MivsRCB[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }

   

}

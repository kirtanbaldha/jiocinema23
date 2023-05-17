//
//  TATA IPL 2023 Short Highlights.swift
//  jiosinema
//
//  Created by R & W on 16/05/23.
//

import UIKit

class TATA_IPL_2023_Short_Highlights: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForShortHighlights = ["short1","short2","short3","short4","short5","short6","short7","short8","short9","short10","short11","short12","short13","short14","short15","short16","short17","short18","short19","short20","short21","short22","short23","short4","short25","short26","short24"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForShortHighlights.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForTATA_IPL_2023_Short_Highlights
        cell.imgForShortHighlights.image = UIImage(named: "\(arrForShortHighlights[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }

   

}


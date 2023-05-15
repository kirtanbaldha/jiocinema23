//
//  TATA IPL 2023 Highlights.swift
//  jiosinema
//
//  Created by R & W on 15/05/23.
//

import UIKit

class TATA_IPL_2023_Highlights: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 

    @IBOutlet weak var cv: UICollectionView!
    
    var arrForHighlights = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10","H11","H12","H13","H14","H15","H16","H17","H18","H19","H20"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForHighlights.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForIPLPageHighlights
        cell.imgForIPLPageHighlights.image = UIImage(named: "\(arrForHighlights[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }

    
    

  

}

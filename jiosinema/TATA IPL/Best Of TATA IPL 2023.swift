//
//  Best Of TATA IPL 2023.swift
//  jiosinema
//
//  Created by R & W on 15/05/23.
//

import UIKit

class Best_Of_TATA_IPL_2023: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv: UICollectionView!
    
    var ArrForBestOfTATAIpl2023 = ["best1","best2","best3","best4","best5","best6","best7","best8","best9","best10","best11"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrForBestOfTATAIpl2023.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForBest_Of_TATA_IPL_2023
        cell.imgForBestOfTataIpl.image = UIImage(named: "\(ArrForBestOfTATAIpl2023[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    


}

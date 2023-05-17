//
//  Best Of A Jio Match Center Live.swift
//  jiosinema
//
//  Created by R & W on 16/05/23.
//

import UIKit

class Best_Of_A_Jio_Match_Center_Live: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   

    @IBOutlet weak var cv: UICollectionView!
    var arrForJioMatchCenterLive = ["bangali","bhojpuri","gujrati","hindi","kannada","malayalam","marathi","tamil","telegu","whatsapp"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForJioMatchCenterLive.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForBest_Of_A_Jio_Match_Center_Live
        cell.imgForJioMatchCenterLive.image = UIImage(named: "\(arrForJioMatchCenterLive[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    


}

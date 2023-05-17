//
//  Cricketers Getting Candid.swift
//  jiosinema
//
//  Created by R & W on 16/05/23.
//

import UIKit

class Cricketers_Getting_Candid: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForCricketers = ["cricketers1","cricketers2","cricketers3","cricketers4","cricketers5","cricketers6","cricketers7","cricketers8","cricketers9","cricketers10","cricketers11","cricketers12","cricketers13","cricketers14"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForCricketers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForCricketers_Getting_Candid
        cell.imgForCricketers.image = UIImage(named: "\(arrForCricketers[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

}

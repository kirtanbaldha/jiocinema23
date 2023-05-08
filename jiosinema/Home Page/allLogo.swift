//
//  allLogo.swift
//  jiosinema
//
//  Created by R & W on 26/04/23.
//

import UIKit

class allLogo: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var arrForLogo = ["CSK","GT","HRS","KKR","LSG","PK","RR","MI","RCB","DC"]
    
    var arrayForColore = [UIColor.yellow,UIColor.systemYellow,UIColor.orange,UIColor.purple,UIColor.cyan,UIColor.red,UIColor.systemPurple,UIColor.blue,UIColor.systemRed,UIColor.systemBlue]

    @IBOutlet weak var collectionViewForAllLogo: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForLogo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForAllLogo.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectionViewForallLogo
        
        cell.allImg.image = UIImage(named: "\(arrForLogo[indexPath.row])")
        cell.labelForColore.backgroundColor = arrayForColore[indexPath.row]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 90)
    }

    
}

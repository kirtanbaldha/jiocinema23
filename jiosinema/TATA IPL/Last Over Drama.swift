//
//  Last Over Drama.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class Last_Over_Drama: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForLastOverDrama = ["bestOfInsiders1","bestOfInsiders2","bestOfInsiders3","bestOfInsiders4","bestOfInsiders5","bestOfInsiders6","bestOfInsiders7","bestOfInsiders8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForLastOverDrama.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForLast_Over_Drama
        cell.imgForLastOverDrama.image = UIImage(named: "\(arrForLastOverDrama[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }

}

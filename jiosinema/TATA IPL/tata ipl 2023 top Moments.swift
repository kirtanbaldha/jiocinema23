//
//  tata ipl 2023 top Moments.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class tata_ipl_2023_top_Moments: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForTopMoment = ["topmoment1","topmoment2","topmoment3","topmoment4","topmoment5","topmoment6","topmoment7","topmoment8","topmoment9","topmoment10","topmoment11","topmoment12","topmoment13","topmoment14","topmoment15","topmoment16","topmoment17","topmoment18","topmoment19","topmoment20","topmoment21","topmoment22","topmoment23","topmoment24"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForTopMoment.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellFortata_ipl_2023_top_Moments
        cell.imgForTopMoment.image = UIImage(named: "\(arrForTopMoment[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }

   

}

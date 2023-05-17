//
//  HeroSpeak.swift
//  jiosinema
//
//  Created by R & W on 15/05/23.
//

import UIKit

class HeroSpeak: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var cv: UICollectionView!
    
    var arrForHeroSpeak = ["hero1","hero2","hero3","hero4","hero5","hero6","hero7","hero8","hero9","hero10"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForHeroSpeak.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForHeroSpeak
        cell.imgForHeroSpeak.image = UIImage(named: "\(arrForHeroSpeak[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }


}

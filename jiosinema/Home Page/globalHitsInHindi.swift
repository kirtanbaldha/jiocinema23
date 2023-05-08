//
//  globalHitsInHindi.swift
//  jiosinema
//
//  Created by R & W on 08/05/17.
//

import UIKit

class globalHitsInHindi: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionViewForGlobalHitsInHindi: UICollectionView!
    
    var arrForGlobalHitsInHindi = ["1 of something","bride of the century","drowning city","El Caso","Extraordinary You","flower of evil","goblin","i m not a robot","kairos","kill me heal me","la teteniente","melting heart","prison playbook","save me","the game towards zero","traicion","two cops","undercover"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForGlobalHitsInHindi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForGlobalHitsInHindi.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellGlobal_Hits_In_Hindi
        
        cell.imgForGlobalHitsInHindi.image = UIImage(named: "\(arrForGlobalHitsInHindi[indexPath.row])")
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cvsize = collectionViewForGlobalHitsInHindi.frame.width
        return CGSize(width: 120, height: 160)
    

    }

}

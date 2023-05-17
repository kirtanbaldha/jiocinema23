//
//  tata ipl 2023 top spells.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class tata_ipl_2023_top_spells: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
    
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForTopSpells = ["bestSpell1","bestSpell2","bestSpell3","bestSpell4","bestSpell5","bestSpell6","bestSpell7","bestSpell8","bestSpell9","bestSpell10","bestSpell11","bestSpell12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForTopSpells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellFortata_ipl_2023_top_spells
        cell.imgForTopSpells.image = UIImage(named: "\(arrForTopSpells[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

   

}

//
//  freshTvEp.swift
//  jiosinema
//
//  Created by R & W on 27/04/23.
//

import UIKit

class freshTvEp: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionViewForFreshTvEp: UICollectionView!
    
    var arrForFreshTvEp = ["agnishakshi", "Bekaaboo","dharam patni", "durga aur charu", "Housefull", "Junooniyatt", "Naagin", "Parineetii","raaz mahal","tere ishq mein ghayal", "Udaariyaan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonActionForFreshTvEp(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    func collectionView( _ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForFreshTvEp.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForFreshTvEp.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForFreshTvEp
        
        cell.imgForFreshTvep.image = UIImage(named: "\(arrForFreshTvEp[indexPath.row])")
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 167)
    }
    
    


}

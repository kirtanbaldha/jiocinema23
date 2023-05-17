//
//  Key Tournaments.swift
//  jiosinema
//
//  Created by R & W on 16/05/23.
//

import UIKit

class Key_Tournaments: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var cv: UICollectionView!
    
    var arrForKyeournament = ["key1","key2","key3","key4","key5","key6","key7","key8","key9","key10","key11","key12","key13","key14","key15"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForKyeournament.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForKey_Tournaments
        cell.imgForKyeournament.image = UIImage(named: "\(arrForKyeournament[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    


}

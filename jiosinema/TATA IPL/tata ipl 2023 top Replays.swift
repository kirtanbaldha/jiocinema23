//
//  tata ipl 2023 top Replays.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class tata_ipl_2023_top_Replays: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
  

    @IBOutlet weak var cv: UICollectionView!
    var arrForTopReplays = ["replay1","replay2","replay3","replay4","replay5","replay6","replay7","replay8","replay9","replay10","replay11","replay12","replay13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForTopReplays.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellFortata_ipl_2023_top_Replays
        cell.imgForTopReplays.image = UIImage(named: "\(arrForTopReplays[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    

    

}

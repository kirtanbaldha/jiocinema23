//
//  Aakashvani.swift
//  jiosinema
//
//  Created by R & W on 17/05/23.
//

import UIKit

class Aakashvani: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv: UICollectionView!
    var arrForAakashvani = ["aakashvani1","aakashvani2","aakashvani3","aakashvani4","aakashvani5","aakashvani6","aakashvani7","aakashvani8","aakashvani9","aakashvani10","aakashvani11","aakashvani12","aakashvani13","aakashvani14","aakashvani15","aakashvani16","aakashvani1","aakashvani1","aakashvani1","aakashvani1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForAakashvani.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForAakashvani
        cell.imgForAakashvani.image = UIImage(named: "\(arrForAakashvani[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 128)
    }
    


}

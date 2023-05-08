//
//  preview.swift
//  jiosinema
//
//  Created by R & W on 20/04/23.
//

import UIKit

class preview: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var cv: UICollectionView!
    
    var arrForCollectionView = ["w1","w3","w4","w5","w6","w7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func backButtonAction(_ sender: UIButton) {
        
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForCollectionView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForPreview
        cell.imgForPreview.image = UIImage(named: "\(arrForCollectionView[indexPath.row])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 172, height: 128)
    }

    


}

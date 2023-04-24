//
//  highlightsPage.swift
//  jiosinema
//
//  Created by R & W on 10/02/41.
//

import UIKit

class highlightsPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var ArrayForCollectionView = ["w1","w3","w4","w5","w6","w7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ArrayForCollectionView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForHighlights
        cell.imgForHighights.image = UIImage(named: "\(ArrayForCollectionView[indexPath.row])")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 187, height: 128)
    }

    

}

//
//  Popular Web Shows.swift
//  jiosinema
//
//  Created by R & W on 04/05/23.
//

import UIKit

class Popular_Web_Shows: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionViewForPopulerWebShows: UICollectionView!
    var arrForPopularWebShows = ["7 kadam","bose","broken but beautiiful","cybervaa","flesh","haq se","home  its a feeling","rise","the test case","untouchables","yo ke hua bro"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForPopularWebShows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForPopulerWebShows.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForPopulerWebShows
        
        cell.imgForPopulerWebShows.image = UIImage(named: "\(arrForPopularWebShows[indexPath.row])")
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       // let cvsize = collectionViewForPopulerWebShows.frame.width
        return CGSize(width: 180, height: 205)
    

    }
}

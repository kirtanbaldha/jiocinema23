
import UIKit

class bestOfTataIpl: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
   

    @IBOutlet weak var collectionViewForBestIpl: UICollectionView!
    
    var arrayForCollectionViewBestTataIpl = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return arrayForCollectionViewBestTataIpl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForBestIpl.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForBestIpl
        cell.imgForBestTataIpl.image = UIImage(named: "\(arrayForCollectionViewBestTataIpl[indexPath.row])")
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 187, height: 128)
    }
    
    

   

}

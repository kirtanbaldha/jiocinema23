
import UIKit

class MoviePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView1MoviePage: UICollectionView!
    @IBOutlet weak var collectionView2MoviePage: UICollectionView!
    
    var arrForMovieCollectionView1 = ["dashing cm bharath","Justice League","maai-streaming-free","matani","poster1","pyaar","titu-ambani","Wonder Woman"]
    var arrForMovieCollectionView2 = ["vikram","baji","batman-vs-superman--dawn","drishyam","joker","justice-league","rocketry","roohi","the-dark-knight-rises","wonder-woman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1MoviePage{
            return arrForMovieCollectionView1.count
        }
        else {
            return arrForMovieCollectionView2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            if collectionView == self.collectionView1MoviePage                                                                   {
                let cellForMovie1 = collectionView1MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie1", for: indexPath) as! CollectionViewCellForMovie1
                cellForMovie1.imgForMovieCollectionView1.image = UIImage(named: "\(arrForMovieCollectionView1[indexPath.row])")
                
                return cellForMovie1
            }

            else{
                    let cellForMovie2 = collectionView2MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie2", for: indexPath) as! CollectionViewCellForMovie2
                    cellForMovie2.imgForMovieCollectionView2.image = UIImage(named: "\(arrForMovieCollectionView2[indexPath.row])")
                    
                    return cellForMovie2

            }
            
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1MoviePage{
            return CGSize(width: 390, height: 171)
        }
        else {
            return CGSize(width: 133, height: 205)
        }
}

}


import UIKit

class MoviePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView1MoviePage: UICollectionView!
    @IBOutlet weak var collectionView2MoviePage: UICollectionView!
    @IBOutlet weak var collectionView3MoviePage: UICollectionView!
    @IBOutlet weak var collectionView4MoviePage: UICollectionView!
    @IBOutlet weak var collectionView5MoviePage: UICollectionView!
    @IBOutlet weak var collectionView6MoviePage: UICollectionView!
    @IBOutlet weak var collectionView7MoviePage: UICollectionView!
    @IBOutlet weak var collectionView8MoviePage: UICollectionView!
    
    
    
    
    
    var arrForMovieCollectionView1 = ["dashing cm bharath","Justice League","maai-streaming-free","matani","poster1","pyaar","titu-ambani","Wonder Woman"]
    var arrForMovieCollectionView2 = ["vikram","baji","batman-vs-superman--dawn","drishyam","joker","justice-league","rocketry","roohi","the-dark-knight-rises","wonder-woman"]
    var arrForMovieCollectionView3 = ["ajab prem ki ghazab kahani","andhadhun","baji-1","cocktail","drishyam jc creatives","english vingl","gabbar","golmaal 3","housefull","housefull3","kochadaiiyaan","lingaa","love aaj  kal","luka 20chuppi","main hoon surya singham 2","oh my god","r... rajkumar","ramleela","raone","rockstar","singham returns","son of sardaar","special 26","stree","tanu weds manu returns","welcome back"]
    var arrForMovieCollectionView4 = ["fantastic-beasts-the-crimes-of-grindelwald","fb-1-3x4-clean","harry-potter-2-3x4-clean","harry-potter-and-the-goblet-of-fire-3x4","harry-potter-and-the-order-of-the-phoenix","harry-potter-and-the-prisoner-of-azkaban-3x4","harry-potter7-part-2--3x4.jpg-clean","harrypotterandthehalfbloodprince"]
    var arrForMovieCollectionView5 = [1,2]
    var arrForMovieCollectionView6 = [1,2]
    var arrForMovieCollectionView7 = [1,2]
    var arrForMovieCollectionView8 = [1,2]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1MoviePage{
            return arrForMovieCollectionView1.count
        }
        else if collectionView == self.collectionView2MoviePage{
            return arrForMovieCollectionView2.count
        }
        else if collectionView == self.collectionView3MoviePage{
            return arrForMovieCollectionView3.count
        }
        else if collectionView == self.collectionView4MoviePage{
            return arrForMovieCollectionView4.count
        }
        else if collectionView == self.collectionView5MoviePage{
            return arrForMovieCollectionView5.count
        }
        else if collectionView == self.collectionView6MoviePage{
            return arrForMovieCollectionView6.count
        }
        else if collectionView == self.collectionView7MoviePage{
            return arrForMovieCollectionView7.count
        }
        else {
            return arrForMovieCollectionView8.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            if collectionView == self.collectionView1MoviePage                                                                   {
                let cellForMovie1 = collectionView1MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie1", for: indexPath) as! CollectionViewCellForMovie1
                cellForMovie1.imgForMovieCollectionView1.image = UIImage(named: "\(arrForMovieCollectionView1[indexPath.row])")
                
                return cellForMovie1
            }

            else if collectionView == self.collectionView2MoviePage  {
                    let cellForMovie2 = collectionView2MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie2", for: indexPath) as! CollectionViewCellForMovie2
                    cellForMovie2.imgForMovieCollectionView2.image = UIImage(named: "\(arrForMovieCollectionView2[indexPath.row])")
                    
                    return cellForMovie2

            }
            else if collectionView == self.collectionView3MoviePage{
                    let cellForMovie3 = collectionView3MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie3", for: indexPath) as! CollectionViewCellForMovie3
                    cellForMovie3.imgForMovieCollectionView3.image = UIImage(named: "\(arrForMovieCollectionView3[indexPath.row])")
                    return cellForMovie3

            }
            else if collectionView == self.collectionView4MoviePage{
                    let cellForMovie4 = collectionView4MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie4", for: indexPath) as! CollectionViewCellForMovie4
                cellForMovie4.imgForMovieCollectionView4.image = UIImage(named: "\(arrForMovieCollectionView4[indexPath.row])")
                    
                    return cellForMovie4

            }
            else  if collectionView == self.collectionView5MoviePage{
                let cellForMovie5 = collectionView5MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie5", for: indexPath) as! CollectionViewCellForMovie05
                
                cellForMovie5.image45.image =
                UIImage(named: "\(arrForMovieCollectionView5[indexPath.row])")
            
                    return cellForMovie5
            }
            else if collectionView == self.collectionView6MoviePage{
                let cellForMovie6 = collectionView6MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie6", for: indexPath) as! CollectionViewCellForMovie6
                
                cellForMovie6.imgForMovieCollectionView6.image =
                UIImage(named: "\(arrForMovieCollectionView6[indexPath.row])")
            
                    return cellForMovie6
            }
            else if collectionView == self.collectionView7MoviePage{
                let cellForMovie7 = collectionView7MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie7", for: indexPath) as! CollectionViewCellForMovie7
                
                cellForMovie7.imgForMovieCollectionView7.image =
                UIImage(named: "\(arrForMovieCollectionView7[indexPath.row])")
            
                    return cellForMovie7
            }
            else {
                let cellForMovie8 = collectionView8MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie8", for: indexPath) as! CollectionViewCellForMovie8
                
                cellForMovie8.imgForMovieCollectionView8.image =
                UIImage(named: "\(arrForMovieCollectionView8[indexPath.row])")
            
                    return cellForMovie8
            }
        }
            
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1MoviePage{
            return CGSize(width: 390, height: 171)
        }
        else if collectionView == self.collectionView2MoviePage{
            return CGSize(width: 133, height: 205)
        }
        else if collectionView == self.collectionView3MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView4MoviePage{
            return CGSize(width: 150, height: 180)
        }
        else if collectionView == self.collectionView5MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView6MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else {
            return CGSize(width: 128, height: 152)
        }
}

}

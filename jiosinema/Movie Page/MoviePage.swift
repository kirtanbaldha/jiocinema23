
import UIKit

class MoviePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView1MoviePage: UICollectionView!
    @IBOutlet weak var collectionView2MoviePage: UICollectionView!
    @IBOutlet weak var collectionView3MoviePage: UICollectionView!
    @IBOutlet weak var collectionView4MoviePage: UICollectionView!
    
    
    
    var arrForMovieCollectionView1 = ["dashing cm bharath","Justice League","maai-streaming-free","matani","poster1","pyaar","titu-ambani","Wonder Woman"]
    var arrForMovieCollectionView2 = ["vikram","baji","batman-vs-superman--dawn","drishyam","joker","justice-league","rocketry","roohi","the-dark-knight-rises","wonder-woman"]
    var arrForMovieCollectionView3 = ["ajab prem ki ghazab kahani","andhadhun","baji-1","cocktail","drishyam jc creatives","english vingl","gabbar","golmaal 3","housefull","housefull3","kochadaiiyaan","lingaa","love aaj  kal","luka 20chuppi","main hoon surya singham 2","oh my god","r... rajkumar","ramleela","raone","rockstar","singham returns","son of sardaar","special 26","stree","tanu weds manu returns","welcome back"]
    var arrForMovieCollectionView4 = ["fantastic-beasts-the-crimes-of-grindelwald","fb-1-3x4-clean","harry-potter-2-3x4-clean","harry-potter-and-the-goblet-of-fire-3x4","harry-potter-and-the-order-of-the-phoenix","harry-potter-and-the-prisoner-of-azkaban-3x4","harry-potter7-part-2--3x4.jpg-clean","harrypotterandthehalfbloodprince"]
    
    
    
    
    
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
        else {
            return arrForMovieCollectionView4.count
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
            else{
                    let cellForMovie4 = collectionView4MoviePage.dequeueReusableCell(withReuseIdentifier: "cellForMovie4", for: indexPath) as! CollectionViewCellForMovie4
                cellForMovie4.imgForMovieCollectionView4.image = UIImage(named: "\(arrForMovieCollectionView4[indexPath.row])")
                    
                    return cellForMovie4

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
        else {
            return CGSize(width: 128, height: 152)
        }
}

}

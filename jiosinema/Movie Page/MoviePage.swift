
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
   
    @IBOutlet weak var collectionView10MoviePage: UICollectionView!
    
    @IBOutlet weak var language: UICollectionView!
    
    @IBOutlet weak var collectionView11MoviePage: UICollectionView!
    @IBOutlet weak var collectionView12MoviePage: UICollectionView!
    @IBOutlet weak var collectionView13MoviePage: UICollectionView!
    @IBOutlet weak var collectionView14MoviePage: UICollectionView!
    @IBOutlet weak var collectionView15MoviePage: UICollectionView!
    @IBOutlet weak var collectionView16MoviePage: UICollectionView!
  
    
    
    
    
    
    var arrForMovieCollectionView1 = ["dashing cm bharath","Justice League","maai-streaming-free","matani","poster1","pyaar","titu-ambani","Wonder Woman"]
    var arrForMovieCollectionView2 = ["vikram","baji","batman-vs-superman--dawn","drishyam","joker","justice-league","rocketry","roohi","the-dark-knight-rises","wonder-woman"]
    var arrForMovieCollectionView3 = ["ajab prem ki ghazab kahani","andhadhun","baji-1","cocktail","drishyam jc creatives","english vingl","gabbar","golmaal 3","housefull","housefull3","kochadaiiyaan","lingaa","love aaj  kal","luka 20chuppi","main hoon surya singham 2","oh my god","r... rajkumar","ramleela","raone","rockstar","singham returns","son of sardaar","special 26","stree","tanu weds manu returns","welcome back"]
    var arrForMovieCollectionView4 = ["fantastic-beasts-the-crimes-of-grindelwald","fb-1-3x4-clean","harry-potter-2-3x4-clean","harry-potter-and-the-goblet-of-fire-3x4","harry-potter-and-the-order-of-the-phoenix","harry-potter-and-the-prisoner-of-azkaban-3x4","harry-potter7-part-2--3x4.jpg-clean","harrypotterandthehalfbloodprince"]
    var arrForMovieCollectionView5 = ["bekaboo","naagin","housefull","junooniyat","udaariyan","parshuram","suhagan","saavi-ki-savari","parineetii","dharam-patni","bhagyalakshami","tripura-sundari","punyavathi","lakshmi-baramma"]
    var arrForMovieCollectionView6 =  ["candy","drishyam","ouac","asur","shor_in_the_city","lsd","code-m","the-stoneman-murders","london-files","marzi","the-gone-game","tandoor","paper","cell-no-145","paap-1","mohmaya-2","tomat-3","taranath-tantrik","taqdeer","six","the-nightwatchman","dastan-e-love-2","salon-de-paris","tansen-ka-tanpura-s2","mahanagar","dark-web","the-bengal-scam","the-hunter","pabitra-puppies","rykna"]
    var arrForMovieCollectionView7 = ["nh_2010","asur","andhadhun","generation-wolf-ivy-3x4-guideline","vikramvedha","rosh","apharan-s02","the-raikar-case","twisted-tales","faceless","candy","the-gone-game-s02","london-files","the-undertaker-(hindi-dubbed)","badlapur","inspector-avinash","drishyam","unkahee","under-the-black-moonlight"]
    var arrForMovieCollectionView8 = ["players","vikramvedha","golmaal","go-goa-gone","pyaar_ka_punchnama","housefull3","de-dana-dan","desi_boyz","omkar","welcome_back","sarkar","omjayjagadish","shootout","housefull"]
    var arrForMovieCollectionView9 = ["jdj","tkks","kkk","roadies","hustle","splitsvilla","ex-or-next","bigg-boss","bigg-buzz","hunarbaaz","bbk-ott","bb-ott","bbk-mini-season","tbp"]
    var arrForMovieCollectionView10 =  ["rocketry","no-smoking","bose-top-10-hot-picks","aligarh","asur","andhadhun","lootera","omkara","ramprasad_ki_tehrvi","bmtd","hpn","bhoot-returns","saajan","devdas","nil_battey_sannata"]
    var arrForMovieCollectionView11 = ["bhoot-returns","stree","roohi","ragini_mms","the-terror-of-hallow's-eve-ivy","scourge","hushhhh-2","nun","taranath-tantrik","robert in gujarati","ragini-mms-returns-ivy","krishna_cottage","the-signal","ouija","cartoon"]
    var arrForMovieCollectionView12 =  [1,2]
    
    
    
//    ["band-baja-bride","bl","get-the-look","highway-on-my-plate","kingfisher-calender-girl","kingfisher-supermodels","yarri-dostii-shaadi"]
    var arrForlanguage =
    
    ["bengali","bhojpuri","gujrati","hindi","kannada","malayalam","marathi","punjabi","tamil","telugu"]
    
    
    var arrForMovieCollectionView13 = ["goblin","extra-ordinary-you","melting-heart","la-teteniente","flower-of-evil","i-m-not-a-robot","kairos","prison-playbook","kill-me-heal-me","save-me-2","two-cops","the-game-towards-zero","el-caso","traicion","undercover","rich-man","el-continental-2","ten","drowning-city","1-of-something","bride-of-the-century-(hindi-dubbed)","mysterious-nurse-(hindi-dubbed)","my-little-baby-(hindi-dubbed)","that-man-oh-soo-(hindi-dubbed)","28-moons-(hindi-dubbed)","dream-change-laundromat-(hindi-dubbed)","what-in-the-world-happened--(hindi-dubbed)","under-the-black-moonlight","its-ok-mom-(hindi-dubbed)","its-ok-dad-(hindi-dubbed)"]
    var arrForMovieCollectionView14 =  ["parshuram","shani-3x4-hindi","mahakaali-3x4-hindi","ram-sita-r-luv-kush","jai-shri-krishna","shrimad-bhagwat-mahapuraan"]
    var arrForMovieCollectionView15 = ["vicky","tanu-weds-manu-returns","de-dana-dan","dekh-tamasha-dekh","partener","sugarless","hpn","munnes","sarkari_karyalay","comedy-nights-with-kapil-ivy","mr-das","hum-saaf-saaf-hai-batch-7","metro-park","happy-firse-bhag-jayegi","kkkk","happy-ending","housefull","luka_chuppi","happy-bhag-jaegi","money-hai-toh-honey-hai","desi_boyz"]
    var arrForMovieCollectionView16 =  ["kasam-tere-pyaar-ki","swaragini","chakravartin-ashoka-samrat","dil-se-dil-tak","kuch_toh_hai","barrister-babu","veer-shivaji","choti-sarrdaarni","madhubala","beintehaa","udaan","jhansi-rani","mahavir-hanuman","rangrasiya"]
    
    
    

    
    
    
    
    
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
        else if collectionView == self.collectionView8MoviePage{
            return arrForMovieCollectionView8.count
        }
//        else if collectionView == self.collectionView9MoviePage{
//            return arrForMovieCollectionView9.count
//        }
        else if collectionView == self.collectionView10MoviePage{
            return arrForMovieCollectionView10.count
        }
        else if collectionView == self.language{
            return arrForlanguage.count
        }
        else if collectionView == self.collectionView11MoviePage{
            return arrForMovieCollectionView11.count
        }
        else if collectionView == self.collectionView12MoviePage{
            return arrForMovieCollectionView12.count
        }
        else if collectionView == self.collectionView13MoviePage{
            return arrForMovieCollectionView13.count
        }
        else if collectionView == self.collectionView14MoviePage{
            return arrForMovieCollectionView14.count
        }
        else if collectionView == self.collectionView15MoviePage{
            return arrForMovieCollectionView15.count
        }
        else {
            return arrForMovieCollectionView16.count
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
            else if collectionView == self.collectionView8MoviePage{
                let cellForMovie8 = collectionView8MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie8", for: indexPath) as! CollectionViewCellForMovie8
                
                cellForMovie8.imgForMovieCollectionView8.image =
                UIImage(named: "\(arrForMovieCollectionView8[indexPath.row])")
            
                    return cellForMovie8
            }
//            else if collectionView == self.collectionView9MoviePage{
//                let cell999 = collectionView8MoviePage.dequeueReusableCell(withReuseIdentifier:  "cell999", for: indexPath) as! CollectionViewCellmovi09
//
//                cell999.imgForMovieCollectionViewmovi9.image =
//                UIImage(named: "\(arrForMovieCollectionView9[indexPath.row])")
//
//                    return cell999
//            }
            else if collectionView == self.collectionView10MoviePage{
                let cellForMovie10 = collectionView10MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie10", for: indexPath) as! CollectionViewCellForMovie10
                
                cellForMovie10.imgForMovieCollectionView10.image =
                UIImage(named: "\(arrForMovieCollectionView10[indexPath.row])")
            
                    return cellForMovie10
            }
            else if collectionView == self.collectionView10MoviePage{
                let cellForLanguage = language.dequeueReusableCell(withReuseIdentifier:  "cellForLanguage", for: indexPath) as! CollectionViewCellForLanguage
                
                cellForLanguage.imgForLanguage.image =
                UIImage(named: "\(arrForlanguage[indexPath.row])")
            
                    return cellForLanguage
            }
            
            else if collectionView == self.collectionView11MoviePage{
                let cellForMovie11 = collectionView11MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie11", for: indexPath) as! CollectionViewCellForMovie11
                
                cellForMovie11.imgForMovieCollectionView11.image =
                UIImage(named: "\(arrForMovieCollectionView11[indexPath.row])")
            
                    return cellForMovie11
            }
            else if collectionView == self.collectionView12MoviePage{
                let cellForMovie12 = collectionView12MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie12", for: indexPath) as! CollectionViewCellForMovie12
                
                cellForMovie12.imgForMovieCollectionView12.image =
                UIImage(named: "\(arrForMovieCollectionView12[indexPath.row])")
            
                    return cellForMovie12
            }
            else if collectionView == self.collectionView13MoviePage{
                let cellForMovie13 = collectionView13MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie13", for: indexPath) as! CollectionViewCellForMovie13
                
                cellForMovie13.imgForMovieCollectionView13.image =
                UIImage(named: "\(arrForMovieCollectionView13[indexPath.row])")
            
                    return cellForMovie13
            }
            else if collectionView == self.collectionView14MoviePage{
                let cellForMovie14 = collectionView14MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie14", for: indexPath) as! CollectionViewCellForMovie14
                
                cellForMovie14.imgForMovieCollectionView14.image =
                UIImage(named: "\(arrForMovieCollectionView14[indexPath.row])")
            
                    return cellForMovie14
            }
            else if collectionView == self.collectionView15MoviePage{
                let cellForMovie15 = collectionView15MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie15", for: indexPath) as! CollectionViewCellForMovie15
                
                cellForMovie15.imgForMovieCollectionView15.image =
                UIImage(named: "\(arrForMovieCollectionView15[indexPath.row])")
            
                    return cellForMovie15
            }
            else {
                let cellForMovie16 = collectionView16MoviePage.dequeueReusableCell(withReuseIdentifier:  "cellForMovie16", for: indexPath) as! CollectionViewCellForMovie16
                
                cellForMovie16.imgForMovieCollectionView16.image =
                UIImage(named: "\(arrForMovieCollectionView16[indexPath.row])")
            
                    return cellForMovie16
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
        else if collectionView == self.collectionView7MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView8MoviePage{
            return CGSize(width: 128, height: 152)
        }
//        else  if collectionView == self.collectionView9MoviePage{
//            return CGSize(width: 128, height: 152)
//        }
        else if collectionView == self.collectionView10MoviePage{
            return CGSize(width: 150, height: 180)
        }
        else if collectionView == self.language{
            return CGSize(width: 80, height: 80)
        }
        
        else if collectionView == self.collectionView11MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView12MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView13MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView14MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else if collectionView == self.collectionView15MoviePage{
            return CGSize(width: 128, height: 152)
        }
        else {
            return CGSize(width: 128, height: 152)
        }
}

}

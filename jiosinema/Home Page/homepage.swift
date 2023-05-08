

import UIKit

class homepage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView4: UICollectionView!
    @IBOutlet weak var collectionView5: UICollectionView!
    @IBOutlet weak var collectionView6: UICollectionView!
    @IBOutlet weak var collectionView7: UICollectionView!
    @IBOutlet weak var collectionView8: UICollectionView!
    @IBOutlet weak var collectionView9: UICollectionView!
    @IBOutlet weak var collectionView10: UICollectionView!
    @IBOutlet weak var collectionView11: UICollectionView!
    @IBOutlet weak var collectionView12: UICollectionView!
    @IBOutlet weak var collectionView13: UICollectionView!
    @IBOutlet weak var collectionView14: UICollectionView!
    @IBOutlet weak var collectionView15: UICollectionView!
    @IBOutlet weak var collectionView16: UICollectionView!
    @IBOutlet weak var collectionView17: UICollectionView!
    
    
    var arrForCollectionView1 = [1,2,3,4,5,6]
    var arrForCollectionView2 = [1,2,3,4,5,6]
    var arrForCollectionView3 = ["w1","w3","w4","w5","w6","w7"]
    var arrForCollectionView4 = ["h1","h2","h3","h4","h5","h6","h7","h8","h9"]
    var arrForCollectionView5 = [1,2,3,4,5,6]
    var arrForCollectionView6 = ["v1","v2","v3","v4","v5","v6"]
    var arrForCollectionView7 = ["CSK","GT","HRS","KKR","LSG","PK","RR","MI","RCB","DC"]
    var arrForCollectionView8 = ["s1","s2","s3","s4","s5"]
    var arrForCollectionView9 = ["movie1","movie2","movie4","movie5","movie6","movie7"]
    var arrForCollectionView10 = ["agnishakshi", "Bekaaboo","dharam patni", "durga aur charu", "Housefull", "Junooniyatt", "Naagin", "Parineetii","raaz mahal","tere ishq mein ghayal", "Udaariyaan"]
    var arrForCollectionView11 = ["ad1","ad2","ad3"]
    
    var arrForCollectionView12 = ["7 kadam","bose","broken but beautiiful","cybervaa","flesh","haq se","home  its a feeling","rise","the test case","untouchables","yo ke hua bro"]
    var arrForCollectionView13 = ["bombay talkies","drishyam jc creatives","Fakt Mahilao Maate", "kochadaiiyaan","lootera","Made In China","manmarziyaan","robert","shubh mangal savdhan","stree"]
    var arrForCollectionView14 = ["1 of something","bride of the century","drowning city","El Caso","Extraordinary You","flower of evil","goblin","i m not a robot","kairos","kill me heal me","la teteniente","melting heart","prison playbook","save me","the game towards zero","traicion","two cops","undercover"]
    var arrForCollectionView15 = ["Dharohar Bharat Ki Punarutthaan Ki Kahani","Dharohar Bharat Ki Punarutthaan Ki Kahani bhag 2"]
    var arrForCollectionView16 = ["IMDB1","IMDB2","IMDB3","IMDB4","IMDB5","IMDB6","IMDB7","IMDB8","IMDB9","IMDB10",]
    var arrForCollectionView17 = ["athletics","badminton","bsaketball","cricket","rider","squash","tennis","football"]
    
    
    var arrayForColore = [UIColor.yellow,UIColor.systemYellow,UIColor.orange,UIColor.purple,UIColor.cyan,UIColor.red,UIColor.systemPurple,UIColor.blue,UIColor.systemRed,UIColor.systemBlue]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    
    
    @IBAction func match24ActionButton(_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "matchActionButton") as! match26Page
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func previweButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "preview") as! preview
        navigationController?.pushViewController(naviget, animated: true)
        
    }
    @IBAction func highlights(_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "highlightsPage") as! highlightsPage
        navigationController?.pushViewController(naviget, animated: true)
    }
    @IBAction func bestTataIpl2023
    (_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "bestOfTataIpl") as! bestOfTataIpl
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func allLogo(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "allLogo") as! allLogo
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func schedule(_ sender: Any) {
        
        let naviget = storyboard?.instantiateViewController(withIdentifier: "schedule") as! schedule
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    @IBAction func FreshTvEp(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "freshTvEp") as! freshTvEp
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func populerWebShows(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "Popular_Web_Shows") as! Popular_Web_Shows
        navigationController?.pushViewController(naviget, animated: true)
        
    }
    
 
    @IBAction func GlobalHitsinHindi(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "globalHitsInHindi") as! globalHitsInHindi
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func PopularSports(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "PopularSports") as! PopularSports
        navigationController?.pushViewController(naviget, animated: true)

    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1{
            return arrForCollectionView1.count
        }
        else if collectionView == self.collectionView2{
            return arrForCollectionView2.count
        }
        else if collectionView == self.collectionView3 {
            return arrForCollectionView3.count
        }
        else if collectionView == self.collectionView4{
            return arrForCollectionView4.count
        }
        else if collectionView == self.collectionView5{
            return arrForCollectionView5.count
        }
        else if collectionView == self.collectionView6{
            return arrForCollectionView6.count
        }
        else if collectionView == self.collectionView7{
            return arrForCollectionView7.count
        }
        else if collectionView == self.collectionView8{
            return arrForCollectionView8.count
        }
        else if collectionView == self.collectionView9{
            return arrForCollectionView9.count
        }
        else if collectionView == self.collectionView10{
            return arrForCollectionView10.count
        }
        else if collectionView == self.collectionView11{
            return arrForCollectionView11.count
        }
        else if collectionView == self.collectionView12{
            return arrForCollectionView12.count
        }
        else if collectionView == self.collectionView13{
            return arrForCollectionView13.count
        }
        else if collectionView == self.collectionView14{
            return arrForCollectionView14.count
        }
        else if collectionView == self.collectionView15{
            return arrForCollectionView15.count
        }
        else if collectionView == self.collectionView16{
            return arrForCollectionView16.count
        }
        else {
            return arrForCollectionView17.count
        }
        
        
        
        
           
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1{
            let cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
            cell1.imageForCollectionView.image = UIImage(named: "\(arrForCollectionView1[indexPath.row])")
            return cell1
        }
        else if collectionView == self.collectionView2{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.imageForCollectionView2.image = UIImage(named: arrForCollectionView2[indexPath.row].description)
            return cell2
        }
        else if collectionView == self.collectionView3 {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imageForCollectionView3.image = UIImage(named: arrForCollectionView3[indexPath.row].description)
            return cell3
        }
        else if collectionView == self.collectionView4{
            let cell4 = collectionView4.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell4
            cell4.imageForCollectionView4.image = UIImage(named: arrForCollectionView4[indexPath.row].description)
            return cell4
        }
        else if collectionView == self.collectionView5{
            let cell5 = collectionView5.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell5
            cell5.imageForCollectionView5.image = UIImage(named: arrForCollectionView5[indexPath.row].description)
            return cell5
        }
        else if collectionView == self.collectionView6{
            let cell6 = collectionView6.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCell6
            cell6.imageForCollectionView6.image = UIImage(named: arrForCollectionView6[indexPath.row].description)
            return cell6
            
        }
        else if collectionView == self.collectionView7{
            let cell7 = collectionView7.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCell7
            cell7.imageForCollectionView7.image = UIImage(named: arrForCollectionView7[indexPath.row].description)
            cell7.labelForTeamBcColore.backgroundColor = arrayForColore[indexPath.row]
            return cell7
        }
        else if collectionView == self.collectionView8{
            let cell8 = collectionView8.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! CollectionViewCell8
            cell8.imageForCollectionView8.image = UIImage(named: arrForCollectionView8[indexPath.row].description)
            
            return cell8
        }
        else if collectionView == self.collectionView9{
            let cell9 = collectionView9.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! CollectionViewCell9
            cell9.imageForCollectionView9.image = UIImage(named: arrForCollectionView9[indexPath.row].description)
            return cell9
        }
        else if collectionView == self.collectionView10{
            let cell10 = collectionView10.dequeueReusableCell(withReuseIdentifier: "cell10", for: indexPath) as! CollectionViewCell10
            cell10.imageForCollectionView10.image = UIImage(named: arrForCollectionView10[indexPath.row].description)
            return cell10
        }
        else if collectionView == self.collectionView11{
            let cell11 = collectionView11.dequeueReusableCell(withReuseIdentifier: "cell11", for: indexPath) as! CollectionViewCell11
            cell11.imageForCollectionView11.image = UIImage(named: arrForCollectionView11[indexPath.row].description)
            return cell11
        }
        else if collectionView == self.collectionView12{
            let cell12 = collectionView12.dequeueReusableCell(withReuseIdentifier: "cell12", for: indexPath) as! CollectionViewCell12
            cell12.imageForCollectionView12.image = UIImage(named: arrForCollectionView12[indexPath.row].description)
            return cell12
        }
        else if collectionView == self.collectionView13{
            let cell13 = collectionView13.dequeueReusableCell(withReuseIdentifier: "cell13", for: indexPath) as! CollectionViewCell13
            cell13.imageForCollectionView13.image = UIImage(named: arrForCollectionView13[indexPath.row].description)
            return cell13
        }
        else if collectionView == self.collectionView14{
            let cell14 = collectionView14.dequeueReusableCell(withReuseIdentifier: "cell14", for: indexPath) as! CollectionViewCell14
            cell14.imageForCollectionView14.image = UIImage(named: arrForCollectionView14[indexPath.row].description)
            return cell14
        }
        else if collectionView == self.collectionView15{
            let cell15 = collectionView15.dequeueReusableCell(withReuseIdentifier: "cell15", for: indexPath) as! CollectionViewCell15
            cell15.imageForCollectionView15.image = UIImage(named: arrForCollectionView15[indexPath.row].description)
            return cell15
        }
        else if collectionView == self.collectionView16{
            let cell16 = collectionView16.dequeueReusableCell(withReuseIdentifier: "cell16", for: indexPath) as! CollectionViewCell16
            cell16.imageForCollectionView16.image = UIImage(named: arrForCollectionView16[indexPath.row].description)
            return cell16
        }
        else {
            let cell17 = collectionView17.dequeueReusableCell(withReuseIdentifier: "cell17", for: indexPath) as! CollectionViewCell17
            cell17.imageForCollectionView17.image = UIImage(named: arrForCollectionView17[indexPath.row].description)
            return cell17
        }
        
        
      
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1{
            return CGSize(width: 380, height: 183)
        }
        else if collectionView == self.collectionView2{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView3{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView4{
            return CGSize(width: 181, height: 128)
        }
        else if collectionView == self.collectionView5{
            return CGSize(width: 181, height: 128)

        }
        else if collectionView == self.collectionView6{
            return CGSize(width: 181, height: 128)

        }
        else if collectionView == self.collectionView7{
            return CGSize(width: 105, height: 95)
        }
        else if collectionView == self.collectionView8{
            return CGSize(width: 368, height: 165)
        }
        else if collectionView == self.collectionView8{
            return CGSize(width: 180, height: 220)
        }
        else if collectionView == self.collectionView9{
            return CGSize(width: 127, height: 167)
        }
        else if collectionView == self.collectionView10{
            return CGSize(width: 127, height: 167)
        }
        else if collectionView == self.collectionView10{
            return CGSize(width: 157, height: 128)
        }
        else if collectionView == self.collectionView11{
            return CGSize(width: 127, height: 167)
        }
        else if collectionView == self.collectionView12{
            return CGSize(width: 176, height: 216)
        }
        else if collectionView == self.collectionView13{
            return CGSize(width: 115, height: 150)
        }
        else if collectionView == self.collectionView14{
            return CGSize(width: 115, height: 150)
        }
        else if collectionView == self.collectionView15{
            return CGSize(width: 180, height: 120)
        }
        else if collectionView == self.collectionView16{
            return CGSize(width: 115, height: 150)
        }
        else {
            return CGSize(width: 80, height: 80)
        }
        
        
        
        
        
        
    }
    
  
    
}




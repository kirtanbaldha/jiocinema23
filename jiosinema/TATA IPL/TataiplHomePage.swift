//
//  TataiplHomePage.swift
//  jiosinema
//
//  Created by R & W on 09/05/23.
//

import UIKit

class TataiplHomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
  

    @IBOutlet weak var collectionView1IplPage1: UICollectionView!
    @IBOutlet weak var collectionView2IplPage1: UICollectionView!
    @IBOutlet weak var collectionView3IplPage1: UICollectionView!
    @IBOutlet weak var collectionView4IplPage1: UICollectionView!
    @IBOutlet weak var collectionView5IplPage1: UICollectionView!
    @IBOutlet weak var collectionView6IplPage1: UICollectionView!
    @IBOutlet weak var collectionView7IplPage1: UICollectionView!
    @IBOutlet weak var collectionView8IplPage1: UICollectionView!
    @IBOutlet weak var collectionView9IplPage1: UICollectionView!
    @IBOutlet weak var collectionView10IplPage1: UICollectionView!
    @IBOutlet weak var collectionView11IplPage1: UICollectionView!
    @IBOutlet weak var collectionView12IplPage1: UICollectionView!
    @IBOutlet weak var collectionView13IplPage1: UICollectionView!
    @IBOutlet weak var collectionView14IplPage1: UICollectionView!
    @IBOutlet weak var collectionView15IplPage1: UICollectionView!
    @IBOutlet weak var collectionView16IplPage1: UICollectionView!
    @IBOutlet weak var collectionView17IplPage1: UICollectionView!
    @IBOutlet weak var collectionView18IplPage1: UICollectionView!
    @IBOutlet weak var collectionView19IplPage1: UICollectionView!
    @IBOutlet weak var collectionView20IplPage1: UICollectionView!
    @IBOutlet weak var collectionView21IplPage1: UICollectionView!
    
    
    
    var arrForCollectionView1IPl1 = [1,2]
    
    var arrForCollectionView2IPl1 = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10","H11","H12","H13","H14","H15","H16","H17","H18","H19","H20"]
    var arrForCollectionView3IPl1 = [1,2,3]
    var arrForCollectionView4IPl1 = ["cap1","cap2","cap3","cap4","cap5","cap6","cap7","cap8","cap9"]
    var arrForCollectionView5IPl1 = ["hero1","hero2","hero3","hero4","hero5","hero6","hero7","hero8","hero9","hero10"]
    var arrForCollectionView6IPl1 = ["best1","best2","best3","best4","best5","best6","best7","best8","best9","best10","best11"]
    var arrForCollectionView7IPl1 = ["key1","key2","key3","key4","key5","key6","key7","key8","key9","key10","key11","key12","key13","key14","key15"]
    var arrForCollectionView8IPl1 = ["short1","short2","short3","short4","short5","short6","short7","short8","short9","short10","short11","short12","short13","short14","short15","short16","short17","short18","short19","short20","short21","short22","short23","short4","short25","short26","short24"]
    var arrForCollectionView9IPl1 = ["bangali","bhojpuri","gujrati","hindi","kannada","malayalam","marathi","tamil","telegu","whatsapp"]
    var arrForCollectionView10IPl1 = ["exclusives1","exclusives2","exclusives3","exclusives4","exclusives5"]
    var arrForCollectionView11IPl1 = ["cricketers1","cricketers2","cricketers3","cricketers4","cricketers5","cricketers6","cricketers7","cricketers8","cricketers9","cricketers10","cricketers11","cricketers12","cricketers13","cricketers14"]
    var arrForCollectionView12IPl1 = ["CSK","GT","HRS","KKR","LSG","PK","RR","MI","RCB","DC"]
    var arrForCollectionView13IPl1 = ["aakashvani1","aakashvani2","aakashvani3","aakashvani4","aakashvani5","aakashvani6","aakashvani7","aakashvani8","aakashvani9","aakashvani10","aakashvani11","aakashvani12","aakashvani13","aakashvani14","aakashvani15","aakashvani16","aakashvani1","aakashvani1","aakashvani1","aakashvani1"]
    var arrForCollectionView14IPl1 = ["exclusivesGT1","exclusivesGT2","exclusivesGT3"]
    var arrForCollectionView15IPl1 = ["bestOfInsiders1","bestOfInsiders2","bestOfInsiders3","bestOfInsiders4","bestOfInsiders5","bestOfInsiders6","bestOfInsiders7","bestOfInsiders8"]
    var arrForCollectionView16IPl1 = ["bestOfInsiders1","bestOfInsiders2","bestOfInsiders3","bestOfInsiders4","bestOfInsiders5","bestOfInsiders6","bestOfInsiders7","bestOfInsiders8","bestOfInsiders9","bestOfInsiders10"]
    var arrForCollectionView17IPl1 = ["topmoment1","topmoment2","topmoment3","topmoment4","topmoment5","topmoment6","topmoment7","topmoment8","topmoment9","topmoment10","topmoment11","topmoment12","topmoment13","topmoment14","topmoment15","topmoment16","topmoment17","topmoment18","topmoment19","topmoment20","topmoment21","topmoment22","topmoment23","topmoment24"]
    var arrForCollectionView18IPl1 = ["bestKnocks1","bestKnocks2","bestKnocks3","bestKnocks4","bestKnocks5","bestKnocks6","bestKnocks7","bestKnocks8","bestKnocks9","bestKnocks10","bestKnocks11","bestKnocks12","bestKnocks13"]
    var arrForCollectionView19IPl1 = ["bestSpell1","bestSpell2","bestSpell3","bestSpell4","bestSpell5","bestSpell6","bestSpell7","bestSpell8","bestSpell9","bestSpell10","bestSpell11","bestSpell12"]
    var arrForCollectionView20IPl1 = ["replay1","replay2","replay3","replay4","replay5","replay6","replay7","replay8","replay9","replay10","replay11","replay12","replay13"]
    var arrForCollectionView21IPl1 = ["athletics","badminton","bsaketball","cricket","rider","squash","tennis","football"]
    
    
    
    
    
    var arrayForColore = [UIColor.yellow,UIColor.systemYellow,UIColor.orange,UIColor.purple,UIColor.cyan,UIColor.red,UIColor.systemPurple,UIColor.blue,UIColor.systemRed,UIColor.systemBlue]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func highlights(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "TATA_IPL_2023_Highlights") as! TATA_IPL_2023_Highlights
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    @IBAction func Match_56__Mi_vs_RCB(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "Match_56__Mi_vs_RCB") as! Match_56__Mi_vs_RCB
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    @IBAction func Captain_s_Corner(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "Captain_s_Corner") as! Captain_s_Corner
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    @IBAction func HeroSpeak(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "HeroSpeak") as! HeroSpeak
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    @IBAction func Best_Of_TATA_IPL_2023(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "Best_Of_TATA_IPL_2023") as! Best_Of_TATA_IPL_2023
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->
        Int {
            if collectionView == self.collectionView1IplPage1{
                return arrForCollectionView1IPl1.count
            }
            else if collectionView == self.collectionView2IplPage1 {
                return arrForCollectionView2IPl1.count
            }
            else if collectionView == self.collectionView3IplPage1{
                return arrForCollectionView3IPl1.count
            }
            else if collectionView == self.collectionView4IplPage1{
                return arrForCollectionView4IPl1.count
            }
            else if collectionView == self.collectionView5IplPage1{
                return arrForCollectionView5IPl1.count
            }
            else if collectionView == self.collectionView6IplPage1{
                return arrForCollectionView6IPl1.count
            }
            else if collectionView == self.collectionView7IplPage1{
                return arrForCollectionView7IPl1.count
            }
            else if collectionView == self.collectionView8IplPage1{
                return arrForCollectionView8IPl1.count
            }
            else if collectionView == self.collectionView9IplPage1{
                return arrForCollectionView9IPl1.count
            }
            else if collectionView == self.collectionView10IplPage1{
                return arrForCollectionView10IPl1.count
            }
            else if collectionView == self.collectionView11IplPage1{
                return arrForCollectionView11IPl1.count
            }
            else if collectionView == self.collectionView12IplPage1{
                return arrForCollectionView12IPl1.count
            }
            else if collectionView == self.collectionView13IplPage1{
                return arrForCollectionView13IPl1.count
            }
            else if collectionView == self.collectionView14IplPage1{
                return arrForCollectionView14IPl1.count

            }
            else if collectionView == self.collectionView15IplPage1{
                return arrForCollectionView15IPl1.count

            }
            else if collectionView == self.collectionView16IplPage1{
                return arrForCollectionView16IPl1.count
            }
            else if collectionView == self.collectionView17IplPage1{
                return arrForCollectionView17IPl1.count
            }
            else if collectionView == self.collectionView18IplPage1{
                return arrForCollectionView18IPl1.count
            }
            else if collectionView == self.collectionView19IplPage1{
                return arrForCollectionView19IPl1.count
            }
            else if collectionView == self.collectionView20IplPage1{
                return arrForCollectionView20IPl1.count
            }
            else {
                return arrForCollectionView21IPl1.count
            }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1IplPage1{
            let cellIpl1 = collectionView1IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl1", for: indexPath) as! CollectionViewCell1IplPage1
            cellIpl1.imgForCollectionView1IplPage1.image = UIImage(named: "\(arrForCollectionView1IPl1[indexPath.row])")
            return cellIpl1
        }
        else if collectionView == self.collectionView2IplPage1{
            let cellIpl2 = collectionView2IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl2", for: indexPath) as! CollectionViewCell2IplPage1
            cellIpl2.imgForCollectionView2IplPage1.image = UIImage(named: "\(arrForCollectionView2IPl1[indexPath.row])")
            return cellIpl2
        }
        else if collectionView == self.collectionView3IplPage1{
            let cellIpl3 = collectionView3IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl3", for: indexPath) as! CollectionViewCell3IplPage1
            cellIpl3.imgForCollectionView3IplPage1.image = UIImage(named: "\(arrForCollectionView3IPl1[indexPath.row])")
            return cellIpl3
        }
        else if collectionView == self.collectionView4IplPage1{
            let cellIpl4 = collectionView4IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl4", for: indexPath) as! CollectionViewCell4IplPage1
            cellIpl4.imgForCollectionView4IplPage1.image = UIImage(named: "\(arrForCollectionView4IPl1[indexPath.row])")
            return cellIpl4
        }
        else if collectionView == self.collectionView5IplPage1{
            let cellIpl5 = collectionView5IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl5", for: indexPath) as! CollectionViewCell5IplPage1
            cellIpl5.imgForCollectionView5IplPage1.image = UIImage(named: "\(arrForCollectionView5IPl1[indexPath.row])")
            return cellIpl5
        }
        else if collectionView == self.collectionView6IplPage1{
            let cellIpl6 = collectionView6IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl6", for: indexPath) as! CollectionViewCell6IplPage1
            cellIpl6.imgForCollectionView6IplPage1.image = UIImage(named: "\(arrForCollectionView6IPl1[indexPath.row])")
            return cellIpl6
        }
        else if collectionView == self.collectionView7IplPage1{
            let cellIpl7 = collectionView7IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl7", for: indexPath) as! CollectionViewCell7IplPage1
            cellIpl7.imgForCollectionView7IplPage1.image = UIImage(named: "\(arrForCollectionView7IPl1[indexPath.row])")
            return cellIpl7
        }
        else if collectionView == self.collectionView8IplPage1{
            let cellIpl8 = collectionView8IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl8", for: indexPath) as! CollectionViewCell8IplPage1
            cellIpl8.imgForCollectionView8IplPage1.image = UIImage(named: "\(arrForCollectionView8IPl1[indexPath.row])")
            return cellIpl8
        }
        else if collectionView == self.collectionView9IplPage1{
            let cellIpl9 = collectionView9IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl9", for: indexPath) as! CollectionViewCell9IplPage1
            cellIpl9.imgForCollectionView9IplPage1.image = UIImage(named: "\(arrForCollectionView9IPl1[indexPath.row])")
            return cellIpl9
        }
        else if collectionView == self.collectionView10IplPage1{
            let cellIpl10 = collectionView10IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl10", for: indexPath) as! CollectionViewCell10IplPage1
            cellIpl10.imgForCollectionView10IplPage1.image = UIImage(named: "\(arrForCollectionView10IPl1[indexPath.row])")
            return cellIpl10
        }
        else if collectionView == self.collectionView11IplPage1{
            let cellIpl11 = collectionView11IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl11", for: indexPath) as! CollectionViewCell11IplPage1
            cellIpl11.imgForCollectionView11IplPage1.image = UIImage(named: "\(arrForCollectionView11IPl1[indexPath.row])")
            return cellIpl11
        }
        else if collectionView == self.collectionView12IplPage1{
            let cellIpl12 = collectionView12IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl12", for: indexPath) as! CollectionViewCell12IplPage1
            cellIpl12.imgForCollectionView12IplPage1.image = UIImage(named: "\(arrForCollectionView12IPl1[indexPath.row])")
            cellIpl12.lablecolor.backgroundColor = arrayForColore[indexPath.row]
            return cellIpl12
        }
        else if collectionView == self.collectionView13IplPage1{
            let cellIpl13 = collectionView13IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl13", for: indexPath) as! CollectionViewCell13IplPage1
            cellIpl13.imgForCollectionView13IplPage1.image = UIImage(named: "\(arrForCollectionView13IPl1[indexPath.row])")
            return cellIpl13

        }
        else if collectionView == self.collectionView14IplPage1{
            let cellIpl14 = collectionView14IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl14", for: indexPath) as! CollectionViewCell14IplPage1
            cellIpl14.imgForCollectionView14IplPage1.image = UIImage(named: "\(arrForCollectionView14IPl1[indexPath.row])")
            return cellIpl14

        }
        else if collectionView == self.collectionView15IplPage1{
            let cellIpl15 = collectionView15IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl15", for: indexPath) as! CollectionViewCell15IplPage1
            cellIpl15.imgForCollectionView15IplPage1.image = UIImage(named: "\(arrForCollectionView15IPl1[indexPath.row])")
            return cellIpl15

        }
        else if collectionView == self.collectionView16IplPage1{
            let cellIpl16 = collectionView16IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl16", for: indexPath) as! CollectionViewCell16IplPage1
            cellIpl16.imgForCollectionView16IplPage1.image = UIImage(named: "\(arrForCollectionView16IPl1[indexPath.row])")
            return cellIpl16

        }
        else if collectionView == self.collectionView17IplPage1{
            let cellIpl17 = collectionView17IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl17", for: indexPath) as! CollectionViewCell17IplPage1
            cellIpl17.imgForCollectionView17IplPage1.image = UIImage(named: "\(arrForCollectionView17IPl1[indexPath.row])")
            return cellIpl17

        }
        else if collectionView == self.collectionView18IplPage1{
            let cellIpl18 = collectionView18IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl18", for: indexPath) as! CollectionViewCell18IplPage1
            cellIpl18.imgForCollectionView18IplPage1.image = UIImage(named: "\(arrForCollectionView18IPl1[indexPath.row])")
            return cellIpl18

        }
        else if collectionView == self.collectionView19IplPage1{
            let cellIpl19 = collectionView19IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl19", for: indexPath) as! CollectionViewCell19IplPage1
            cellIpl19.imgForCollectionView19IplPage1.image = UIImage(named: "\(arrForCollectionView19IPl1[indexPath.row])")
            return cellIpl19

        }
        else if collectionView == self.collectionView20IplPage1{
            let cellIpl20 = collectionView20IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl20", for: indexPath) as! CollectionViewCell20IplPage1
            cellIpl20.imgForCollectionView20IplPage1.image = UIImage(named: "\(arrForCollectionView20IPl1[indexPath.row])")
            return cellIpl20

        }
        else {
            let cellIpl21 = collectionView21IplPage1.dequeueReusableCell(withReuseIdentifier: "cellIpl21", for: indexPath) as! CollectionViewCell21IplPage1
            cellIpl21.imgForCollectionView21IplPage1.image = UIImage(named: "\(arrForCollectionView21IPl1[indexPath.row])")
            return cellIpl21

        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView1IplPage1{
            return CGSize(width: 390, height: 180)
        }
        else if collectionView == self.collectionView2IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView3IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView4IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView5IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView6IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView7IplPage1{
            return CGSize(width: 90, height: 90)
        }
        else if collectionView == self.collectionView8IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView9IplPage1{
            return CGSize(width: 100, height: 100)
        }
        else if collectionView == self.collectionView10IplPage1{
            return CGSize(width: 120, height: 160)
        }
        else if collectionView == self.collectionView11IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView12IplPage1{
            return CGSize(width: 105, height: 95)
        }
        else if collectionView == self.collectionView13IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView14IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView15IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView16IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView17IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView18IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView19IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else if collectionView == self.collectionView20IplPage1{
            return CGSize(width: 168, height: 113)
        }
        else {
            return CGSize(width: 80, height: 80)
        }
        
        
    }
    


}

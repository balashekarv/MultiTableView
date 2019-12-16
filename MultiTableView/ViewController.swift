//
//  ViewController.swift
//  MultiTableView
//
//  Created by BALA SEKHAR on 19/11/19.
//  Copyright © 2019 BALU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segOUT: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    
    var hydData:[HYDModel]=[]
    var blrData:[BLRModel]=[]
    var boiData:[BOIModel]=[]
    var goaData:[GOAModel]=[]


    override func viewDidLoad() {
        super.viewDidLoad()
//        segOUT.backgroundColor=UIColor(red: 255, green: 160, blue: 122, alpha: 1)
        segOUT.backgroundColor = UIColor(rgb: 0x209624)

        hydData=[HYDModel(title: "KBR Park", place: "Hyberabad", img: UIImage(named: "KBR"), placeDetails: "Kasu Brahmananda Reddy National Park also known as Chiran Fort or Chiran Palace is a national park located in Jubilee Hills and Banjara Hills in Hyderabad, Telangana, India. The park has an approximate area of 390-acre."),
                 HYDModel(title: "Cyber Towers", place: "Hyberabad", img: UIImage(named: "Cybertower"), placeDetails: "The Hyderabad Information Technology and Engineering Consultancy City, abbreviated as ... this four-quadrant, 10-story building. The Cyber Towers building is divided into four quadrants with a large fountain in the middle of the quadrants."),
                 HYDModel(title: "Shilparamam", place: "Hyberabad", img: UIImage(named: "Shilparamam"), placeDetails: "Shilparamam is an arts and crafts village located in Madhapur, Hyderabad, Telangana, India. The village was conceived with an idea to create an environment for the preservation of traditional crafts. There are ethnic festivals round the year."),
                 HYDModel(title: "KBR Park", place: "Hyberabad", img: UIImage(named: "KBR"), placeDetails: ""),
                 HYDModel(title: "Cyber Towers", place: "Hyberabad", img: UIImage(named: "Cybertower"), placeDetails: ""),
                 HYDModel(title: "Shilparamam", place: "Hyberabad", img: UIImage(named: "Shilparamam"), placeDetails: ""),
                 HYDModel(title: "KBR Park", place: "Hyberabad", img: UIImage(named: "KBR"), placeDetails: ""),
                 HYDModel(title: "Cyber Towers", place: "Hyberabad", img: UIImage(named: "Cybertower"), placeDetails: ""),
                 HYDModel(title: "Shilparamam", place: "Hyberabad", img: UIImage(named: "Shilparamam"), placeDetails: ""),
                 HYDModel(title: "KBR Park", place: "Hyberabad", img: UIImage(named: "KBR"), placeDetails: ""),
                 HYDModel(title: "Cyber Towers", place: "Hyberabad", img: UIImage(named: "Cybertower"), placeDetails: ""),
                 HYDModel(title: "Shilparamam", place: "Hyberabad", img: UIImage(named: "Shilparamam"), placeDetails: "")
        ]
        blrData=[BLRModel(title: "Cubbonpark", place: "Bengaluru", img: UIImage(named: "Cubbonpark"), placeDetails: "Cubbon Park, officially called Sri Chamarajendra Park is a landmark 'lung' area of Bengaluru city, located within the heart of the city in the Central Administrative Area."),
                 BLRModel(title: "Lalbagh", place: "Bengaluru", img: UIImage(named: "Lalbagh"), placeDetails: "Lalbagh Botanical Gardens or Lalbagh is an old botanical garden in Bengaluru, India. First planned and laid out during the rule of Hyder Ali and later adorned with unique plant species by his son Tipu Sultan, it was later managed under numerous British Superintendents before Indian Independence."),
                 BLRModel(title: "Udupigarden", place: "Bengaluru", img: UIImage(named: "Udupigarden"), placeDetails: "Great place for the morning and evening walks. Must go for the morning walls here. Will be able to meet many like minded people. Also may have the opportunity to join a suitable group."),
                 BLRModel(title: "Cubbonpark", place: "Bengaluru", img: UIImage(named: "Cubbonpark"), placeDetails: ""),
                 BLRModel(title: "Lalbagh", place: "Bengaluru", img: UIImage(named: "Lalbagh"), placeDetails: ""),
                 BLRModel(title: "Udupigarden", place: "Bengaluru", img: UIImage(named: "Udupigarden"), placeDetails: ""),
                 BLRModel(title: "Cubbonpark", place: "Bengaluru", img: UIImage(named: "Cubbonpark"), placeDetails: ""),
                 BLRModel(title: "Lalbagh", place: "Bengaluru", img: UIImage(named: "Lalbagh"), placeDetails: ""),
                 BLRModel(title: "Udupigarden", place: "Bengaluru", img: UIImage(named: "Udupigarden"), placeDetails: ""),
                 BLRModel(title: "Cubbonpark", place: "Bengaluru", img: UIImage(named: "Cubbonpark"), placeDetails: ""),
                 BLRModel(title: "Lalbagh", place: "Bengaluru", img: UIImage(named: "Lalbagh"), placeDetails: ""),
                 BLRModel(title: "Udupigarden", place: "Bengaluru", img: UIImage(named: "Udupigarden"), placeDetails: " ")
                
        ]
        boiData=[BOIModel(title: "KBR Park", place: "Mumbai", img: UIImage(named: "KBR"), placeDetails: ""),
                 BOIModel(title: "Cyber Towers", place: "Mumbai", img: UIImage(named: "Cybertower"), placeDetails: ""),
                 BOIModel(title: "Shilparamam", place: "Mumbai", img: UIImage(named: "Shilparamam"), placeDetails: "")
        ]
        
        goaData=[GOAModel(title: "KBR Park", place: "Goa", img: UIImage(named: "KBR"), placeDetails: ""),
                 GOAModel(title: "Cyber Towers", place: "Goa", img: UIImage(named: "Cybertower"), placeDetails: ""),
                 GOAModel(title: "Shilparamam", place: "Goa", img: UIImage(named: "Shilparamam"), placeDetails: "")
        ]
        
        

        
    }

    @IBAction func segClick(_ sender: Any) {
        self.tableView.reloadData()
        
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value=0
        switch segOUT.selectedSegmentIndex {
        case 0:
            value=hydData.count
            break
        case 1:
            value=blrData.count


            break
        case 2:
            value=boiData.count
            break
        case 3:
            value=goaData.count

            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        switch segOUT.selectedSegmentIndex {
        case 0:
            cell.title.text=hydData[indexPath.row].title
            cell.place.text=hydData[indexPath.row].place
            cell.img.image=hydData[indexPath.row].img
            break
        case 1:
            cell.title.text=blrData[indexPath.row].title
            cell.place.text=blrData[indexPath.row].place
            cell.img.image=blrData[indexPath.row].img
            
        break
        case 2:
            cell.title.text=boiData[indexPath.row].title
            cell.place.text=boiData[indexPath.row].place
            cell.img.image=boiData[indexPath.row].img
            break
        case 3:
            cell.title.text=goaData[indexPath.row].title
            cell.place.text=goaData[indexPath.row].place
            cell.img.image=goaData[indexPath.row].img
            break
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let deTailVC=self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        switch segOUT.selectedSegmentIndex {
        case 0:
            deTailVC.hydData=hydData[indexPath.row]
            break
        case 1:
            deTailVC.blrData=blrData[indexPath.row]
            break
        case 2:
            deTailVC.boiData=boiData[indexPath.row]
            break
        case 3:
            deTailVC.goaData=goaData[indexPath.row]
            break
        default:
            break
        }
        self.navigationController?.pushViewController(deTailVC, animated: true)
        
    }
    
}

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 133.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 193.0,
            blue: CGFloat(rgb & 0x0000FF) / 233.0,
            alpha: CGFloat(1.0)
        )
    }
}

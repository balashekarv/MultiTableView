//
//  DetailViewController.swift
//  MultiTableView
//
//  Created by BALA SEKHAR on 19/11/19.
//  Copyright © 2019 BALU. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var deTitle: UILabel!
    
    @IBOutlet weak var deCity: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    var hydData:HYDModel?
    var blrData:BLRModel?
    var boiData:BOIModel?
    var goaData:GOAModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if hydData?.place=="Hyberabad"{
            img.image=hydData?.img
            deTitle.text=hydData?.title
            deCity.text=hydData?.place
            details.text=hydData?.placeDetails
            
        }else if blrData?.place=="Bengaluru"{
            img.image=blrData?.img
            deTitle.text=blrData?.title
            deCity.text=blrData?.place
            details.text=blrData?.placeDetails

        }else if boiData?.place=="Mumbai"{
            img.image=boiData?.img
            deTitle.text=boiData?.title
            deCity.text=boiData?.place
            details.text=boiData?.placeDetails

        }else if goaData?.place=="Goa"{
            img.image=goaData?.img
            deTitle.text=goaData?.title
            deCity.text=goaData?.place
            details.text=goaData?.placeDetails

        }

    }
    

 

}

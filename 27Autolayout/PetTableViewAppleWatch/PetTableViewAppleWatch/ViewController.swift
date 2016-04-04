//
//  ViewController.swift
//  PetTableViewAppleWatch
//
//  Created by Marta García on 23/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iphoneimage: UIImageView!
    
    
    @IBOutlet weak var iphonelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("guau_pet_response:"), name: "Pet_says_guau", object: nil)
    }
    
    
    func guau_pet_response(notification: NSNotification){
        
        let userInfo = notification.object as [String : String]
        
        let petname = userInfo["pet"]
        
        let petnamebig = "\(petname!)big"
        
        iphonelabel.text = petname
        iphoneimage.image = UIImage(named: petnamebig)!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


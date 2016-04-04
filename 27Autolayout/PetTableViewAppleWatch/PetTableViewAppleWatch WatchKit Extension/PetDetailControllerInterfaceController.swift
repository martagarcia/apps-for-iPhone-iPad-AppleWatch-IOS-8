//
//  PetDetailControllerInterfaceController.swift
//  PetTableViewAppleWatch
//
//  Created by Marta García on 23/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import WatchKit
import Foundation

class PetDetailControllerInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var DetailImage: WKInterfaceImage!
    
    @IBOutlet weak var DetailLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let petname = context as? String {
            let petnamebig = "\(petname)big"
        
        DetailLabel.setText(petname)
        DetailImage.setImage(UIImage(named: petnamebig))
        
        WKInterfaceController.openParentApplication(["pet":petname], reply: {(reply,error)-> Void in})
            
        }
        
        // configure interface objects here
        
        NSLog("%@ awake", self)
        
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
}

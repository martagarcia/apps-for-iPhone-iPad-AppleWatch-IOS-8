//
//  InterfaceController.swift
//  PetTableViewAppleWatch WatchKit Extension
//
//  Created by Marta García on 23/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var petTable: WKInterfaceTable!
    
    var petnames = ["Luna", "Dylan", "Mery", "Mady", "Paul Newman", "Heidi"]

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        petTable.setNumberOfRows(petnames.count, withRowType: "PetTableRowViewController")
        
        for (i,pet_name) in enumerate(petnames){
            var rowpetcontroller = petTable.rowControllerAtIndex(i) as PetTableRowViewController
            
            rowpetcontroller.PetImage.setImage(UIImage(named: pet_name))
            rowpetcontroller.PetLabel.setText(pet_name)
        }
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

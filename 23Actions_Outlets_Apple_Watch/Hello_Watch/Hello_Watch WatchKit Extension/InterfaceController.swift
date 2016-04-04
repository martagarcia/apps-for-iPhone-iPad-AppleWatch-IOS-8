//
//  InterfaceController.swift
//  Hello_Watch WatchKit Extension
//
//  Created by Marta García on 23/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var LabelOutlet: WKInterfaceLabel!
    
    @IBAction func Hello() {
        let font:UIFont? = UIFont(name: "Times", size: 18.0)
        
        var attribString = NSMutableAttributedString(string: "Hello Watch", attributes: NSDictionary(object: font!, forKey: NSFontAttributeName))
        
        //attribString.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSRange(location: 0, length: attribString.length))
        
        LabelOutlet.setAttributedText(attribString)
        
        LabelOutlet.setTextColor(UIColor.greenColor())
    }
    
    @IBAction func Goodbye() {
  
        let font:UIFont? = UIFont(name: "Times", size: 18.0)
        
        var attribString = NSMutableAttributedString(string: "Good Bye Watch", attributes: NSDictionary(object: font!, forKey: NSFontAttributeName))
        
        attribString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: 4))
        attribString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 5, length: 3))
        attribString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSRange(location: 9, length: 5))
        
        LabelOutlet.setAttributedText(attribString)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

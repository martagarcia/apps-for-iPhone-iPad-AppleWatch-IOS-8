//
//  SecondViewController.swift
//  FirstAppSwift
//
//  Created by Marta García on 12/4/15.
//  Copyright (c) 2015 learningXcode. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var FieldTextInput: UITextField!
    
    @IBOutlet var LabelGoodMornig: UILabel!
    
    @IBAction func GoodBye(sender: UIButton) {
        LabelGoodMornig.text = "The course ends at 8 P.M."
    }
    
    @IBAction func Hello(sender: UIButton) {
        LabelGoodMornig.text = "Good Morning \(FieldTextInput.text)!"
    }
    
    @IBAction func HideKeyboard(sender: UIButton) {
        
    }
    
    @IBAction func Alert (sender: UIButton) {
        
        func CancelAction(alertView:UIAlertAction!){
            NSLog("User press Cancel Button")
        }
        
        func OKAction(alertView:UIAlertAction!){
            NSLog("User press OK Button")
        }
        var alert = UIAlertController(title: "Hey!!", message: "This is one Alert", preferredStyle:
        UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Cancel, handler: CancelAction))
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: OKAction))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

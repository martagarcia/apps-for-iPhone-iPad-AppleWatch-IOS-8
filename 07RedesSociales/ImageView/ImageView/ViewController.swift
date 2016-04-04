//
//  ViewController.swift
//  ImageView
//
//  Created by Marta García on 17/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import UIKit
import Social
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var ImageViewOutlet: UIImageView!
    
    @IBOutlet var SliderOutlet: UISlider!
    @IBOutlet var LabelminOutlet: UILabel!
    @IBOutlet var LabelmaxOutlet: UILabel!
    
    @IBAction func changevaluesSlider(sender: UISlider) {
        ImageViewOutlet.alpha = CGFloat(SliderOutlet.value)
    }
    
    @IBAction func ShowDylanAction(sender: UIButton) {
        var image: UIImage = UIImage (named: "dylan.jpg")!
        ImageViewOutlet.image = image
        
        
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
        
            var facebook : SLComposeViewController = SLComposeViewController(forServiceType:    SLServiceTypeFacebook)
            facebook.setInitialText("guauuuuu")
            facebook.addImage(image)
            self.presentViewController(facebook, animated: true, completion: nil)
        }
        
        let text = "Dylan"
        
        var activityItems : NSArray = NSArray(objects: text, image)
        
        var avc : UIActivityViewController = UIActivityViewController(activityItems: activityItems as [AnyObject], applicationActivities: nil)
        
        self.presentViewController(avc, animated: true, completion: nil)
    

    }
    
    @IBAction func ShowMeryAction(sender: UIButton) {
        var image: UIImage = UIImage (named: "mery.png")!
        ImageViewOutlet.image = image
        
        
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            var facebook : SLComposeViewController = SLComposeViewController(forServiceType:    SLServiceTypeFacebook)
            facebook.setInitialText("miauuuuuuu")
            facebook.addImage(image)
            self.presentViewController(facebook, animated: true, completion: nil)
        }
        
        let text = "Mery"
        
        var activityItems : NSArray = NSArray(objects: text, image)
        
        var avc : UIActivityViewController = UIActivityViewController(activityItems:activityItems as [AnyObject], applicationActivities: nil)
        
        self.presentViewController(avc, animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // When the view is loaded, we change the initial value.
        SliderOutlet.value = 0.75
        ImageViewOutlet.alpha = CGFloat(SliderOutlet.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


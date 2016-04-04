//
//  ViewController.swift
//  FirstAppSwift
//
//  Created by Marta García on 11/4/15.
//  Copyright (c) 2015 learningXcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var LabelOutlet: UILabel!
    
    @IBAction func WakeUpAction(sender: UIButton) {
        LabelOutlet.text = "Let's go Xcoding in Swift"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  ScrollView
//
//  Created by Marta García on 18/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    // mi clase es delegada del ScrollView (es UIScrollViewDelegate), por lo que llegaran eventos que se produzcan en el ScrollView que trataremos aqui en la vista. Por ello hay que indicarle que el delegate soy yo "ScrollViewDylan.delegate = self"

    @IBOutlet var ScrollViewDylan: UIScrollView!
    
    @IBOutlet var ImageViewSnowDylan: UIImageView!
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return ImageViewSnowDylan
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollViewDylan.scrollEnabled = true
        ScrollViewDylan.maximumZoomScale = 4.0
        ScrollViewDylan.minimumZoomScale = 0.5
        
        ScrollViewDylan.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


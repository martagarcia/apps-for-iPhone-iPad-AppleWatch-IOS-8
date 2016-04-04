//
//  ViewController.swift
//  ImageView
//
//  Created by Marta García on 17/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import UIKit

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

    }
    
    @IBAction func ShowMeryAction(sender: UIButton) {
        var image: UIImage = UIImage (named: "mery.png")!
        ImageViewOutlet.image = image
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // When the view is loaded, we change the initial value.
        SliderOutlet.value = 0.75
        ImageViewOutlet.alpha = CGFloat(SliderOutlet.value)
        
        self.view.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        
        var rectinbackground : UIView = UIView(frame: CGRectMake(40, 40, 240, 380))
        rectinbackground.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0.5, alpha: 1)
        
        self.view.addSubview(rectinbackground)
        self.view.sendSubviewToBack(rectinbackground)
        
        MotionToView(rectinbackground, velocity: -40.0)
        MotionToView(ImageViewOutlet, velocity: 20.0)
        MotionToView(SliderOutlet, velocity: 20.0)
        MotionToView(LabelminOutlet, velocity: 40)
        MotionToView(LabelmaxOutlet, velocity: 40)
    }
    
    func MotionToView(view : UIView, velocity: Float){
        var axis_x_motion: UIInterpolatingMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis)
        axis_x_motion.maximumRelativeValue = velocity
        axis_x_motion.minimumRelativeValue = -velocity
        
        var axis_y_motion: UIInterpolatingMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: UIInterpolatingMotionEffectType.TiltAlongVerticalAxis)
        axis_y_motion.maximumRelativeValue = velocity
        axis_y_motion.minimumRelativeValue = -velocity
        
        var motiongroup: UIMotionEffectGroup = UIMotionEffectGroup()
        
        motiongroup.motionEffects = [axis_x_motion, axis_y_motion]
        
        view.addMotionEffect(motiongroup)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
        
        var synthesizer : AVSpeechSynthesizer = AVSpeechSynthesizer()
        
        var words : AVSpeechUtterance = AVSpeechUtterance(string: "Hola, soy Dylan")
        words.rate = self.SliderOutlet.value
        words.volume = 1
        words.voice = AVSpeechSynthesisVoice(language: "es-Es")
        synthesizer.speakUtterance(words) 

    }
    
    @IBAction func ShowMeryAction(sender: UIButton) {
        var image: UIImage = UIImage (named: "mery.png")!
        ImageViewOutlet.image = image
        
        var synthesizer : AVSpeechSynthesizer = AVSpeechSynthesizer()
        
        var words : AVSpeechUtterance = AVSpeechUtterance(string: "Bonjour, je suis Mery")
        words.rate = self.SliderOutlet.value
        words.volume = 1
        words.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        synthesizer.speakUtterance(words)

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


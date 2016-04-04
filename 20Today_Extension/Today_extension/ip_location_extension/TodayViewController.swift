//
//  TodayViewController.swift
//  ip_location_extension
//
//  Created by Marta García on 24/3/15.
//  Copyright (c) 2015 iOS8. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var LabelOutlet: UILabel!
    
    var updateWidget : NCUpdateResult = NCUpdateResult.NoData
    
    var Ipgeolocation : NSDictionary?
    
    @IBAction func update(sender: UIButton) {
        self.updateIpLocation()
    }
    
    func updateIpLocation()
    {
        let urlservice : String = "http://www.telize.com/geoip"
        
        let NSURLurlservice : NSURL = NSURL(string: urlservice)!
        
        let requestIplocation = NSURLRequest(URL: NSURLurlservice)
        
        let queue = NSOperationQueue()
        
        NSURLConnection.sendAsynchronousRequest(requestIplocation, queue: queue, completionHandler:{(response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            
            if (error != nil){
                self.LabelOutlet.text = "error retrieving data IP"
                
                self.updateWidget = NCUpdateResult.Failed
            }
            else
            {
                self.Ipgeolocation = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
                
                println("self.Ipgeolocation \(self.Ipgeolocation!) ")
                
                let city = self.Ipgeolocation!["city"] as? String
                
                let region = self.Ipgeolocation!["region"] as? String
                
                self.LabelOutlet.text = city! + ", " + region!
                
                self.updateWidget = NCUpdateResult.NewData
            }
        })
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateIpLocation()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        self.updateIpLocation()
        
        completionHandler(self.updateWidget)
    }
    
    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        var newMargins = defaultMarginInsets
        newMargins.right = 8
        newMargins.bottom = 5
        return newMargins
    }
    
}

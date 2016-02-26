//
//  ViewController.swift
//  AlertController
//
//  Created by Marcel Dittmann on 02/26/2016.
//  Copyright (c) 2016 Marcel Dittmann. All rights reserved.
//

import UIKit
import AlertController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {

    }
    
    func presentAlertControllerWithTwoButtons() {
        
        let alertController = AlertController(title: "Title", message: "Lorem Ipsum", icon: nil, preferredStyle: UIAlertControllerStyle.Alert, blurStyle: .ExtraLight)
        
        alertController.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
        
        }))
        
        alertController.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
          
        }))
        
        self.presentViewController(alertController, animated: true) { () -> Void in
            
        }
    }
    
    func presentAlertControllerWithButtonsAndTextField() {
        
        let alertController = AlertController(title: "Title", message: "Lorem Ipsum", icon: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
            
        }))
        
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            
        }
        
        self.presentViewController(alertController, animated: true) { () -> Void in
            
        }
    }
    
    func presentAlertControllerWithIcon() {
        
        let alertController = AlertController(title: "Title", message: "Lorem Ipsum", icon: UIImage(named: "Icon"), preferredStyle: UIAlertControllerStyle.Alert, blurStyle: .Dark)
        
        alertController.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
            
        }))
        
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            
        }
        
        self.presentViewController(alertController, animated: true) { () -> Void in
            
        }
    }
    
    func presentAlertControllerWithActionSheetStyle() {
        
        let alertController = AlertController(title: "Title", message: "Lorem Ipsum", icon: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        alertController.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
            
        }))
        
        alertController.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
            
        }))
        
        self.presentViewController(alertController, animated: true) { () -> Void in
            
        }
    }
    
    @IBAction func exampleButton1Tapped(sender: AnyObject) {
        presentAlertControllerWithTwoButtons()
    }
    
    @IBAction func exampleButton2Tapped(sender: AnyObject) {
        presentAlertControllerWithButtonsAndTextField()
    }
    
    @IBAction func exampleButton3Tapped(sender: AnyObject) {
        presentAlertControllerWithIcon()
    }
    
    @IBAction func exampleButton4Tapped(sender: AnyObject) {
        presentAlertControllerWithActionSheetStyle()
    }
}


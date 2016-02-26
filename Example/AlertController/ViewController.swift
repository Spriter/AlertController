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
        presentAlertController()
    }
    
    func presentAlertController() {
        var con = AlertController(title: "presentAlertController", message: "Lorem Ipsum", icon: UIImage(named: "IconSmall"), preferredStyle: UIAlertControllerStyle.Alert, blurStyle: .ExtraLight)
        
        con.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            print("aa")
        }))
        
        con.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
            print("cc")
        }))
        
        con.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
            print("cc")
        }))
        
        con.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
            print("cc")
        }))
                
        con.transitionStyle = .CoverVertical
        
        self.presentViewController(con, animated: true) { () -> Void in
            
        }
    }

}


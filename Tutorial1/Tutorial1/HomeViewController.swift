//
//  HomeViewController.swift
//  Tutorial1
//
//  Created by Sean Zehnder on 8/4/14.
//  Copyright (c) 2014 Ill Corporation. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var email:String?
    var password:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (email) {
            emailLabel.text = email!
        }
        
        if (password) {
            passwordLabel.text = password!
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSettingsTapped(sender: AnyObject) {
        let vc = SettingsViewController(nibName: "SettingsViewController", bundle: NSBundle.mainBundle())
//        self.navigationController.pushViewController(vc, animated: true) // not modal
        self.presentViewController(vc, animated: true, completion: nil)
    }
}

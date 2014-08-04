//
//  WelcomeViewController.swift
//  Tutorial1
//
//  Created by Sean Zehnder on 8/4/14.
//  Copyright (c) 2014 Ill Corporation. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
                            
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonTapped(sender: AnyObject) {
//        SVProgressHUD.showErrorWithStatus("email:\(emailInput.text) password:\(passwordInput.text)")

        self.performSegueWithIdentifier("To Home", sender: self)
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)  {
        let destinationVC = segue.destinationViewController as HomeViewController
        
        destinationVC.email = emailInput.text
        destinationVC.password = passwordInput.text
        
    }
    

}


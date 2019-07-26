//
//  ViewController.swift
//  hoodDrip
//
//  Created by HGPMAC83 on 7/2/19.
//  Copyright © 2019 HGPMAC83. All rights reserved.
//

import UIKit
import Firebase
import UserNotifications
class ViewController:  UIViewController {
    


    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func actionButton(_ sender: UIButton) {
    

        if emailText.text != "" && passwordText.text != ""
        {
            if segmentControl.selectedSegmentIndex == 0 //Login user
            {
                Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!, completion: {(user, error) in
                    if user != nil
                    {
                        self.performSegue(withIdentifier: "logintohome", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("ERROR")
                        }
                    }
                })
            }
                
            else //Sign up user
            {
                Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: {(user , error) in
                    if user != nil
                     {
                        self.performSegue(withIdentifier: "logintohome", sender: self)
                    }
                    else
                     {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("ERROR")
                        }
                    }
                })
            }
        }
    }
   
    
    
    @IBAction func action(_ sender: Any)
    {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
}


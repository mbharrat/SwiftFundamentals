//
//  LoginViewController.swift
//  toDoList
//
//  Created by Michael Bharrat on 7/29/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    //dictionary of login stuff
    var login = [String: String] ()
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "check.png")!)
        self.updateUsers()
        // Do any additional setup after loading the view.
        //delegate stuff
        passwordText.delegate = self
        userNameText.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onLogin(sender: UIButton) {
        if login.indexForKey(userNameText.text!) != nil {
            if login[userNameText.text!] == passwordText.text! {
                let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("viewMain") as? UIViewController
                self.presentViewController(nextViewController!, animated:true, completion:nil)
            }else{
                alertPass()
                passwordText.text = nil
                passwordText.placeholder = "Enter password"
            }
            
        }else{
            alert()
        }
    }
    @IBAction func onSignUp(sender: UIButton) {
        signUp()
    }
    
    
    func alert(){
        let Alert = UIAlertController(title: "Invalid Username", message: "Try Again or Sign Up", preferredStyle: UIAlertControllerStyle.Alert)
        
        Alert.addAction(UIAlertAction(title: "Sign Up", style: UIAlertActionStyle.Default, handler: {
            action in
            self.signUp()
        }))
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    func alertPass(){
        let Alert = UIAlertController(title: "Password Incorrect", message: "Try Again", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    func alertUsed(){
        let Alert = UIAlertController(title: "Username Already Exists", message: "Try Something Else", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    func alertConfirm(){
        let Alert = UIAlertController(title: "Success", message: "created account", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    func signUp(){
        if login.indexForKey(userNameText.text!) != nil {
            alertUsed()
        }else{
            login[userNameText.text!] = passwordText.text!
            NSUserDefaults.standardUserDefaults().setObject(login, forKey: "signupTapped")
            self.updateUsers()
            alertConfirm()
        }
        
    }
    //update user function creates a static device dictionary of users and passwords created
    //include call to function in viewdidload as well as in sign up function after you setObject
    //possible tweak for storing on backend on web server
    func updateUsers(){
        let dict = NSUserDefaults.standardUserDefaults().objectForKey("signupTapped") as? [String: String] ?? [String: String]()
        login = dict
       

    }
    //keyboard convenience stuff
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    //textFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

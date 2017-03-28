//
//  SecondViewController.swift
//  toDoList
//
//  Created by Michael Bharrat on 7/28/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit
var tsk: String = ""
var dscp: String = ""
class SecondViewController: UIViewController, UITextFieldDelegate{
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    //sets storyboard to name storyBoard
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var bottomMenu: UITabBarItem!
    @IBOutlet weak var buttonMenu: UIStackView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var taskField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if selectedDate == true{
            dateLabel.alpha = 1
            dateLabel.text = "Due date:" + dateStrng
        }else{
            dateLabel.alpha = 0
        }
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "check.png")!)
        //set delegates
        descriptionField.delegate = self
        taskField.delegate = self
        if can == true {
            taskField.text = tsk
            descriptionField.text = dscp
            can = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        if selectedDate == true{
            dateLabel.alpha = 1
            dateLabel.text = "Due date:" + dateStrng
        }else{
            dateLabel.alpha = 0
        }

    }
    
    @IBAction func onDate(sender: UIButton) {
        if dateButton.selected == true{
            print("true")
        }else{
            print("false")
            //
        }
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("dateScreen") as? UIViewController
            tsk = taskField!.text!
            dscp = descriptionField!.text!
        self.presentViewController(nextViewController!, animated:true, completion:nil)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    //textFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

    @IBAction func onAdd(sender: UIButton) {
        if taskField.text! == "" {
            alertBlank()
        }else{
        let itemN = ToDoItem(itemName: taskField.text!, descriptionItem: descriptionField.text!, dueDate: dateStrng)
        itemN.addTask(itemN)
        self.view.endEditing(true)
        taskField.text = ""
        descriptionField.text = ""
        selectedDate = false
        self.tabBarController?.selectedIndex = 0
        }
    }
    func alertBlank(){
        let Alert = UIAlertController(title: "No task completed", message: "At least have a title for the task to be added to to-do List", preferredStyle: UIAlertControllerStyle.Alert)
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }

    
    
  }
    
    
  






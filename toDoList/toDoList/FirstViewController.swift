//
//  FirstViewController.swift
//  toDoList
//
//  Created by Michael Bharrat on 7/28/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit
var swap: Bool = false  //switches to add task screen from popup menu
var count: Int = 0
var listing = NSUserDefaults.standardUserDefaults
let lister = NSUserDefaults.standardUserDefaults()
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //let infoList = [String]()!
    //check and edit code here
    
    @IBOutlet weak var tableView: UITableView!
    let textCellIdentifier = "TextCell"
    
//TO CONFORM TO UITABLEVIEWDATASOURCE PROTOCOL
//***************************************************
//THREE METHODS:
//  numberOfSectionsInTableView
//  tableView:numberOfRowsInSection
//  tableView:cellForRowAtIndexPath
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returning to view
    override func viewWillAppear(animated: Bool) {
        
        if swap == true {
            self.tabBarController?.selectedIndex = 1
            swap = false
        }else{
            //arrange toDoList by date
            taskMgr.sortInPlace({ $0.dueDate.compare($1.dueDate) == NSComparisonResult.OrderedAscending })
            tableView.reloadData()
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskMgr[indexPath.row].itemName
        cell.detailTextLabel?.text = taskMgr[indexPath.row].dueDate
        
        return cell
    }
    
    //UITableViewDelegate protocol, not required but some helpful
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        print(taskMgr[row])
    }
    //delete functionality
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.removeAtIndex(indexPath.row)
            tableView.reloadData()
            
        }
    
    }
  



}


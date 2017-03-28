//
//  TaskManager.swift
//  List
//
//  Created by Michael Bharrat on 6/28/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-named"
    var desc = "un-described"
}

class TaskManager: NSObject {
    var tasks = [task]() //creates blank array
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
    func 

}

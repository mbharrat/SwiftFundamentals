//
//  ToDoItem.swift
//  toDoList
//
//  Created by Michael Bharrat on 7/29/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit

var taskMgr =  [ToDoItem]()


class ToDoItem: NSObject{
    
    let itemName: String
    let descriptionItem: String
    let dueDate: String
    init(itemName: String, descriptionItem: String, dueDate: String){
        self.itemName = itemName
        self.descriptionItem = descriptionItem
        self.dueDate = dueDate
    }
    func addTask(item: ToDoItem){
        taskMgr.append(item)
    }


}


//
//  Tag+CoreDataProperties.swift
//  PhotoFeed
//
//  Created by Michael Bharrat on 7/25/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Tag {

    @NSManaged var title: String?
    @NSManaged var images: NSSet?

}

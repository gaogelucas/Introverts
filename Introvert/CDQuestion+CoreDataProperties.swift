//
//  CDQuestion+CoreDataProperties.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CDQuestion {

    @NSManaged var metaTime: Date?
    @NSManaged var question: String?
    @NSManaged var time: String?
    @NSManaged var canceledAnswer: String?
    @NSManaged var answers: NSOrderedSet?

}

//
//  MFForAskVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------持久化数据处理----------------
extension AskViewController {
    func backupQuestion() {
        
    }
    func saveQuestion() {
        let question = NSEntityDescription.insertNewObject(forEntityName: "CDQuestion", into: self.coreDataStack.managedObjectContext) as! CDQuestion
        question.question = self.textView.text
        question.metaTime = Date()
        question.time = transTimeToString(Date())
        coreDataStack.saveContext()
    }
}

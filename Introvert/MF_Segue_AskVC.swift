//
//  MF_Segue_AskVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------Manage Segues----------------
extension AskViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        func cancel() {             //Todo
            self.backupQuestion()
        }
        func done() {               
            // 存储
            saveQuestion()
            
            // 传coreDataStack
            let destinationController = segue.destination as! UINavigationController
            let topController = destinationController.topViewController as! DetailViewController
            topController.coreDataStack = self.coreDataStack
            
            // 传question
            let fetch = NSFetchRequest(entityName: "CDQuestion")
            let results = try! coreDataStack.managedObjectContext.fetch(fetch) as! [CDQuestion]
            let currentQuestion = results.last!
            topController.question = currentQuestion
        }
        
        switch (sender! as! UIBarButtonItem).title! {
        case "取消": cancel()
        case "完成": done()
        default: break
        }
    }
}

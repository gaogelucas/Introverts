//
//  MF_Segue_MVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------Manage Segues----------------
extension MainViewController {
    
    //向segue展开时准备之
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationController: UIViewController?
        
        func showAskView() {
            let destinationController = segue.destination as! UINavigationController
            let topController = destinationController.topViewController as! AskViewController
            topController.statusCode = .newQuestion
            topController.coreDataStack = self.coreDataStack
        }
        
        func showDetailView() {
            let destinationController = segue.destination as! UINavigationController
            let topController = destinationController.topViewController as! DetailViewController
            topController.question = questionSelected!
            topController.coreDataStack = self.coreDataStack
        }
        
        switch segue.identifier! {
        case "newQuestion": showAskView()
        case "showDetail": showDetailView()
        default: break
        }
    }
    
    //从segue返回时接受之
    @IBAction func unwindToHomeScreen(_ segue: UIStoryboardSegue) {
        fetchedResultsController = loadFetchedResultsController(WithContext: coreDataStack.managedObjectContext)
        tableView.reloadData()
    }
    
}


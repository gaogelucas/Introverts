//
//  MF_TableStuffs_MVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------UITableViewDataSource----------
extension MainViewController: UITableViewDataSource {
    //配置Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //取出本cell的内容
        let question = fetchedResultsController.object(at: indexPath) as! CDQuestion
        
        //根据是否有答案，重用相应的cell
        if question.answers!.count == 0 {
            return cellOfIdentifier("MainEmptyCell", forTableView: tableView, withQuestionObject: question) as! MainEmptyCell
        } else {
            return cellOfIdentifier("MainCell", forTableView: tableView, withQuestionObject: question) as! MainCell
        }
    }
    //配置行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionInfo = fetchedResultsController.sections![section]
        return sectionInfo.numberOfObjects
    }
    //配置分区数
    func numberOfSections(in tableView: UITableView) -> Int {
        return fetchedResultsController.sections!.count
    }
    //配置载入效果
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // 淡入淡出效果
        cell.useFadeInEffect()
    }
}
////////ext:----------UITableViewDelegate----------
extension MainViewController: UITableViewDelegate {
    // 点击单元格后的动作
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        questionSelected = (fetchedResultsController.object(at: indexPath) as! CDQuestion)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            //1
            questionSelected = (fetchedResultsController.object(at: indexPath) as! CDQuestion)
            //2
            self.coreDataStack.managedObjectContext.delete(questionSelected!)
            
            //3
            self.coreDataStack.saveContext()
            
            //4
            tableView.deleteRows(at: [indexPath],
                with: UITableViewRowAnimation.automatic)
        }

    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}


//
//  DetailViewController.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

// DetailQuestionCell的View引用的是主视图控制器下MainEmptyCell的View
import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    var question: CDQuestion?
    @IBOutlet var tableView: UITableView!
    var coreDataStack: CoreDataStack!

    override func viewDidLoad() {               //Todo
        super.viewDidLoad()
        title = "问题"
        
        tableView.useDefaultConfigureWhenViewLoad()
        
        print(question?.question!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


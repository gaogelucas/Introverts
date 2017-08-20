//
//  MainViewController.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//
//  用于主界面的VC。

import UIKit
import CoreData
/* MainViewController: UIViewController     
------------INITS:-----------------

viewDidLoad()
    配置导航栏标题
    配置fetchedResultController
    配置tableView的行高
    载入数据

------------PROPERTIES:------------

context                     NSManagedObjectContext      {prepared set get}
fetchedResultsController    NSFetchedResultsController  {set get}
questionSelected            CDQuestion                  {set get}

tableView                   @IBOutlet UITableView

------------FUNCTIONS:-------------

ext: UITableViewDataSource
    tableView(_:cellForRowAtIndexPath:)     //Todo-3
    tableView(_:numberOfRowsInSection:)
    numberOfSectionInTableView(_:)

ext: UITableViewDelegate
    tableView(_:didSelectRowAtIndex:)       //Todo-4

ext: // 管理segues
    prepareForSegue(_:sender:)
    unwindToHomeScreen(_:)

------------TODOS:-----------------


------------全局TODO:---------------

6 整理增删改查的全部业务逻辑
    - 添加问题      完成
    - 修改问题
    - 删除问题
    - 添加回答
    - 修改回答
    - 删除回答

-----------------------------------
*/
class MainViewController: UIViewController {
    /*-----INITS-------------------------*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置导航栏标题
        title = "Introverts"
        
        //载入fetchedResultsController
        fetchedResultsController = loadFetchedResultsController(WithContext: coreDataStack.managedObjectContext)
        
        //配置fetchedResultsControllerDelegate
        fetchedResultsController.delegate = self
        
        //用默认方法配置tableView
        tableView.useDefaultConfigureWhenViewLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*-----PROPERTIES--------------------*/
    var context: NSManagedObjectContext!
    var fetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>!
    var questionSelected: CDQuestion?
    var coreDataStack: CoreDataStack!
    @IBOutlet var tableView: UITableView!
    /*-----END-----------------------------*/
}



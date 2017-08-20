//
//  Middle Funcs.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

/* 添加一些公用的中间方法和属性
------------PROPERTIES:------------



------------FUNCTIONS:-------------

> NSDate转String标准方法
> transTimeToString(time: NSDate) -> String

> 占位方法
> 占位()

> 载入fetchedResultsController
> loadFetchedResultsController(WithContext context: NSManagedObjectContext) -> NSFetchedResultsController

> 设置NavigationBar和StatusBar
> configureNavigationBarAndStatusBar()

> 为UITableViewCell添加淡入效果
> UITableViewCell.useFadeInEffect()

> 为UITableView添加初始配置设置
> UITableView.useDefaultConfigureWhenViewLoad()

> 根据标示符配置Cell
> cellOfIdentifier(identifier: String, forTableView tableView: UITableView, withQuestionObject question: CDQuestion) -> UITableViewCell
-----------------------------------
*/


//用来把记录下来的NSDate时间转换为String类型的文本
func transTimeToString(_ time: Date) -> String {
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }

    return dateFormatter.string(from: time)
}
//用来占位
func 占位() {
    
}
// 设置NavigationBar和StatusBar
func configureNavigationBarAndStatusBar() {
    UINavigationBar.appearance().barTintColor = UIColor(
        red: 54/255.0,
        green: 105/255.0,
        blue: 167/255.0,
        alpha: 1.0)
    UINavigationBar.appearance().tintColor = UIColor.white
    if let barFont = UIFont(name: "Avenir Next", size: 24.0) {
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white,NSFontAttributeName:barFont]
    }
    UIApplication.shared.statusBarStyle = .lightContent
}
// 设置传值状态枚举
enum StatusCode {
    case newQuestion
    case changeQuestion
    case newAnswer
    case changeAnswer
}

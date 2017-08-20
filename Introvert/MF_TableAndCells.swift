//
//  MFForTableAndCells.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit


// 为UITableViewCell添加淡入效果
extension UITableViewCell {
    func useFadeInEffect() {
        self.alpha = 0.0
        UIView.animate(withDuration: 0.3, animations: {self.alpha = 1.0})
    }
}

// 为UITableView添加初始配置设置
extension UITableView {
    func useDefaultConfigureWhenViewLoad() {
        //配置tableView
        self.estimatedRowHeight = 175
        self.rowHeight = UITableViewAutomaticDimension
        //配置footerView
        self.tableFooterView = UIView(frame: CGRect.zero)
        //重载数据
        self.reloadData()
    }
}

// 根据标示符配置Cell
func cellOfIdentifier(_ identifier: String, forTableView tableView: UITableView, withQuestionObject question: CDQuestion) -> UITableViewCell {
    var cell: UITableViewCell?
    
    func mainEmptyCellCase() -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainEmptyCell") as! MainEmptyCell
        cell.configureEmptyCellWithQuestionObject(CDQuestionObject: question)
        return cell
    }
    func mainCellCase() -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainCell
        cell.configureMainCellWithQuestionObject(CDQuestionObject: question)
        return cell
    }
    
    switch identifier {
    case "MainEmptyCell": cell = mainEmptyCellCase()
    case "MainCell": cell = mainCellCase()
    default: break
    }
    return cell!

}

func cellForDetailAnswerCell(forTableView tableView: UITableView, withQuestionObject question: CDQuestion, forIndexPathRow row: Int?) -> UITableViewCell {

    func detailAnswerCellCase() -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailAnswerCell") as! DetailAnswerCell
        cell.configureDetailAnswerCellWithQuestionObject(CDQuestionObject: question, indexPathRow: row!)
        return cell
    }
    
    return detailAnswerCellCase()

}


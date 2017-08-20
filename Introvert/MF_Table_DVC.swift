//
//  MF_Table_DVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            return cellOfIdentifier("MainEmptyCell", forTableView: tableView, withQuestionObject: question!) as! MainEmptyCell
        } else {
            return cellForDetailAnswerCell(forTableView: tableView, withQuestionObject: question!, forIndexPathRow: indexPath.row) as! DetailAnswerCell
        }

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(question!.answers!.count)
        return question!.answers!.count + 1
    }
}

extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {            //Todo
    }
}


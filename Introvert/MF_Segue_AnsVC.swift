//
//  MF_Segue_AnsVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

extension AnswerViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        func cancel() {                                         //Todo
            //备份
        }
        func done() {                                           //Todo
            //存储
        }
        switch (sender! as! UIBarButtonItem).title! {
        case "取消": cancel()
        case "完成": done()
        default: break
        }
    }
}

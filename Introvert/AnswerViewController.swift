//
//  AnswerViewController.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

class AnswerViewController: UIViewController {
    
    var statusCode: StatusCode?
    @IBOutlet var textView: UITextView!
    var coreDataStack: CoreDataStack!


    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置标题
        switch statusCode! {
        case .changeAnswer: title = "编辑答案"
        case .newAnswer: title = "新答案"
        default: break
        }
        
        // 设置textViewDelegate为self
        textView.delegate = self
        
        // 设置textView初始化
        // Todo: 尚未设置备份                                         // Todo-1
        textView.text = "请在这里写下新问题..."
        textView.textColor = UIColor.lightGray

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

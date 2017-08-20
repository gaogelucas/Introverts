//
//  AskViewController.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

/* Todo:
1 设置备份载入时的判断
2 修改问题时的状态
*/
import UIKit
import CoreData

class AskViewController: UIViewController {

    var statusCode: StatusCode?
    @IBOutlet var textView: UITextView!
    @IBOutlet var done: UIBarButtonItem!
    var coreDataStack: CoreDataStack!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置标题
        switch statusCode! {
        case .changeQuestion: title = "编辑问题"
        case .newQuestion: title = "新问题"
        default: break
        }
        
        // 设置textViewDelegate为self
        textView.delegate = self
        
        // 设置textView初始化
        // Todo: 尚未设置备份                                         // Todo-1
        textView.text = "请在这里写下新问题..."
        textView.textColor = UIColor.lightGray
        
        // 设置默认Done按钮不可用
        done.isEnabled = false
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


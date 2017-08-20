//
//  MF_TextView_AnsVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------TextViewDelegate-------------
extension AnswerViewController: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if textView.text == "请在这里写下新问题..." {
            textView.text = ""
            textView.textColor = UIColor.black
        }
        return true
    }
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        if textView.text == "" {
            textView.text = "请在这里写下新问题..."
            textView.textColor = UIColor.lightGray
        }
        return true
    }
}


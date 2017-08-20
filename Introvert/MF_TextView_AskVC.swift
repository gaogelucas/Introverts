//
//  MF_TextView_AskVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

////////ext:----------TextViewDelegate-------------
extension AskViewController: UITextViewDelegate {
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
    func textViewDidChange(_ textView: UITextView) {
        if textView.text != "" && textView.text != "请在这里写下新问题..."{
            done.isEnabled = true
        } else {
            done.isEnabled = false
        }
    }
}



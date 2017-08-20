//
//  MF_Segue_DVC.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/6.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit
import CoreData

extension DetailViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender! as! UIBarButtonItem).title! == "回答" {
            let nvc = segue.destination as! UINavigationController
            let topController = nvc.topViewController! as! AnswerViewController
            topController.statusCode = .newAnswer
            topController.coreDataStack = self.coreDataStack
        }
    }
    
    @IBAction func unwindToDetailView(_ segue: UIStoryboardSegue) {
        
    }
}

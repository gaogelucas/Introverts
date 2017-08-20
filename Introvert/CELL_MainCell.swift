//
//  MainCell.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//
//  用于主界面中有答案的Cell。

import UIKit
/* MainCell: UITableViewCell
------------INITS:-----------------

awakeFromNib()

------------PROPERTIES:------------

indicator       @IBOutlet UIImageView
questionLabel   @IBOutlet UILabel
answerLabel     @IBOutlet UILabel
timeLabel       @IBOutlet UILabel

------------FUNCTIONS:-------------

// 配置选中状态
setSelected(_:animated:)

// 给予Cell配置自己的能力
configureMainCellWithQuestionObject(_:)

-----------------------------------
*/
class MainCell: UITableViewCell {
    
    /*-----INITS-------------------------*/
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    /*-----PROPERTIES--------------------*/
    @IBOutlet weak var indicator: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    /*-----FUNCTIONS-----------------------*/
    // 配置选中状态
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    // 给予Cell配置自己的能力
    func configureMainCellWithQuestionObject(CDQuestionObject question: CDQuestion) {
        self.questionLabel.text = question.question!
        self.answerLabel.text = (question.answers!.lastObject as! CDAnswer).answer!
        self.indicator.image = nil
        self.timeLabel.text = question.time!
    }
    /*-----END-----------------------------*/

}

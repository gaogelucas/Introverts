//
//  MainEmptyCell.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//
//  用于主界面中没有答案的Cell。

import UIKit

/* MainEmptyCell: UITableViewCell
------------INITS:-----------------

awakeFromNib()

------------PROPERTIES:------------

indicator       @IBOutlet UIImageView
questionLabel   @IBOutlet UILabel
timeLabel       @IBOutlet UILabel

------------FUNCTIONS:-------------

// 配置选中状态
setSelected(_:animated:)

// 给予Cell配置自己的能力
configureEmptyCellWithQuestionObject(_:)

-----------------------------------
*/

class MainEmptyCell: UITableViewCell {

    /*-----INITS-------------------------*/
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    /*-----PROPERTIES--------------------*/
    @IBOutlet weak var indicator: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    /*-----FUNCTIONS-----------------------*/
    // 配置选中状态
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    // 给予Cell配置自己的能力
    func configureEmptyCellWithQuestionObject(CDQuestionObject question: CDQuestion) {
        self.questionLabel.text = question.question!
//        self.indicator.image = UIImage(named: "indicator")
        self.indicator.image = nil
        self.timeLabel.text = question.time!
    }
    /*-----END-----------------------------*/

}

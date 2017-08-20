//
//  DetailAnswerCell.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit

class DetailAnswerCell: UITableViewCell {       //Todo

    
    @IBOutlet weak var indicator: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configureDetailAnswerCellWithQuestionObject(CDQuestionObject question: CDQuestion, indexPathRow: Int) {
        let answer = (question.answers![indexPathRow - 1] as! CDAnswer)
        self.answerLabel.text = answer.answer!
        self.indicator.image = nil
        self.timeLabel.text = answer.time!
    }

}

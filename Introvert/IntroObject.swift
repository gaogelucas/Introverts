//
//  IntroObject.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit

/* IntroObject: NSObject
------------INITS:-----------------

// 初始化对象，同时提出新问题
init(withNewQuestionWithtring newQuestion: String) {}

------------PROPERTIES:------------

question:           Question    {get}
answers:            [Answer]    {get}
numberOfAnswers:    Int         {get}
hasBeenAnswered:    Bool        {get}

private _question:  Question    {private set get}
private _answer:    [Answer]    {private set get}

------------FUNCTIONS:-------------

// 修改问题
changeQuestion(toString newQuestion: String) {}

// 添加答案
addAnswer(withString newAnswer: String) {}

// 修改答案
changeAnswer(ofIndex index: Int, toAnswerWithString newAnswer: String) {}

// 删除答案
deleteAnswer(deletedAnswer: Answer) {}

-----------------------------------
*/
class IntroObject: NSObject {
    
    /*-----INITS-------------------------*/

    // 初始化对象，同时提出新问题
    init(withNewQuestionWithString newQuestion: String) {
        self._question = Question(withNewQuestionWithString: newQuestion)
    }
    
    /*-----PROPERTIES--------------------*/
    
    // 问题: 需要主动初始化
    lazy var question: Question = {
        return self._question
    }()
    
    // 答案集合: 调用private _answers
    lazy var answers: [Answer] = {
        return self._answers
    }()
    
    // 有多少答案: 惰性加载
    lazy var numberOfAnswers: Int = {
        return self.answers.count
    }()
    
    // 是否回答过: 惰性加载
    lazy var hasBeenAnswered: Bool = {
        return (!self._answers.isEmpty)
    }()
    
    /*-----PRIVATE_PROPERTIES--------------*/
    
    // private _question
    fileprivate var _question: Question
    
    // private _answers
    fileprivate var _answers: [Answer] = []
    
    /*-----FUNCTIONS-----------------------*/
    
    // 修改问题
    func changeQuestion(toString newQuestion: String) {
        self._question.changeQuestion(toString: newQuestion)
    }
    
    // 添加答案
    func addAnswer(withString newAnswer: String) {
        self._answers.append(Answer(withNewAnswerWithString: newAnswer))
    }
    
    // 修改答案
    func changeAnswer(ofIndex index: Int, toAnswerWithString newAnswer: String) {
        self._answers[index].changeAnswer(toString: newAnswer)
    }
    
    // 删除答案
    func deleteAnswer(_ deletedAnswer: Answer) {
        _answers.remove(at: _answers.index(of: deletedAnswer)!)
    }
    
    /*-----END-----------------------------*/
    
}

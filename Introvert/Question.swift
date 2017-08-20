//
//  Question.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit

/* Question: NSObject
------------INITS:-----------------

init(withNewQuestionWithString newQuestion: String) {}

------------PROPERTIES:------------

question:           String      {get}
time:               String      {get}
metaTime:           NSDate      {get}

private _question:  String      {private set get}
private _time:      String      {private set get}
private _metaTime:  NSDate      {private set get}

------------FUNCTIONS:-------------

changeQuestion(toString newQuestion: String) {}

------------END:-------------------
*/
class Question: NSObject {
    
    /*-----INITS-------------------------*/
    
    init(withNewQuestionWithString newQuestion: String) {
        self._question = newQuestion
    }
    
    /*-----PROPERTIES--------------------*/

    var question: String! {
        return _question
    }
    
    var time: String! {
        return self._time
    }
    
    var metaTime: Date! {
        return _metaTime
    }
    
    /*-----PRIVATE_PROPERTIES-------------*/

    fileprivate var _question: String {
        didSet {
            self._metaTime = Date()
        }
    }
    
    fileprivate var _time: String!
    
    fileprivate var _metaTime: Date! {
        didSet {
            self._time = transTimeToString(self._metaTime)
        }
    }
    
    /*-----FUNCTIONS----------------------*/

    func changeQuestion(toString newQuestion: String) {
        self._question = newQuestion
        self._metaTime = Date()
    }
    
    /*-----END----------------------------*/
    
}

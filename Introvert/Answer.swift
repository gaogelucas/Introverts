//
//  Answer.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit

/* Answer: NSObject
------------INITS:-----------------

init(withNewAnswerWithString newAnswer: String) {}

------------PROPERTIES:------------

answer:             String      {get}
time:               String      {get}
metaTime:           NSDate      {get}

private _answer:    String      {private set get}
private _time:      String      {private set get}
private _metaTime:  NSDate      {private set get}

------------FUNCTIONS:-------------

changeAnswer(toString newAnswer: String) {}

-----------------------------------
*/
class Answer: NSObject {
    
    /*-----INITS-------------------------*/
    
    init(withNewAnswerWithString newAnswer: String) {
        self._answer = newAnswer
    }
    
    /*-----PROPERTIES--------------------*/
    
    var answer: String! {
        return _answer
    }
    
    var time: String! {
        return self._time
    }
    
    var metaTime: Date! {
        return _metaTime
    }
    
    /*-----PRIVATE_PROPERTIES-------------*/
    
    fileprivate var _answer: String {
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
    
    func changeAnswer(toString newAnswer: String) {
        self._answer = newAnswer
        self._metaTime = Date()
    }
    
    /*-----END----------------------------*/
}

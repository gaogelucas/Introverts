//
//  Sample Data.swift
//  Introvert
//
//  Created by 张高歌 on 15/12/4.
//  Copyright © 2015年 weIntroverts. All rights reserved.
//

import UIKit

class SampleData: NSObject {
    
    override init() {
        super.init()
        
        let introObject1 = IntroObject(withNewQuestionWithString: "我应该如何协调编程与FRM考试之间的关系呢？")
        introObject1.addAnswer(withString: "我也不知道应该怎么协调编程与FRM考试之间的关系。这两件事之间的差别实在太大了。如果我专心编程，那么我很可能无法通过FRM以及其他考试。我还得再想想。")
        introObject1.addAnswer(withString: "也许我可以采取我的\"日拱一卒，持续推进\"策略，每天学习一部分FRM相关的内容，完成指定时间的学习之后，我再开始我的编程生涯。")
        
        let introObject2 = IntroObject(withNewQuestionWithString: "生活在他处还是在此处？白日放歌须纵酒，青春作伴好还乡。此处的青春应该指的真的是春天，那么白日指的是什么？我可以永葆青春吗？有没有现实的可能？")
        
        dataStore.append(introObject1)
        dataStore.append(introObject2)
    }
    
    var dataStore: [IntroObject] = []

}
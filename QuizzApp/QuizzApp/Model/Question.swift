//
//  Question.swift
//  QuizzApp
//
//  Created by Stan on 01/08/2021.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q: String, a: String) {
        text  = q
        answer = a
    }
}

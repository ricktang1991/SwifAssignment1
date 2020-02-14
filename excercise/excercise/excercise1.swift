//
//  excercise1.swift
//  excercise
//
//  Created by 桑染 on 2020-02-12.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func permutations(_ word: String ,_ soFar: String = "") {
    if word.count == 0 {
        print(soFar)
    } else {
        for i in 0..<word.count {
            let ch = word[i]
            permutations(word[0, i] + word[i+1, word.count], soFar + ch)
        }
    }
}

func evaluateHelper(_ expr: String, _ index: inout Int) -> Int {
    if Character(expr[index]).isNumber {
        return Int(expr[index])!
    } else if Character(expr[index]) == "(" {
        index += 1
    }
    
    
    return 0
}

func evaluate(_ mathExpression: String) -> Int {
    var index = 0
    return evaluateHelper(mathExpression, &index)
}




















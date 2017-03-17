//
//  TipCalculator.swift
//  Swift-Project-04
//
//  Created by 耿功发 on 2017/3/16.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import Foundation

class TipCalculator {
    
    func calculatorTip(amount: Float, tip: Float) -> Float {
        return amount * tip
    }
    
    func calculatorTotal(amount: Float, tip: Float) -> Float {
        return amount * (1 + tip)
    }
}

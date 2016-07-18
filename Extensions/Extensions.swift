//
//  Extensions.swift
//  Extensions
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    var pigLatin: String {
        return pigifyString(self)
    }
    
    var points: Int {
        return calculatePoint(self)
    }
    
    var unicornLevel: String {
        var returnString: String = ""
        for character in self.characters {
            if character != " " {
                returnString = returnString + String("🦄")
            }
        }
        return returnString
    }
    
    func whisper() -> String {
        return self.lowercaseString
        
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    func calculatePoint(string: String) -> Int {
        var total: Int = 0
        let vowelsArray: [String] = ["A", "E", "I", "O", "U"]
        for letter in string.characters {
            if vowelsArray.contains(String(letter)) {
                total += 2
            } else {
                total += 1
            }
        }
        return total
    }
    
    func pigifyString(string: String) -> String {
        var newString: String = "\(string)ay"
        return newString
    }
}


extension Int {
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return half()
    }
    func half() -> Int {
        return self / 2
    }
    
    func isDivisibleBy(divisor: Int) -> Bool {
        if self % divisor == 0 {
            return true
        }
        return false
    }
    
    func square() {
    }
}
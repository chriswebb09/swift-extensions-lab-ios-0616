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
        return "Pig"
    }
    
    var points: Int {
        return calculatePoint(self)
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
}
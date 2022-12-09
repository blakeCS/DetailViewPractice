//
//  conditionalLogic.swift
//  SwiftUI-List-Starter
//
//  Created by Madeline Burton on 12/4/22.
//

import Foundation
import SwiftUI

// Funciton to change the color of the bookmark
func bookmarkColor(count: Int, mode: ColorScheme) -> Color {
        // If count is 0 and light mode
        if (mode == .light && count == 0){
            return .black
        }
        // If the count is 0 and darkmode return white
        else if count == 0{
            return .white
        }
        // If count is 1 return blue
        else if count == 1 {
            return .blue
        }
        
        // If count is 2 return red
        else {
            return .red
        }
    
}


func updateCount(count: Int) -> Int{
    // Cycle count through the three colors
    return (count + 1) % 3
    
    //      Expected student code
    //    var newCount = count + 1
    //    if newCount > 2 {
    //        newCount = 0
    //    }
    //    return newCount
}

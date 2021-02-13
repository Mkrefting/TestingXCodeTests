//
//  searches.swift
//  TestingTests
//
//  Created by Max Krefting on 29/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import Foundation

class Searching{

    func linearSearch(list:[Int],target:Int)->Bool{
        for item in list{
            if item == target{
                return true
            }
        }
        return false
    }

    
    func binarySearch(list:[Int],target:Int)->Bool{
        var found = false
        var start = 0
        var end = list.count
        
        while start < end && !found{
            
            let mid = Int((start+end)/2)
            
            if list[mid] == target{
                found = true
            } else if list[mid] > target{
                end = mid-1
            } else if list[mid] < target{
                start = mid+1
            }
        }
        return found
        
    }
}

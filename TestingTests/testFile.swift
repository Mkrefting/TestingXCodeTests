//
//  testFile.swift
//  TestingTests
//
//  Created by Max Krefting on 28/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import Foundation

class testFileClass {
    
    func sayHello()->String{
        return "Hello Max"
    }
    
    func addThreeNs(x:Int,y:Int,z:Int)->Int{
        return x+y+z
    }
    
    
    func linearSearch(target:Int,list:[Int])->Bool{
        for item in list{
            if item == target{
                return true
            }
        }
        return false
    }
    
}

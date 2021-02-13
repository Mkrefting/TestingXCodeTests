//
//  sorts.swift
//  TestingTests
//
//  Created by Max Krefting on 29/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import Foundation

class Sorting{
 
    func bubbleSort(list:[Int])->[Int]{
        var list = list
        var flag = true
        var pass = 0
        let length = list.count
        while flag && pass < length-1{
            flag = false
            for i in 0...length-pass-2{
                print(pass,i)
                if list[i] > list[i+1]{
                    let temp = list[i]
                    list[i] = list[i+1]
                    list[i+1] = temp
                    flag = true
                }
            }
            pass += 1
        }
        return list
    }
    
    func merge(left:[Int],right:[Int]) -> [Int] {
        var mergedList = [Int]()
        var left = left
        var right = right
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                mergedList.append(left.removeFirst())//left.removeFirst() returns the first item of left, i.e. to be appended to mergeList, but also removes the first item of left
            } else {
                mergedList.append(right.removeFirst())
            }
        }

        return mergedList + left + right
    }

    func mergeSort(list:[Int]) -> [Int] {
        guard list.count > 1 else {
            return list
        }
        
        let leftList = Array(list[0..<list.count/2])
        let rightList = Array(list[list.count/2..<list.count])
        
        return merge(left: mergeSort(list:leftList), right: mergeSort(list:rightList))
    }
    
    func insertionSort(list:[Int])->[Int]{
        var toSort = list
        var boundary = 0
        for item in toSort{
            var positioned = false
            var pos = boundary
            while !positioned && pos > 0{
                if item < list[pos-1]{
                    toSort[pos] = toSort[pos-1]
                } else {positioned = true}
                pos -= 1
            }
            toSort[pos] = item
            boundary += 1
        }
        return toSort
    }
    
    func quickSort(list:[Int])->[Int]{
        return list
    }
    
}

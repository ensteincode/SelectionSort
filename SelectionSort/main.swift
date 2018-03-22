//
//  main.swift
//  SelectionSort
//
//  Created by Ensteincode on 06/03/18.
//

import Foundation

print("Demo of Selection Sort")

func selectionSort<T: Comparable>(arrayToSort: inout [T]) {
    
    for i in 0..<arrayToSort.count {
        var minIndex = i
        for j in (i + 1)..<arrayToSort.count {
            if arrayToSort[j] < arrayToSort[minIndex] {
                minIndex = j
            }
        }
        let temp = arrayToSort[minIndex]
        arrayToSort[minIndex] = arrayToSort[i]
        arrayToSort[i] = temp
    }
}

var array = [Int]()
for _ in 0...10 {
    array.append(Int(arc4random_uniform(100)))
}

print("Not Unsorted array \(array)")
selectionSort(arrayToSort: &array)
print("Sorted array \(array)")



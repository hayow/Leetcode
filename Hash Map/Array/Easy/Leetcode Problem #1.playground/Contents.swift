




/*

 Link: https://leetcode.com/problems/two-sum/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(n^2), n == array.count
 Space complexity: O(1)
 
*/



func approach1(_ array: [Int], _ target: Int) -> [Int] {
    
    for i in 0..<array.count {
        for j in 1 + i..<array.count {
            if array[i] + array[j] == target { return [i, j] }
        }
    }
    
    return []
}





/*

 Approach: 2
 Method: Iteration (optimized using 2-pointer)
 Time complexity: O(nlogn), n == array.count
 Space complexity: O(m + n), m == array.count, n == m
 
*/



func approach2(_ array: [Int], _ target: Int) -> [Int] {
    let sortedArray: [Int] = array.sorted()
    
    var leftSidePointer: Int = 0
    var rightSidePointer: Int = sortedArray.count - 1
    
    while leftSidePointer < rightSidePointer {
        if sortedArray[leftSidePointer] + sortedArray[rightSidePointer] == target {
            return [leftSidePointer, rightSidePointer]
        } else if sortedArray[leftSidePointer] + sortedArray[rightSidePointer] < target {
            leftSidePointer = leftSidePointer + 1
        } else {
            rightSidePointer = rightSidePointer - 1
        }
    }
    
    return []
}





/*

 Approach: 3
 Method: Iteration (optimized using hash map)
 Time complexity: O(n), n == array.count
 Space complexity: O(n), n == complements.count
 
*/



func approach3(_ array: [Int], _ target: Int) -> [Int] {
    var complements: [Int: Int] = [:]
    
    for j in 0..<array.count {
        if let i: Int = complements[target - array[j]] {
            return [i, j]
        } else {
            complements[array[j]] = j
        }
    }

    return []
}






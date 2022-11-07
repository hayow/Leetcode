




/*

 Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(n*n), n == array.count
 Space complexity: O(1)
 
*/



func approach1(_ array: [Int]) -> Int {
    var maximumProfit: Int = 0
    
    for entry in 0..<array.count {
        
        for exit in 1 + entry..<array.count {
            maximumProfit = max(maximumProfit, array[exit] - array[entry])
        }
    }
    
    return maximumProfit
}





/*

 Approach: 2
 Method: Iteration (optimized using 2-pointer)
 Time complexity: O(n), n == array.count
 Space complexity: O(1)
 
*/



func approach2(_ array: [Int]) -> Int {
    var maximumProfit: Int = 0
    var entry: Int = 0
    
    for exit in 0..<array.count {
        if array[entry] > array[exit] { entry = exit }
        maximumProfit = max(maximumProfit, array[exit] - array[entry])
    }
    
    return maximumProfit
}






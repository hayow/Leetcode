




/*

 Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(n*n), n == array.count
 Space complexity: O(2)
 
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






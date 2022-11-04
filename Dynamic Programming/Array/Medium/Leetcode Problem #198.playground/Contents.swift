




/*

 Link: https://leetcode.com/problems/house-robber/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(2^n), n == height of the recursive tree
 Space complexity: O(n), n == height of the recursive tree
 
*/



func approach1(_ array: [Int]) -> Int {
    if array.isEmpty {
        return 0
    } else if array.count == 1 {
        return array[0]
    } else if array.count == 2 {
        return max(array[0], array[1])
    } else {
        return max(array[0] + approach1(Array(array[2..<array.count])), approach1(Array(array[1..<array.count])))
    }
}






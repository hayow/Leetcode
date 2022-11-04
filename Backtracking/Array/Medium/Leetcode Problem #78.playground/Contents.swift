




/*

 Link: https://leetcode.com/problems/subsets/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(2^n), n == array.count
 Space complexity: O(2^n), n == height of the recursive tree == array.count
 
*/



func approach1(_ array: [Int]) -> [[Int]] {
    
    func helper(_ array1: [Int], _ array2: [Int]) -> [[Int]] {
        if array1.isEmpty {
            
            return [array2]
        } else {
            var subsets: [[Int]] = helper(Array(array1[1..<array1.count]), array2)
            subsets = subsets + helper(Array(array1[1..<array1.count]), [array1[0]] + array2)
            
            return subsets
        }
    }
    
    return helper(array, [])
}






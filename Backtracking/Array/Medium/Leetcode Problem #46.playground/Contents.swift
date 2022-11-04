




/*

 Link: https://leetcode.com/problems/permutations/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(n!), n == array.count
 Space complexity: O(n!), n == height of the recursive tree == array.count
 
*/



func approach1(_ array: [Int]) -> [[Int]] {
    func helper(_ array1: [Int], _ array2: [Int]) -> [[Int]] {
        if array1.isEmpty {
            return [array2]
        } else {
            var permutations: [[Int]] = []
            let elementAtFirstIndex: Int = array1[0]
            let newArray1: [Int] = Array(array1[1..<array1.count])
                
            for i in 0...array2.count {
                let prefix: [Int] = Array(array2[0..<i])
                let suffix: [Int] = Array(array2[i..<array2.count])
                permutations = permutations + helper(newArray1, prefix + [elementAtFirstIndex] + suffix)
            }
            return permutations
        }
    }
    return helper(array, [])
}






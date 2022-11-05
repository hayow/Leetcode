




/*

 Link: https://leetcode.com/problems/combinations/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(2^n), n == height of the recursive tree == integer/array.count
 Space complexity: O(n!/(k!(n - k)!)), n == integer/array.count, k == array2.count
 
*/



func approach1(_ integer: Int, _ k: Int) -> [[Int]] {
    var array: [Int] = []
    for _integer in 1...integer { array.append(_integer) }

    func helper(_ array1: [Int], _ array2: [Int]) -> [[Int]] {
        if array1.isEmpty {
            return [array2]
        } else {
            var result: [[Int]] = helper(Array(array1[1..<array1.count]), array2)
            result = result + helper(Array(array1[1..<array1.count]), [array1[0]] + array2)
                
            return result
        }
    }
        
    return helper(array, []).filter { array -> Bool in return array.count == k }
}





/*

 Approach: 2
 Method: Recursion (optimized)
 Time complexity: O(2^k), k == array2.count
 Space complexity: O(n!/(k!(n - k)!)), n == integer/array.count, k == array2.count
 
*/



func approach2(_ integer: Int, _ k: Int) -> [[Int]] {
    var array: [Int] = []
    for _integer in 1...integer { array.append(_integer) }
    
    func helper(_ array1: [Int], _ array2: [Int]) -> [[Int]] {
        if array2.count == k {
            return [array2]
        } else {
            var result: [[Int]] = []
            
            for i in 0..<array1.count {
                result = result + helper(Array(array1[i + 1..<array1.count]), array2 + [array1[i]])
            }
            
            return result
        }
    }
    return helper(array, [])

}






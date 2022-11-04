




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





/*

 Approach: 2
 Method: Recursion + Memoization
 Time complexity: O(n), n == height of the recursive tree
 Space complexity: O(n), n == height of the recursive tree
 
*/



func approach2(_ array: [Int]) -> Int {
    var cache: [Int: Int] = [:]
    func helper(_ _array: [Int]) -> Int {
        if _array.isEmpty {
            return 0
        } else if let cachedValue: Int = cache[0] {
            return cachedValue
        } else if _array.count == 1 {
            return _array[0]
        } else if _array.count == 2 {
            return max(_array[0], _array[1])
        } else {
            cache[0] = max(_array[0] + helper(Array(_array[2..<_array.count])), helper(Array(_array[1..<_array.count])))
            return cache[0] ?? 0
        }
    }
    
    return helper(array)
}






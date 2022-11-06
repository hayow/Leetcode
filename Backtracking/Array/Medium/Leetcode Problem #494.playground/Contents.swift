




/*

 Link: https://leetcode.com/problems/target-sum/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(2^n), n == array.count
 Space complexity: O(n), n == height of the recursive tree == array.count
 
*/



func approach1(_ array: [Int], _ target: Int) -> Int {
    
    func helper(_ _array: [Int], _ _target: Int, _ index: Int) -> Int {
        if index == -1 {
            if _target == 0 {
                return 1
            } else {
                return 0
            }
        } else {
        
            return helper(_array, _target - _array[index], index - 1) + helper(_array, _target + _array[index], index - 1)
        }
    }
    
    return helper(array, target, array.count - 1)
}






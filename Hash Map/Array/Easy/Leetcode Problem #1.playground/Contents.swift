




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






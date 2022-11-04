




/*

 Link: https://leetcode.com/problems/climbing-stairs/description/
 
*/





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(2^n), n == height of the recursive tree
 Space complexity: O(n), n == height of the recursive tree
 
*/



func approach1(_ steps: Int) -> Int {
    if steps == -1 {
        return 0
    } else if steps == 0 {
        return 1
    } else {
        return approach1(steps - 1) + approach1(steps - 2)
    }
}






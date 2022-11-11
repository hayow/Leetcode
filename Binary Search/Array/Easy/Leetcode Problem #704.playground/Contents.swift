




/*

 Link: https://leetcode.com/problems/binary-search/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(nlogn), n == array.count
 Space complexity: O(1)
 
*/



func approach1(_ array: [Int], _ target: Int) -> Int {
    var startIndex: Int = 0
    var endIndex: Int = array.count - 1


    while startIndex <= endIndex {
        let middleIndex: Int = (startIndex + endIndex) / 2
        if array[middleIndex] == target {
            return middleIndex
        } else if array[middleIndex] < target {
            startIndex = middleIndex + 1
        } else {
            endIndex = middleIndex - 1
        }
    }

    return -1
}






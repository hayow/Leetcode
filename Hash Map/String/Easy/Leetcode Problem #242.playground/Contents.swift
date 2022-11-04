




/*

 Link: https://leetcode.com/problems/valid-anagram/description/
 
*/





/*

 Approach: 1
 Method: NA
 Time complexity: O(nlogn), n == max(string1.count, string2.count)
 Space complexity: O(m + n), m == string1.count, n == string2.count
 
*/



func approach1(_ string1: String, _ string2: String) -> Bool {
    let sortedString1: String = String(string1.sorted())
    let sortedString2: String = String(string2.sorted())
    
    return sortedString1 == sortedString2
}






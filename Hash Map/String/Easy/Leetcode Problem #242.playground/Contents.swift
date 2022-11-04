




/*

 Link: https://leetcode.com/problems/valid-anagram/description/
 
*/





/*

 Approach: 1
 Method: NA
 Time complexity: O(nlogn + mlogm), m == string1.count, n == string2.count
 Space complexity: O(m + n), m == string1.count, n == string2.count
 
*/



func approach1(_ string1: String, _ string2: String) -> Bool {
    let sortedString1: String = String(string1.sorted())
    let sortedString2: String = String(string2.sorted())
    
    return sortedString1 == sortedString2
}





/*

 Approach: 2
 Method: Iteration
 Time complexity: O(m + n), m == string1.count, n == string2.count
 Space complexity: O(m + n), m == string1.count, n == string2.count
 
*/



func approach2(_ string1: String, _ string2: String) -> Bool {
    var string1HashMap: [Character: Int] = [:]
    var string2HashMap: [Character: Int] = [:]
    
    for character in string1 {
        if let count: Int = string1HashMap[character] {
            string1HashMap[character] = count + 1
        } else {
            string1HashMap[character] = 1
        }
    }
    
    for character in string2 {
        if let count: Int = string2HashMap[character] {
            string2HashMap[character] = count + 1
        } else {
            string2HashMap[character] = 1
        }
    }
    
    return string1HashMap == string2HashMap
}






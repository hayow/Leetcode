




/*

 Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(m^2 * (n + p)), m == string.count, n == i...j, p == n
 Space complexity: O(m + n + p), m == _string.count, n == characterSet.count, p == currentSubstring
 
*/



func approach1(_ string: String) -> Int {
    
    func containsDuplicate(_ _string: String) -> Bool {
        var characterSet: Set<Character> = Set()
        for character in _string {
            if characterSet.contains(character) {
                return true
            } else {
                characterSet.insert(character)
            }
        }
        return false
    }
    
    var longestSubstringWithUniqueCharacters: Int = 0
    
    for i in 0..<string.count {
        for j in i..<string.count {
            var currentSubstring: String = String()
            for k in i...j {
                currentSubstring.append(string[string.index(string.startIndex, offsetBy: k)])
            }
            
            if containsDuplicate(currentSubstring) == false {
                longestSubstringWithUniqueCharacters = max(longestSubstringWithUniqueCharacters, currentSubstring.count)
            }
        }
    }
    
    return longestSubstringWithUniqueCharacters
}











/*

 Link: https://leetcode.com/problems/valid-parentheses/description/
 
*/





/*

 Approach: 1
 Method: Iteration
 Time complexity: O(n), n == string.count
 Space complexity: O(n), n == parenthesesStack.count
 
*/



func approach1(_ string: String) -> Bool {
    let parenthesesMap: [Character: Character] = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    var parenthesesStack: [Character] = []
    
    for parenthese in string {
        
        if let _parenthese: Character = parenthesesMap[parenthese] {
            if parenthesesStack.isEmpty == false && parenthesesStack[parenthesesStack.count - 1] == _parenthese {
                parenthesesStack.removeLast()
            } else {
                return false
            }
        } else {
            parenthesesStack.append(parenthese)
        }
    }
    
    return parenthesesStack.isEmpty
}











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
    let parenthesisMap: [Character: Character] = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    var parenthesisStack: [Character] = []
    
    for parenthesis in string {
        
        if let _parenthesis: Character = parenthesisMap[parenthesis] {
            if parenthesisStack.isEmpty == false && parenthesisStack[parenthesisStack.count - 1] == _parenthesis {
                parenthesisStack.removeLast()
            } else {
                return false
            }
        } else {
            parenthesisStack.append(parenthesis)
        }
    }
    
    return parenthesisStack.isEmpty
}






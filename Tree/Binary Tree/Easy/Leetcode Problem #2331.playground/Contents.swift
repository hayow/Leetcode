




/*

 Link: https://leetcode.com/problems/evaluate-boolean-binary-tree/description/
 
*/





// Node class
class TreeNode {
    var value: Int
    var leftChild, rightChild: TreeNode?
    
    init(_ value: Int, _ leftChild: TreeNode? = nil, _ rightChild: TreeNode? = nil) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(t), t == size of tree
 Space complexity: O(t), t == height of tree
 
*/



func approach1(_ root: TreeNode?) -> Bool {
    if root?.value == 0 {
        return false
    } else if root?.value == 1 {
        return true
    } else {
        return root?.value == 2 ? approach1(root?.leftChild) || approach1(root?.rightChild): approach1(root?.leftChild) && approach1(root?.rightChild)
    }
}






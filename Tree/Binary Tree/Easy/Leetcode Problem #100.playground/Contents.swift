




/*

 Link: https://leetcode.com/problems/same-tree/description/
 
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
 Time complexity: O(t1 + t2), t1 == size of tree1, t2 == size of tree2
 Space complexity: O(t1 + t2), t1 == height of tree1, t2 == height of tree2
 
*/



func approach1(_ tree1: TreeNode?, _ tree2: TreeNode?) -> Bool {
    if tree1 == nil && tree2 == nil {
        return true
    } else if tree1 == nil || tree2 == nil {
        return false
    } else if tree1?.value != tree2?.value {
        return false
    } else {
        return approach1(tree1?.leftChild, tree2?.leftChild) && approach1(tree1?.rightChild, tree2?.rightChild)
    }
}






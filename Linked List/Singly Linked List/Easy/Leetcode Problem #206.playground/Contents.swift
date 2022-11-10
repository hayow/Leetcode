




/*

 Link: https://leetcode.com/problems/reverse-linked-list/description/
 
*/




// Node class
class SinglyLinkedListNode {
    var element: Int
    var next: SinglyLinkedListNode?
    
    init(element: Int, next: SinglyLinkedListNode? = nil) {
        self.element = element
        self.next = next
    }
}





/*

 Approach: 1
 Method: Recursion
 Time complexity: O(n), n == length of the linked list
 Space complexity: O(n), n == length of the linked list
 
*/



func approach1(_ head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    guard let _: SinglyLinkedListNode = head?.next else { return head }
    
    let newHead: SinglyLinkedListNode? = approach1(head?.next)
    head?.next?.next = head
    head?.next = nil
    
    return newHead
}






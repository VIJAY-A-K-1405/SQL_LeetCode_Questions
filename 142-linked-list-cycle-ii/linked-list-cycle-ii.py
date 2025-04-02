# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def detectCycle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        # Step 1: Detect if there is a cycle using Floyd's Tortoise and Hare algorithm
        slow, fast = head, head
        
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            
            if slow == fast:
                break
        else:
            return None  # No cycle found
        
        # Step 2: Find the entrance to the cycle
        slow = head
        while slow != fast:
            slow = slow.next
            fast = fast.next
        
        return slow  # slow (or fast) now points to the node where the cycle begins

        
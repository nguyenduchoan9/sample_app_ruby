public class Node{
    public int value;
    public Node next;
}

public void printReverseLinkedList(Node head){
    Node previous = null;
    Node current = head;
    Node next;

    if(null == head){
        System.out.print("Linked List is empty");
        return;
    }
    
    // Reverse Linked List
    while(null != current){
        next = current.next;
        current.next = previous;
        previous = current;
        current = next;
    }

    current = previous;
    previous = null;

    // print Node value and reverse Linked List 
    while(null != current){
        System.out.print("%d ", current.value);
        next = current.next;
        current.next = previous;
        previous = current;
        current = next;
    }
}
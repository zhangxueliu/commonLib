#include <iostream>
#include <assert.h>

typedef struct Node {  
    struct Node* next;  
    int value;  
} Node;

void InitList(Node** pList) {
     *pList = (Node*)malloc(sizeof(Node));
     (*pList)->next = NULL;
}

void InsertList(ListNode* pList, int data) {
    Node* pNewNode = (Node*)malloc(sizeof(Node));
    pNewNode->m_nKey = data;
    pNewNode->m_pNext = pList->next;
    pList->next = pNewNode;
}

// Print the singlely linked list  
void printList(Node* head) {

    Node* pTempNode = head->Next;
    while(pTempNode != NULL) {
        std::cout<<pTempNode->value<<std::endl;
        pTempNode = pTempNode->Next;            
    }
}

// Remove a node from linked list
void removeNode(Node* node) {
    assert(node != NULL);

    ListNode* pNext = node->m_pNext;
    if(pNext != NULL) {
        pCurrent->m_pNext = pNext->m_pNext;
        pCurrent->m_nKey = pNext->m_nKey;
        delete pNext;      
        pNext = NULL;
    } else {
        node->value = '0';  
        node = 0;
    }
}

void removeNode(ListNode* pListHead, ListNode* pCurrent) {
	  assert(pCurrent != NULL || pListHead != NULL);

    if(pCurrent->next != NULL) {
        ListNode* pNext = pCurrent->next;
        pCurrent->value = pNext->value;
        pCurrent->next = pNext->next;
        delete pNext;
        pNext = NULL;
    } else {
        ListNode* pNode = pListHead;
        while(pNode->next != pCurrent) {  
            pNode = pNode->next;
        }

        pNode->next = NULL;
        delete pCurrent;
        pCurrent = NULL;
    }
}


void add2Head(node *head, node *pcur) {
    pcur->next = head->next;
    head->next = pcur;
}

void reverse(node *head) {
    node *p,*q;
    p = head->next;
    head->next = NULL;
    while(p) {
        q = p->next;
        add_to_head(head, p);
        p = q;
    }
}

   
int main(){  

    Node* pHead = NULL;
    InitList(&pHead);

    for(int i=9; i>=0; i--) {
        InsertList(pHead,i);
    }

    // print the original list  
    printList(pHead);
    ListNode* pNext = pHead->next->next;
    
    // remove node
    DeleteRandomNode(pNext);

    // print the new list 
    PrintList(pHead);
}


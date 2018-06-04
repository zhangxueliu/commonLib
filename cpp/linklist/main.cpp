#include "LinkList.h"


int main(int argc, char* args[])

	LinkNode* pListHead = NULL;
	CLinkList linklist;
	linklist.initList(&pListHead);

	for (int i = 9; i >= 0; i--) {
		linklist.insertList(pListHead, i);
	}

	// print the original list  
	linklist.printList(pListHead);
	LinkNode* pNext = pListHead->next->next;

	// remove node
	linklist.removeLinkNode(pListHead, pNext);

	// print the new list 
	linklist.printList(pListHead);
}

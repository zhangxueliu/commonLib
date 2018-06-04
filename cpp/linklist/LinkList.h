#pragma once

#include "LinkNode.h"

class CLinkList
{
public:
	CLinkList();
	~CLinkList();

public:
	void initList(LinkNode** pList);

	void insertList(LinkNode* pList, int data);

	// Add a node to the header
	void add2Head(LinkNode *pListHead, LinkNode *pcur);

	// Print the singlely linked list  
	void printList(LinkNode* pListHead);

	// Remove the LinkNode from linked list
	void removeLinkNode(LinkNode* pListHead, LinkNode* pCurrent);

	// Reverse from tail to head
	void reverse(LinkNode *pListHead);
};

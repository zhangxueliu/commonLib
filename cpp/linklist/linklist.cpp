#include "stdafx.h"
#include "LinkList.h"

#include <iostream>
#include <assert.h>

CLinkList::CLinkList()
{
}


CLinkList::~CLinkList()
{
}


void CLinkList::initList(LinkNode** pList) {
	*pList = (Node*)malloc(sizeof(Node));
	(*pList)->next = NULL;
}


void CLinkList::insertList(LinkNode* pList, int data) {
    LinkNode* pNewNode = (LinkNode*)malloc(sizeof(LinkNode));
	pNewNode->data = data;
	pNewNode->next = pList->next;
	pList->next = pNewNode;
}


void CLinkList::add2Head(LinkNode *pListHead, LinkNode *pcur) {
	pcur->next = pListHead->next;
	pListHead->next = pcur;
}


// Print the singlely linked list  
void CLinkList::printList(LinkNode* pListHead) {

	Node* pTempNode = pListHead->next;
	while (pTempNode != NULL) {
		std::cout << pTempNode->data << std::endl;
		pTempNode = pTempNode->next;
	}
}


void CLinkList::removeLinkNode(LinkNode* pListHead, LinkNode* pCurrent) {
	assert(pCurrent != NULL || pListHead != NULL);

	if (pCurrent->next != NULL) {
		LinkNode* pNext = pCurrent->next;
		pCurrent->data = pNext->data;
		pCurrent->next = pNext->next;
		delete pNext;
		pNext = NULL;
	} else {
		LinkNode* pNode = pListHead;
		while (pNode->next != pCurrent) {
			pNode = pNode->next;
		}

		pNode->next = NULL;
		delete pCurrent;
		pCurrent = NULL;
	}
}


void CLinkList::reverse(LinkNode *pListHead) {
	LinkNode *p, *q;
	p = pListHead->next;
	pListHead->next = NULL;
	while (p) {
		q = p->next;
		add2Head(pListHead, p);
		p = q;
	}
}

#include "llrec.h"
#include <cstddef>



//*********************************************
// Provide your implementation of llpivot below
//*********************************************

void llpivot(Node *&head, Node *&smaller, Node *&larger, int pivot){

      if(head == nullptr){
        smaller = nullptr;
        larger = nullptr;
        return;
      }

      if(head->val <= pivot){
        smaller = head;
        head = head->next;
        return llpivot(head,smaller->next,larger,pivot);
      }

      if(head->val > pivot){
        larger = head;
        head = head->next;
        return llpivot(head,smaller,larger->next,pivot);
      } 
}





global with sharing class poistionController {

     public Positions__c pos
     {
     get;
     set;
     }

     public Positions__c getpd() {

         pos = [select Maxx_Pay__c from Positions__c where Name = 'Sr. Java Developer'];
            return pos;
      }

}
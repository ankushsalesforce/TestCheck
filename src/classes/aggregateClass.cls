public class aggregateClass{
    public integer empNumber{
    get;
    set;
    }
        public integer getnumber(){
        
        LIST<AggregateResult> noOfEmployees = [SELECT COUNT(id) noOfEmp 
                                               FROM Employee__c WHERE   salarries__c > 25000 ];
        for(AggregateResult sobj : noOfEmployees){
            Integer empNumber = Integer.valueOf(sobj.get('noOfEmp'));
                      }
             return empNumber;        
      }
   
}
public class QuoteLineItemss{ 
    public Decimal Amt{ get; set; }
    
        public void method(){
             QuoteLineItem qi= new QuoteLineItem();
             qi.Amount__c= Amt;
             insert qi;
 
         }
        public  PageReference save() {
            method();
            return null;
            }
    }
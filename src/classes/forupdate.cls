public class forupdate{

    public list<account> getup(){
    
    list<account> acct = new list<account>();
         acct = [SELECT id,name
                             FROM Account limit 3 ];
        return acct;

     }
 }
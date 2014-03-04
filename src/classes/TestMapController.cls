public class TestMapController{
      
      public map<string,integer> data1
       {
       get;
       set;
       }
       public date getmyydate(){
       
      Date dt = Date.today().addDays(6);
          return dt;
      }
     public TestMapController()
     {
         data1 = new map<string,integer>();
         for(Account acc: [Select  Name, (Select Id, Name, Email from Contacts), Phone from Account]){
            integer count = data1.get(acc.name);
            if(count != null)
                count++;
             else
                count = 1;
             data1.put(acc.name, count);
             }
             }
            public integer gettotalcount()
             {
            
            integer b = [SELECT count() FROM account];
            
                return b;
                 }
         }
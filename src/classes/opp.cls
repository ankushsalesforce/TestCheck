public class opp{

    public opp(ApexPages.StandardController controller) {

    }

    
   
     public list<opportunity> getdata(){
     List<opportunity> op= new List<opportunity>();
         op=[Select name from opportunity];
         return op;
     }
     }
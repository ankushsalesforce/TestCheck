public class AllRows{
  // <public pageReference undel(){
        
    //List<Account> a=  [Select id FROM Account Where Isdeleted = TRUE  ALL ROWS];
    //undelete a; 
       //  return null;
    
    Public list<account> getallro(){
         List<Account> a=  [Select Name
                              FROM Account Where Isdeleted = TRUE  ALL ROWS];
        System.debug('hello');
        return a;
      }
  }
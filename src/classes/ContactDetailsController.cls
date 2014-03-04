public class ContactDetailsController{

  
   public String fName { get; set; }
   public String Acount { get; set; }
   
   public void insertCust(){
        string firstName = fName;
        String Account = Acount ;
        
        Contact lstCust = new Contact();
        lstCust.LastName = firstName;
        insert lstCust;
        }

          public String countries { get; set; }
        

  
    public List<SelectOption> getItem() {
            List<SelectOption> options = new List<SelectOption>();
            for(account a: [Select Id, name from Account])
            {
                
                options.add(new SelectOption(a.id,a.name));
            }
            return options;
}

  public  PageReference register() {
        
        
        insertCust();
        return null;
    }  
}
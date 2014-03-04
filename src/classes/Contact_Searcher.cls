// create the custom controller extension class
public class Contact_Searcher {
    // Since we are creating an extension to the account standard controller,
    // create an account object to hold the current account
    Account a;
    public Contact_Searcher(ApexPages.StandardController controller)
    {
        // Get the current account, and store it in the account object
        a = (Account)controller.getRecord();
    }
   
    public string searchValue
    {
        get
        {
            if(searchValue == null)
                searchValue = '';
            return searchValue;
        }
        set;
    }
   
    public List<Contact> searchResults
    {
        get
        {
            if(searchResults == null)
                searchResults = new List<Contact>();
            return searchResults;
        }
        set;
    }
       
   
    // No need to return the result set. We will just assign to the class variable
    public void searchContacts()
    {
        if(searchValue == '')
            return;
        // Output the search value for debugging
        System.Debug('Initializing search, keyword is : ' + searchValue);       
        String finalSearchValue = '%' + searchValue + '%';
        List<Contact> contacts = new List<contact>();
        // Careful- check out what the SOQL query is doing.
        // It gets a list of contacts under that account with matching names.
        contacts = [select Id, Name from Contact where Account.Id = :ApexPages.CurrentPage().getParameters().get('Id')
                    and Name like :finalSearchValue];
        searchResults = contacts;
    }
}
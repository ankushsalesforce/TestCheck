Public Class OpportunitySearch {
    public List<Quote> getMethod(){
    
    
    List<Quote> qu = new List<Quote>();
        qu = [select Id, Name from Quote where Opportunity.Id = :ApexPages.CurrentPage().getParameters().get('Id')];
        return qu;
        }
       
     
    opportunity opp;

    public OpportunitySearch(ApexPages.StandardController controller) {
        opp=(Opportunity)Controller.getRecord();
    }
    public String SearchValue{
        get{
            if(SearchValue==null)
             SearchValue='';
             return SearchValue;
        }
        set;
    }
    public List<Quote > SearchResults{
            get{
                if(SearchResults==null)
                SearchResults= new list<Quote>();
                return SearchResults;
            }
            set;
        }
    public void SearchQuote(){
        if(SearchValue==null)
        return;
        string FinalSearch=  '%' + SearchValue+ '%';
       List<Quote> q= new list<Quote>(); 
          q= [select Id, Name from Quote where Opportunity.Id = :ApexPages.CurrentPage().getParameters().get('Id')
                    and Name like :FinalSearch];
                    SearchResults=q;
        }
}
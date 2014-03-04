public class ext{
    private final account acct;
    pubLIC ext(apexpages.StandardController std){
        acct=(Account)std.getRecord();
    }
    Public double getMonthReve(){
        if(acct.AnnualRevenue!=null){
            return acct.AnnualRevenue/12;
        }
        else
            return 0;
    }
    Public pageReference reaf(){
        database.insert(acct);
            return null;
    }
    

}
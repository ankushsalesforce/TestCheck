public class populateUser{
   
    
    public list<wrapperclass>  getlstwrp(){
        list <wrapperclass> lstwrp= new list <wrapperclass>();
        for(user us:([select id, name from User])) 
       { wrapperclass w = new wrapperclass();
            w.check=false;
            w.u=us;
            lstwrp.add(w);
             } 
              return lstwrp;    
        }
        
        public class wrapperclass{
            public boolean check{get; set;}
            public user u{get; set;}
        }
    }
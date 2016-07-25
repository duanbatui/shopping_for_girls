package shopping;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;  
  import java.lang.Boolean;
import java.nio.CharBuffer;
import java.lang.StringBuffer;
import java.util.ArrayList;



public class connect {  
    // ������̬ȫ�ֱ���  

	public static ArrayList<String> production_search(String search)
	{
		//String pros[]=null;
		  Connection conn;  
	      ResultSet rs;
	      Statement st;
	      String sql=null;
	      ArrayList<String> pros=new ArrayList<String>();
	   String search_sql="%";
	    for(int i=0;i<search.toCharArray().length;i++)//��ֳ�һ����������Ӱٷֺ�
	    {
	    	
	    	search_sql+=search.toCharArray()[i]+"%";
	    	
	    }
	      
		
		try{
			
			conn=getConnection();
		    st=conn.createStatement();
		    sql= "select *from productions where introduce like '%"+search_sql+"%';";//���search��Ӧ�÷���һ���б�����
			//��Ȼ��ÿ�����м��һ��%��;
		    rs=st.executeQuery(sql);
		int i=0;
		
		    while(rs.next())
		    {
		    	
		   // System.out.println(rs.getString(2)+rs.getString(3)+rs.getString(4));//����ɹ�
		    	pros.add(rs.getString("name"));
		   //	System.out.println(pros.get(i));
		    i++;
		    	
		    }
		    
			return pros;
		}
		catch(Exception e)
		{
			
			System.out.print(e);
			
		}
		
		
		return pros;
		
		
	}
	
	
	
	public static String[] production_query(String table,String production_name)
	{
		String production[]=new String[3];
		  Connection conn;  
	       ResultSet rs;
	      Statement st;
	        String sql=null;
	      try
	      {
	    conn=getConnection();
	    st=conn.createStatement();
	   
sql="select* from "+table+" where name='"+production_name+"'";

rs=st.executeQuery(sql);
	    while(rs.next())
	    {
	    	
	    	if(rs.getString("name").equals(production_name))
	    	{
	    		production[0]=rs.getString("name");
	    		production[1]=rs.getString("money");
	    		production[2]=rs.getString("introduce");
	    		
	    		break;
	    	}
	    	
	    	
	    	
	    }
	    conn.close();
    	st.close();
    	rs.close();
	    	  return production;
	      }
	      catch(SQLException e)
	      {
	    	  
	    	  System.out.println(e);
	    	  
	    	  
	    	  
	      }
		
		
		
		
		return production;
	}
	
	
	//*******************************
public static ResultSet show_data(String table)
	{
		//String production[]=new String[3];
		  Connection conn;  
	       ResultSet rs=null;
	      Statement st;
String sql;
	       
	      try
	      {
	    conn=getConnection();
	    st=conn.createStatement();
	   
sql="select* from "+table;

rs=st.executeQuery(sql);
	  
	
	    	  return rs;
	      }
	      catch(SQLException e)
	      {
	    	  
	    	  System.out.println(e);
	    	  
	    	  
	    	  
	      }
		

		return rs;
	}
	
	//*****************************
	
	
	
	
	
	

    public  static boolean register_check(String name,String password,String email)
    
    {
     Connection conn;  
       ResultSet rs;
      Statement st;
        
      String sql=null;
    String insert_sql=null;
    	
    	boolean username_isok=true;
    try
    {
    	conn=getConnection();
    	st=conn.createStatement();
    	sql="select * from user";
    	rs=st.executeQuery(sql);
    	while(rs.next()){
    	   
    	  if(rs.getString("username").equals(name))
    	  {
    	
    	//System.out.print("�˺ű�ע��1111");
    	   username_isok=false;
    	   break;
    	
    	 
    	  }
    	  
    	
    	   }
    	if(username_isok)
    	{
    		
    		 insert_sql="insert into user(username,password,email)values('"+name+"','"+password+"','"+email+"');";
  		   st.executeUpdate(insert_sql);	
    		
    	}
    	//System.out.print(username_isok+"3");
    	conn.close();
    	st.close();
    	rs.close();
    	return username_isok;
    
    }
    	catch(SQLException e)
    	{
    		System.out.print(e);
    		return username_isok;		
    	}
	
 

    }
    
    /*��¼��֤*/
 public  static boolean login_check(String name,String password)
    
    {
     Connection conn;  
       ResultSet rs;
      Statement st;
        
      String sql=null;
   
    	
    	boolean login_isok=false;
    try
    {
    	conn=getConnection();
    	st=conn.createStatement();
    	sql="select* from user";
    	rs=st.executeQuery(sql);
    	while(rs.next()){
    	   
    	  if(rs.getString("username").equals(name)&&rs.getString("password").equals(password))
    	  {
    	
    	//�����˺Ŷ�һ��
    	   login_isok=true;
    	   break;
    	
    	 
    	  }
    	  
    	
    	   }
    	
    	conn.close();
    	st.close();
    	rs.close();
    	return login_isok;
    
    }
    	catch(SQLException e)
    	{
    		System.out.print(e);
    		return login_isok;		
    	}
	
 

    }
 

 public  static void pay_shopping(String user,String shopping,String pay,String time)
    
    {
     Connection conn;  
       ResultSet rs;
      Statement st;
        
      String sql=null;
   //System.out.println(user+shopping+pay+time);

    try
    {
    	conn=getConnection();
    	st=conn.createStatement();
    	sql="insert into dingdan (user,shopping,pay,time)values('"+user+"','"+shopping+"','"+pay+"','"+time+"')";
    	st.executeUpdate(sql);

    	
    	conn.close();
    	st.close();
  
    
    
    }
    	catch(SQLException e)
    	{System.out.println(e);
    		
    	}
	
 

    }
 
    
    


    /* ��ȡ���ݿ����ӵĺ���*/  
    public static Connection getConnection() {  
        Connection con = null;  //���������������ݿ��Connection����  
        try {  
            Class.forName("com.mysql.jdbc.Driver");// ����Mysql��������  
              
            con = DriverManager.getConnection(  
                    "jdbc:mysql://localhost:3306/shopping", "root", "");// ������������  
         //System.out.println("���ݿ����ӳɹ�");  
              
        } catch (Exception e) {  
            System.out.println("���ݿ�����ʧ��" + e.getMessage());  
        }  
        return con; //���������������ݿ�����  
    }  
}  

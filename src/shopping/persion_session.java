package shopping;
import java.util.ArrayList;
public class persion_session {
static String username=null;
//用户名
//一个购物单列表
public static ArrayList<String> productions_name=new ArrayList<String>();
public static ArrayList<String> productions_number=new ArrayList<String>();
public static ArrayList<String> productions_Money=new ArrayList<String>();

public static void setUsername(String user)
{
	username=user;

}

public static String getUsername() {
	
	return username;
}

public static void add_car_name(String list)
{
	productions_name.add(list);
	

}
public static ArrayList<String> getProductions_name() {
	return productions_name;
}


public static ArrayList<String> getProductions_number() {
	return productions_number;
}


public static void add_car_number(String list)
{
	productions_number.add(list);
	

}

public static void add_car_Money(String list)
{
	
	productions_Money.add(list);

	

}
public static ArrayList<String> getProductions_Money() {
	return productions_Money;
}







	
	
	
	
	
}

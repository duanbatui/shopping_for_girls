<%@ page language="java" import="java.util.*,shopping.*" pageEncoding="UTF-8"%>
<% if(request.getParameter("user_statu").equals("false"))
{
session.setAttribute("user",null);
for(int i=0;i<persion_session.getProductions_name().size();i++)
{
session.setAttribute("car_proName",null);
session.setAttribute("car_proNumber",null);
session.setAttribute("car_proMoney",null);


persion_session.getProductions_name().clear();
persion_session.getProductions_number().clear();
persion_session.getProductions_Money().clear();

}

} %>

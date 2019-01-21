<%@ page import="java.util.*" %>

<html>

<body>

<form action="todo-demo.jsp">
	Add new item: <input type="text" name="item" />
	
	<input type="submit" value="Submit" />
</form>

<%
	
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	
	String item = request.getParameter("item");
	if (item != null) {
		items.add(item);
	}
%>


<hr>
<b>To List Items:</b> <br/>

<ol>
<%
	for (String temp : items) {
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>

</body>

</html>









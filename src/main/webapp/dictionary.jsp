<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Mr Loc
  Date: 11/28/2024
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple dictionary</title>
</head>
<body>
    <%!
//        có phạm vi toàn cục
        Map<String, String> dic = new HashMap<>();
    %>

    <%
   dic.put("こにちは","Xin chào");
   dic.put("どうだった？","The nào?");
   dic.put("本","Sách");
   dic.put("パソコン","May tinh");
   String search =request.getParameter("search");
   if (search != null && !search.isEmpty()) {

       String result = dic.get(search);
       if (result != null) {
           System.out.println("Word: " + search);
           System.out.println("Result: " + result);
       } else {
           System.out.println("Not found");
       }
   } else{
       System.out.println("<p>Please enter a word to search.</p>");;

   }

   %>
</body>
</html>

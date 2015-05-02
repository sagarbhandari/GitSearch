<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.servlet.*"%>
<%@ page import="org.kohsuke.github.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
hello 4 u
<%
GitHub github = GitHub.connect();
GHRepository repo = github.createRepository(
		  "new-repository","this is my new repository",
		  "http://www.kohsuke.org/",true/*public*/);
repo.addCollaborators(github.getUser("abayer"),github.getUser("rtyler"));
%>

</body>
</html>
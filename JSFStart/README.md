Simple Java Server Faces Project created with Eclipse
--------------------------------------------------------

Eclipse Version: 	Eclipse Service Release 1
JSF Version: 		2.2

***********
Issues: 
***********

Exception "java.lang.ClassNotFoundException: javax.servlet.jsp.jstl.core.Config"
------------------------------------------------------------------------------------
JSF have a dependency on JSTL for the <c:xxx> tags. When JSF loads, it's implicitly also loads the JSTL 
core taglib configuration. 
JSTL (and JSF!) is normally already provided out the box on Java EE container such as JBoss AS/EAP/WildFly, GlassFish, TomEE, WebLogic. 
If you're using Tomcat, which is a barebones JSP/Servlet container, it doesn't ship with JSTL out the box.

Solution 1: 
Download JSTL 1.2 and include it as library the "Deployment Assembly". This is done in this project. 
However, including it with maven would be a much better approach!
Download Jar (JSTL 1.2): http://search.maven.org/#browse|-1002239620




# eecs341
Database final project
---------------------------------------------------------------------------------------------

Dev notes:

The menu for all of the pages is included in the header.jsp file, and depends on tabMenu.css.<br>
This header file also ends as an opening into the 'main' div class of the page: therefore,
after including this header file, note that you are already in an html body (and a specific
div, at that). Similarly, the footer.jsp file closes out this div, as well as the page body
and the html tags entirely.

To set up a blank page, simply use:<br>
<%@ include file="header.jsp" %> <br>
     &lt;!-- main div contents here --&gt;<br>
<%@ include file="footer.jsp" %><br>

---------------------------------------------------------------------------------------------

Setting up the environment:

As we're using JSP, this project needs to be displayed via Apache Tomcat.<br>
Tomcat 9.0 installation available here: https://tomcat.apache.org/tomcat-9.0-doc/setup.html<br>
 -currently: Larissa is running 9.0<br>
             Ross is running 6.0.47<br>
  ...stick around to see if the version differences mess things up later on<br><br>

After successful installation, clone this repository into:<br>
[Program Files/Mac equivalent] > Apache Software Foundation > Tomcat #.# > webapps > ROOT<br>
(I don't know how OSX application directories are set up but I'm assuming it's similar?)<br>
So, you now have an 'eecs341' directory within ROOT.<br><br>

Make sure that Tomcat is actually running:<br>
Start up Apache's 'Monitor Tomcat' program/service.<br>
Within your computer's tray table, right click on the Tomcat icon and select 'Start service'.<br><br>

Finally, within a browser, navigate to http://localhost:8080/eecs341/website/index.html and
voila there's our project.<br>
To make sure everything's up and running, go to http://localhost:8080/eecs341/website/home.jsp
and if you see the homepage (currently just a header at the time of committing this) rather than
jsp source code, you're golden.

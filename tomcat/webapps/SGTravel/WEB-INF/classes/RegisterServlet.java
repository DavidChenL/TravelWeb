import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {  // JDK 6 and above only

   // The doGet() runs once per HTTP GET request to this servlet.
   @Override
   public void doPost(HttpServletRequest request, HttpServletResponse response)
                     throws ServletException, IOException {
      // Set the MIME type for the response message
      response.setContentType("text/html");
      // Get a output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();

      Connection conn = null;
      Statement stmt = null;
      try {
         // Step 1: Create a database "Connection" object
         // For MySQL
         Class.forName("com.mysql.jdbc.Driver");  // Needed for JDK9/Tomcat9
         conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/SGTravel?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC", "myuser", "xxxx");  // <<== Check

         String userName = request.getParameter("username");
         String password = request.getParameter("password");
         String confirmPassword = request.getParameter("confirm_password");
         //boolean hasUserName = (userName != null);
         //boolean hasPassword = (password != null);
         boolean hasUserName = userName != null || ((userName = userName.trim()).length() > 0);
         boolean hasPassword = password != null || ((password = password.trim()).length() > 0);
         boolean samePassword = password.equals(confirmPassword);
         HttpSession session = request.getSession(false);
         
         if (session == null) {
            out.println("<ul><li><a href='register.html'> Create Account </a></li><li><a href='login.html'>Login</a></li></ul>");
         } else {
            synchronized (session) {
               userName = (String) session.getAttribute("username");
               out.println("<ul><li><a href='account'>Hello! " + userName + "</a></li><li><a href='logout'>Logout</a></li></ul>");
            }
          }
         // Step 2: Create a "Statement" object inside the "Connection"
         stmt = conn.createStatement();


         if (!hasUserName) {
            out.println("<h3>Please Enter Your username!</h3>");
            out.println("<p><a href='register.html'>Back to Registration Menu</a></p>");
         } else if (!hasPassword) {
            out.println("<h3>Please Enter Your password!</h3>");
            out.println("<p><a href='register.html'>Back to Registration Menu</a></p>");
         } else if (!samePassword) {
            out.println("<h3>Passwords not the same. Please check your password!</h3>");
            out.println("<p><a href='register.html'>Back to Registration Menu</a></p>");
         }
         else {
         // Step 3: Execute a SQL SELECT query
    //      	String sqlQ = "Select * FROM User WHERE STRCMP(username, '"+userName+"')";
    //      	ResultSet rset = stmt.executeQuery(sqlQ);
    //      	if(rset.next()){
				// out.println("<h3>Username already exists!</h3>");
    //      	} else {


    //      		String sqlStr = "INSERT INTO User VALUES ('" + userName + "' , '" + password + "')";

    //      		int count = stmt.executeUpdate(sqlStr);

    //      // Print an HTML page as output of query
    //      		out.println("<html><head><title>Registration Successful!</title></head><body>");
    //      		out.println("<h2>Thank you for your registration! Please <a href='login.html'>Log In</a>. </h2>");
    //      		out.println("</body></html>");
    //      	}
            String sqlStr = "INSERT INTO User VALUES ('" + userName + "' , '" + password + "')";

                int count = stmt.executeUpdate(sqlStr);

          // Print an HTML page as output of query
                out.println("<html><head><title>Registration Successful!</title></head><body>");
                out.println("<h2>Thank you for your registration! Please <a href='login.html'>Log In</a>. </h2>");
                out.println("</body></html>");
         }
      } catch (SQLException ex) {
         ex.printStackTrace();
     } catch (ClassNotFoundException ex) {
        ex.printStackTrace();
     } finally {
         out.close();
         try {
            // Step 5: Close the Statement and Connection
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
         } catch (SQLException ex) {
            ex.printStackTrace();
         }
      }
   }
}
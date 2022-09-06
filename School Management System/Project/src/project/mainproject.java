
package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class mainproject implements things4 {

    public static void main(String[] args) {
        try
 {
 Connection myconnection;
 
 myconnection=DriverManager.getConnection(PATH+PLACE,UNAME,PASS);
 
 try
 {
 String a="select * from usertable";
 PreparedStatement mystatement=myconnection.prepareStatement(a);
 
 ResultSet myresult=mystatement.executeQuery();
 
 if(myresult.next())
 {
 Loginframe obj=new Loginframe();
 obj.setVisible(true);
 
 }
 else
 {
 JOptionPane.showMessageDialog(null, "Running Software for first time, create Admin Account first");
 createadmin obj=new createadmin();
 obj.setVisible(true);
 
 }
 
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(null, "Error in Query " + e.getMessage());
 }
 finally
 {
 myconnection.close();
 }
 
 
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(null, "Error in Connection " + e.getMessage());
 }


    }
    
}

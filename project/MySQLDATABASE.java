package project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class MySQLDATABASE {
Statement statement = null;
PreparedStatement preparedStatement = null;
ResultSet result = null;
Connection connect = null;

void databaseOperation ()
{
  try {
connect = ApiClient.getInstance();
                 
statement= connect.createStatement();
result= statement.executeQuery("SELECT * FROM student_register");

if (result.next()) {

while (result.next())
{
System.out.println("ID:"+result.getString ("Id"));
System.out.println("Name:"+result.getString ("name"));
System.out.println("Adress:"+result.getString ("adress"));
}
                }

System.out.println("No Result Found");

   } catch (Exception ex) {
System.out.println ("MyError: "+ex);
   }
   finally{
   ApiClient.close();
   }
}

}

package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

abstract class ApiClient {

private static Connection connection;

static Connection getInstance() throw SQLException,ClassNotFoundException{
     if (connection == null) {
 Class.forName("org.postgresql.Driver");
 connection = DriveManager.getConnection("jdbc:postgresql://localhost/library_management?"+"user=root");
      }
     
return connection;
        }
}
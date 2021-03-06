
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private final static String USER = "root";
    private final static String PASSWORD = "";
    private final static String URL = "jdbc:mysql://localhost:3306/parcial";
    private final static String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
}

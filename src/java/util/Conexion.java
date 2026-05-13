
package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
 
 
    public static Connection getConexion()
    {
        Connection cn = null;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn= DriverManager.getConnection("jdbc:mysql://localhost/food_express","root","");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return cn;
        
    }
}

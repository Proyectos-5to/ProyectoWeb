
package configuration;


import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection conexion;
    
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBWebApp?useSSL=false", "root", "carlosestuardotomasmejia");
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("La conexion no pudo establecerce"+ e);
            e.getMessage();
        }
    }
    
    public Connection getConnection(){
        return conexion;
    }
}

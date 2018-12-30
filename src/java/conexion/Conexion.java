/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author jean
 */
public class Conexion {
    
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        
        dataSource.setDriverClassName("com.mysql.jdbc.Driver"); 
        //ir a libreria -> opcines -> agregar libreria -> Driver MySql jdbc 
        
        dataSource.setUrl("jdbc:mysql://localhost:3306/springbd");
        dataSource.setUsername("root"); 
        dataSource.setPassword("root"); 
        
        return dataSource;
        
    }
    
}

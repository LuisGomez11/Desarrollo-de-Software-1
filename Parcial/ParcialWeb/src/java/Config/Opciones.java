/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Config;

import Clases.Conexion;
import Clases.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Opciones {

    public static void Insertar(Usuario us) throws ClassNotFoundException, SQLException {
        Connection connect = Conexion.connect();
        PreparedStatement pst = connect.prepareStatement("Insert into "
                + "registros values(?,?,?,?)");
        pst.setInt(1, us.getId());
        pst.setString(2, us.getName());
        pst.setString(3, us.getLastName());
        pst.setString(4,us.getBirthDay());
        pst.executeUpdate();

    }
    
    public static void Actualizar(Usuario us) throws ClassNotFoundException, SQLException {
        Connection connect = Conexion.connect();
        PreparedStatement pst = connect.prepareStatement("update  "
                + "registros set name =?, lastname=?,birthday=? where id=?");
        pst.setInt(4, us.getId());
        pst.setString(1, us.getName());
        pst.setString(2, us.getLastName());
        pst.setString(3, us.getBirthDay());
        pst.executeUpdate();

    }
    
    public static void Eliminar(int id) throws ClassNotFoundException, SQLException {
        Connection connect = Conexion.connect();
        PreparedStatement pst = connect.prepareStatement("Delete from "
                + "registros where id=?");
        pst.setInt(1, id);
        pst.executeUpdate();

    }
    
}

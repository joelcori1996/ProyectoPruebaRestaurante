package Modelo;

import java.sql.*;
import Entidad.Usuario;
import Entidad.Rol;
import util.Conexion;

public class UsuarioModel {

    public Usuario login(String user, String pass) {
        Usuario u = null;

        try {
            Connection cn = Conexion.getConexion();

            CallableStatement cs = cn.prepareCall("{CALL sp_login_usuario(?,?)}");
            cs.setString(1, user);
            cs.setString(2, pass);

            ResultSet rs = cs.executeQuery();

            if (rs.next()) {
                u = new Usuario();
                u.setCodUsuario(rs.getString("CodUsuario"));
                u.setNombre(rs.getString("Nombre"));

                // Rol
                Rol r = new Rol();
                r.setCodRol(rs.getString("CodRol"));

                u.setRol(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return u;
    }
}
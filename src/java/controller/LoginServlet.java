
package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import Modelo.UsuarioModel;
import Entidad.Usuario;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        UsuarioModel service = new UsuarioModel();
        Usuario u = service.login(user, pass);

        if (u != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", u);
            
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}

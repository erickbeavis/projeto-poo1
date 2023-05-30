package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (validarCredenciais(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogado", username);

            response.sendRedirect(request.getContextPath() + "/index.html");
        } else {
            request.setAttribute("mensagemErro", "Usuário ou senha inválidos");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
    }

    private boolean validarCredenciais(String username, String password) {
        // Validação das credenciais com banco de dados
        return true;
    }
}
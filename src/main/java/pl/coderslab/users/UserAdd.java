package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/userAdd")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String repeatedPassword=request.getParameter("repeatedPassword");

        User user=new User();
        user.setUserName(name);
        user.setEmail(email);
        user.setPassword(password);

        UserDao userDao=new UserDao();
        userDao.create(user);

        if (password.equals(repeatedPassword)) {
            System.out.println("jest git");
        } else {
            System.out.println("zle haslo");

        }

        System.out.println(name);

        response.sendRedirect("/userList");


    }
}

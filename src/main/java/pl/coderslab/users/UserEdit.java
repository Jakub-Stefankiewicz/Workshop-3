package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/userEdit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);

        UserDao userDao=new UserDao();
        User user=userDao.read(id);

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String repeatedPassword=request.getParameter("repeatedPassword");
        Integer id=Integer.parseInt(request.getParameter("id"));
        UserDao userDao=new UserDao();
        User user=new User();
        user.setId(id);

        if (password.equals(repeatedPassword)) {
            user.setUserName(name);
            user.setEmail(email);
            user.setPassword(password);
            userDao.update(user);
            response.sendRedirect("/userList");
        }else {
            String wrong="wrongpassword";
            request.setAttribute("wrongpassword", wrong);
            getServletContext().getRequestDispatcher("/users/add.jsp").forward(request,response);
        }
    }
}

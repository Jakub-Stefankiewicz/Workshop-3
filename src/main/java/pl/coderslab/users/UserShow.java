package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/userShow")
public class UserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.parseInt(request.getParameter("id"));

        UserDao userDao=new UserDao();
        User user=userDao.read(id);

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/users/show.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

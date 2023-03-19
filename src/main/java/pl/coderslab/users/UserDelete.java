package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( "/userDelete")
public class UserDelete extends HttpServlet {

    User[] userList;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String verify = request.getParameter("ver");

        if (verify!=null){
            String sure=verify;
            request.setAttribute("sure", sure);
            UserDao userDao=new UserDao();
            userList=userDao.findAll();
            request.setAttribute("users", userList);
            getServletContext().getRequestDispatcher("/users/list.jsp").forward(request,response);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            UserDao userDao = new UserDao();
            userDao.delete(id);
            response.sendRedirect("/userList");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/userList")
public class UserList extends HttpServlet {
    User[] userList;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao=new UserDao();
        userList=userDao.findAll();

        if (userList==null){
            userList=new User[0];
            request.setAttribute("users", null);
        } else {
            request.setAttribute("users", userList);
        }

        for (User user:userList) {
            System.out.println(user);
        }

        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}

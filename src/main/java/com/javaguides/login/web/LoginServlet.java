package com.javaguides.login.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.javaguides.login.dao.LoginDao;
import com.javaguides.registration.model.Employee;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Employee emp = new Employee();
        emp.setUsername(username);
        emp.setPassword(password);

        try {
            if (loginDao.validate(emp)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
            	this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginsuccess.jsp").forward(request, response);
            } else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                //response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}

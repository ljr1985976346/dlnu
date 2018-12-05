package edu.dlnu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet" ,urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//获取from表单发过来的参数(y用户名密码）
        //
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        //判断用户及其密码
        if("root".equals(uname)&&"1234".equals(pwd)){
            System.out.println("ok");
            //ke请求转发至其他页面(不变地址
            // request.getRequestDispatcher("/WEB-INF/pages/homePage.jsp").forward(request,response);
            //另一种方shi重定向方式(改变地址
            response.sendRedirect("/home");
        }
        else{
            System.out.println("gg");
            request.setAttribute("msg","用户名或密码不对");
            //转发到错误error页面

            request.getRequestDispatcher("/WEB-INF/pages/error.jsp").forward(request,response);
        }
    }
}

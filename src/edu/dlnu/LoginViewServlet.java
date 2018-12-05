package edu.dlnu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//+,urlPatterns = "/loginview"......跳转页码
@WebServlet(name = "LoginViewServlet",urlPatterns = "/loginview")
public class LoginViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //请求转发
        //web—inf文件对外是隐藏文件，外部无法直接访问文件夹资源
        //只能通过请求转发或者请求重定向方式访问
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }
}

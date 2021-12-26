package client;

import org.apache.commons.beanutils.BeanUtils;
import webClasses.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User new_user = new User();
        response.setCharacterEncoding("UTF-8");
        response.setHeader("contentType","text/html; charset=utf-8");
        try {
            BeanUtils.populate(new_user, request.getParameterMap());
            User.checkUser(new_user); // 查找数据库，核实用户身份
        } catch (IOException e) {   // 登录失败
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            return;
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            return;
        }
        HttpSession session = request.getSession(true);             //创建Session，写入用户名
        session.setAttribute("username",new_user.getUsername());
        if (new_user.getUsername().equals("admin"))                     //登录的是管理员账号
            response.sendRedirect(request.getContextPath()+"/jsp/adminSuccess.jsp");    //进入管理员页面
        else
            response.sendRedirect(request.getContextPath() + "/jsp/userSuccess.jsp");   //进入普通顾客页面
        return;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
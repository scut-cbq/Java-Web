package client;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.beanutils.BeanUtils;
import webClasses.User;

public class registerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User new_user = new User();
        response.setCharacterEncoding("UTF-8");
        response.setHeader("contentType","text/html; charset=utf-8");
        try {
            BeanUtils.populate(new_user, request.getParameterMap());    //将表单中的信息封装到User中
            User.addUser(new_user);                                     // 添加到数据库
        } catch (IOException e) {   // 注册失败
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            return;
        } catch (Exception e) {     // 注册失败
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            return;
        }
        HttpSession session = request.getSession(true);             //创建Session，写入用户名
        session.setAttribute("username",new_user.getUsername());
        response.sendRedirect(request.getContextPath() + "/jsp/userSuccess.jsp"); // 注册成功
        return;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
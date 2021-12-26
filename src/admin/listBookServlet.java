package admin;

import org.apache.commons.beanutils.BeanUtils;

import webClasses.Book;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class listBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //获取所有书籍
            List<Book> li = Book.listBook();        //获取所有book的信息
            request.setAttribute("li", li);     //发送book信息
            request.getRequestDispatcher("/jsp/list.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
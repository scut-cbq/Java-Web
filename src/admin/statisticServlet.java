package admin;

import webClasses.Book;
import webClasses.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class statisticServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //获取所有书籍
            List<Book> li = Book.listBook();
            for (Book book : li) {
                book.setSales(Order.getSalesByBookId(book.getId()));    //获取该book的销量
            }
            request.setAttribute("li", li);     //发送book信息
            request.getRequestDispatcher("/jsp/statistic.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
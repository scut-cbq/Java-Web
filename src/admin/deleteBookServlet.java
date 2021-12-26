package admin;

import webClasses.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class deleteBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");     //获取book id
            Book.deleteBook(Integer.parseInt(id));          //delete book
            request.getRequestDispatcher("/listBook").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
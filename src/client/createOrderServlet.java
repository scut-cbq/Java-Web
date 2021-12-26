package client;

import org.apache.commons.beanutils.BeanUtils;
import webClasses.Order;
import webClasses.User;
import webClasses.sendEmail;
import webClasses.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

public class createOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession(false);                //从Session中获取用户名
            String username = (String) session.getAttribute("username");
            Order order = new Order();                                          //创建Order对象
            order.setId(Order.getMaxId());                                      //设置Order信息
            order.setUsername(username);
            BeanUtils.populate(order, request.getParameterMap());
            HashMap<Integer, Integer> id_num = new HashMap<Integer, Integer>();
            id_num.put(1, 1);
            order.setId_num(id_num);
            order.setTotal(99);

            //发送邮件
            Book book1 = Book.findBook(1);
            User user = User.findUser(username);
            String email = user.getEmail();
            String content = "尊敬的" + order.getReceiverName() + "顾客，您所购买的《" + book1.getName() + "》*1已经发货，请注意查收。\n收件人地址：" + order.getReceiverAddress()
                    + "\n收件人联系电话：" + order.getReceiverPhone();
            sendEmail.send(email, content);

            Order.addOrder(order);  //将订单添加到数据库
            response.sendRedirect(request.getContextPath() + "/jsp/userSuccess.jsp");
            return;

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            return;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
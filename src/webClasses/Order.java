package webClasses;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Order implements Serializable {

    private static final long serialVersionUID = 1L;
    private int id;                             //订单号
    private String username;                    //用户名
    private String receiverAddress;             //收件人地址
    private String receiverName;                //收件人姓名
    private String receiverPhone;               //收件人号码
    private HashMap<Integer, Integer> id_num;   //书号_数量，HashMap类型
    private String id_and_num;                  //书号_数量，String类型
    private float total;                        //总价

    public static void addOrder(Order order) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "insert into orders values(?,?,?,?,?,?,?)";        //SQL语句
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, order.getId());                      //设置订单信息
            stmt.setString(2, order.getUsername());
            stmt.setString(3, order.getReceiverName());
            stmt.setString(4, order.getReceiverAddress());
            stmt.setString(5, order.getReceiverPhone());
            String id_and_num = "";
            HashMap<Integer, Integer> id_num = order.getId_num();
            // 将hashmap转为String储存
            for (Integer key : id_num.keySet()) {
                id_and_num += key.toString() + "," + id_num.get(key).toString() + ",";
            }
            stmt.setString(6, id_and_num);
            stmt.setFloat(7, order.getTotal());
            if (stmt.executeUpdate() == 0) {                            //执行SQL语句，添加订单
                throw new Exception("Create order failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Create order failed.");
        }
    }

    public static List<Order> listOrder() throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select* from orders;";        //获取所有订单项
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Order> li = new ArrayList<Order>();    //返回的List
            while (rs.next()) {                         //设置每一项订单的信息
                Order order = new Order();
                order.setId(rs.getInt(1));
                order.setUsername(rs.getString(2));
                order.setReceiverName(rs.getString(3));
                order.setReceiverAddress(rs.getString(4));
                order.setReceiverPhone(rs.getString(5));
                HashMap<Integer, Integer> map = Order.getId_num(rs.getString(6));
                String id_and_num = "";
                for(Integer key:map.keySet()){
                    id_and_num+="（"+key.toString()+"，"+map.get(key).toString()+"）  ";
                }
                order.setId_and_num(id_and_num);
                order.setTotal(rs.getFloat(7));
                li.add(order);
            }
            return li;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
    }

    public static int getMaxId() throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select max(id) from orders;";     //获取当前最大的订单号
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet re = stmt.executeQuery();
            if (re.next())                                  //返回下一个可用的订单号
                return re.getInt(1) + 1;
            else
                return 1;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Create order failed.");
        }
    }

    public static Integer getSalesByBookId(int id) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select * from orders;";       //获取所有订单信息
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            Integer cnt = 0;
            while (rs.next()) {                         //遍历每一项订单
                //将String类型的id_num转为HashMap类型，方便遍历
                HashMap<Integer, Integer> id_num = Order.getId_num(rs.getString("id_num"));
                for (Integer key : id_num.keySet()) {   //获取该订单中“书号_数量”的对应信息
                    if (Integer.valueOf(id).equals(key))    //如果书号==要找的id，则计数器增加
                        cnt += id_num.get(key);
                }
            }
            return cnt;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String address) {
        this.receiverAddress = address;
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String name) {
        this.receiverName = name;
    }

    public String getReceiverPhone() {
        return this.receiverPhone;
    }

    public void setReceiverPhone(String phone) {
        this.receiverPhone = phone;
    }

    public HashMap<Integer, Integer> getId_num() {
        return id_num;
    }

    public static HashMap<Integer, Integer> getId_num(String id_and_num) throws Exception {
        try {
            HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
            String[] items = id_and_num.split(",");
            for (int i = 0; i < items.length; i += 2) {
                map.put(Integer.valueOf(items[i]), Integer.valueOf(items[i + 1]));
            }
            return map;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
    }

    public void setId_num(HashMap<Integer, Integer> id_num) {
        this.id_num = id_num;
    }

    public String getId_and_num() {
        return id_and_num;
    }

    public void setId_and_num(String id_and_num) {
        this.id_and_num = id_and_num;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "";
    }

}

package webClasses;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Book implements Serializable {

    private static final long serialVersionUID = 1L;
    private int id;                 //书号
    private String name;            //书名
    private float price;            //价格
    private String category;        //分类
    private int num;                //库存
    private String description;     //简介
    private int sales;              //销售量

    public static void addBook(Book book) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "insert into books values(?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, book.getId());
            stmt.setString(2, book.getName());
            stmt.setFloat(3, book.getPrice());
            stmt.setString(4, book.getCategory());
            stmt.setInt(5, book.getNum());
            stmt.setString(6, book.getDescription());
            if (stmt.executeUpdate() == 0) {        //执行SQL语句，插入新书
                throw new Exception("Add book failed.");
            }
        } catch (Exception e) {     //失败
            e.printStackTrace();
            throw new Exception("Add book failed.");
        }
    }

    public static Book findBook(int id) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select* from books where id=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();             //执行查询语句，查找id对应的书
            if (!rs.next())
                throw new Exception("Book not exists.");    //不存在
            else {                                          //存在
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getFloat("price"));
                book.setCategory(rs.getString("category"));
                book.setNum(rs.getInt("num"));
                book.setDescription(rs.getString("description"));
                return book;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Book not exists.");
        }
    }

    public static void deleteBook(int id) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "delete from books where id=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            if (stmt.executeUpdate() == 0) {        //执行SQL语句，删除id对应的书
                throw new Exception("Delete book failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Delete book failed.");
        }
    }

    public static List<Book> listBook() throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select* from books;";     //获取数据库中所有的图书
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Book> li = new ArrayList<Book>();      //返回的List
            while (rs.next()) {                     //设置信息
                Book book = new Book();
                book.setId(rs.getInt(1));
                book.setName(rs.getString(2));
                book.setPrice(rs.getFloat(3));
                book.setCategory(rs.getString(4));
                book.setNum(rs.getInt(5));
                book.setDescription(rs.getString(6));
                li.add(book);                       //添加进List
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
            String sql = "select max(id) from books;";  //获取当前最大id
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet re = stmt.executeQuery();
            if (re.next())                              //返回下一个可用id
                return re.getInt(1) + 1;
            else
                return 1;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Add book failed.");
        }
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getPrice() {
        return price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSales() {
        return sales;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }

    @Override
    public String toString() {
        return getId() + ", " + getName() + ", " + getPrice() + ", " + getCategory() + ", " + getNum() + ", " + getDescription();
    }

}

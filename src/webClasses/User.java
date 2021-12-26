package webClasses;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    private String username;    //用户名
    private String password;    //密码
    private String email;       //Email
    private String telephone;   //手机号码

    public static void addUser(User u) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "insert into user values(?,?,?,?)";    //添加新用户
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, u.getUsername());     //获取信息
            stmt.setString(2, u.getPassword());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getTelephone());
            if (stmt.executeUpdate() == 0) {                    //执行SQL语句，添加新用户
                throw new Exception("Username exists, register failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Username exists, register failed.");
        }
    }

    public static User findUser(String username) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select* from user where username=?";      //根据username找到用户
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (!rs.next())     //用户不存在
                throw new Exception("User not exists.");
            else {              //找到用户，返回信息
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setTelephone(rs.getString("telephone"));
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("User not exists.");
        }
    }

    public static void checkUser(User u) throws Exception {
        try {
            String URL = "jdbc:mysql://localhost:3306/webdb";
            String USER = "webdb";
            String PASSWORD = "root";

            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2. 获得数据库连接
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            // 3.操作数据库，实现增删改查
            String sql = "select* from user where username=? and password=?";   //根据username和password找user
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, u.getUsername());
            stmt.setString(2, u.getPassword());
            ResultSet re = stmt.executeQuery();
            if (re.next())      //存在
                return;
            else                //不存在，用户名或密码错误
                throw new Exception("Login failed. Check your username and password.");
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Login failed. Check your username and password.");
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public String toString() {
        return "User [username=" + username + ", password="
                + password + ", gender=" + ", email=" + email
                + ", teletelephone=" + telephone + "]";
    }

}

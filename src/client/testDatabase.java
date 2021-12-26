package client;

import webClasses.User;

import java.io.IOException;

public class testDatabase {
    public static void main(String[] args) throws IOException {
        try{
            User user = new User();
            user.setUsername("scut");
            user.setPassword("123");
            user.setEmail("123");
            user.setTelephone("123");
            User.addUser(user);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}

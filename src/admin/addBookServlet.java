package admin;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.io.IOUtils;
import webClasses.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import java.io.File;
import java.util.Map;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class addBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Book book = new Book();
            Map<String, String> map = new HashMap<String, String>();
            // 封装商品id
            map.put("id", ((Integer) Book.getMaxId()).toString());

            DiskFileItemFactory dfif = new DiskFileItemFactory();
            // 设置临时文件存储位置
            dfif.setRepository(new File(this.getServletContext().getRealPath(
                    "/temp")));
            // 设置上传文件缓存大小为10m
            dfif.setSizeThreshold(1024 * 1024 * 10);
            // 创建上传组件
            ServletFileUpload upload = new ServletFileUpload(dfif);
            // 处理上传文件中文乱码
            upload.setHeaderEncoding("utf-8");

            // 解析request得到所有的FileItem
            List<FileItem> items = upload.parseRequest(request);
            // 遍历所有FileItem
            for (FileItem item : items) {
                // 判断当前是否是上传组件
                if (item.isFormField()) {
                    // 不是上传组件
                    String fieldName = item.getFieldName(); // 获取组件名称
                    String value = item.getString("utf-8"); // 解决乱码问题
                    map.put(fieldName, value);
                } else {
                    // 是上传组件
                    // 得到上传文件真实名称
                    String fileName = book.getId() + ".png";

                    // 图片存储父目录
                    String imgurl_parent = "/image";

                    File parentDir = new File(this.getServletContext()
                            .getRealPath(imgurl_parent));

                    IOUtils.copy(item.getInputStream(), new FileOutputStream(
                            new File(parentDir, fileName)));
                    item.delete();
                }
            }

            BeanUtils.populate(book, map);
            Book.addBook(book);
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
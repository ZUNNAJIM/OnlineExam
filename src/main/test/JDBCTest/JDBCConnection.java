package JDBCTest;

import com.cn.online_exam.dao.adminDao;
import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.service.AdminService;
import com.cn.online_exam.service.impl.AdminServiceImpl;
import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class JDBCConnection {


    private static ComboPooledDataSource ds=new ComboPooledDataSource();
    public static Connection getConnFromC3p0() {
        Connection conn=null;
        try {
            conn=ds.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        Connection connection = getConnFromC3p0();
        System.out.println(connection == null);
    }
}

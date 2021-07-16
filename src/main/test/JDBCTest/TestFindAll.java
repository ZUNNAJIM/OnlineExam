package JDBCTest;

import com.cn.online_exam.dao.adminDao;
import com.cn.online_exam.pojo.Administrator;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestFindAll {

    private InputStream in;
    private SqlSessionFactoryBuilder builder;
    private SqlSessionFactory factory;
    private SqlSession session;
    private adminDao adminDao;

    @Before
    public void Init() throws IOException {
        in = Resources.getResourceAsStream("SqlMapperConfig.xml");
        //2.创建 SqlSessionFactory 的构建者对象
        builder = new SqlSessionFactoryBuilder();
        //3.使用构建者创建工厂对象 SqlSessionFactory
        factory = builder.build(in);
        //4.使用 SqlSessionFactory 生产 SqlSession 对象
        session = factory.openSession(true);//true自动提交事务
        //5.使用 SqlSession 创建 dao 接口的代理对象
        adminDao = session.getMapper(adminDao.class);
    }

    @Test
    public void findAll()
    {
        List<Administrator> administratorList = adminDao.findAll();
        for (Administrator administrator : administratorList)
            System.out.println(administrator.toString());
    }

    @After
    public void Destroy() throws IOException {
        in.close();
        session.close();
    }

}

package config;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

public class DB {
    public static Connection dbConn() {
        DataSource ds = null;
        Connection conn = null;
        try {
            Context ctx = new InitialContext();
            //context.xml 파일을 분석하는 클래스
            // Resource 태그에 설정된 정보를 읽어서 DB 커넥션을 받는 코드
            //java:comp/env/Resource 태그의 이름
            ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
        //db 커넥션을 리턴하는 코드
    }
}

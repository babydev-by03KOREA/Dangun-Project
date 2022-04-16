package dbconnect;
import java.sql.*;

public class DBOpen {
    static String driver = "oracle.jdbc.driver.OracleDriver";
    static String url = "jdbc:oracle:thin:@oracledatabase_medium?TNS_ADMIN=/Users/parkhyeongju/Downloads/Wallet_OracleDataBase";
    static String uid = "ADMIN";
    static String pwd = "database616125Os!";

    public static Connection getConnection() throws Exception{
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url,uid,pwd);
        return con;
    }

}



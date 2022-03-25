package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/Michelin?useSSL=false&serverTimezone=Asia/Seoul";
    String uid = "root";
    String pwd = "database";

    public userDAO() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,uid,pwd);

        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public int login(String userID, String userPassword) {
        String SQL = "SELECT userPassword FROM user WHERE userID = ?"; // Parameter 값으로 들어온 UserID를 '?'에 들어가게 해 줌.
        try{
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery(); // 들어온 Parameter값을 ResultSet에 담아줌.
            if (rs.next()){
                if(rs.getString(1).equals(userPassword)){
                    return 1; // 로그인 성공!!
                }else{
                    return 0; // 비밀번호 불일치!
                }
            }
            return -1; // ID가 존재하지 않음.
        } catch (Exception e){
            e.printStackTrace();
        }
        return -2; // DATABASE ERROR
    }
}
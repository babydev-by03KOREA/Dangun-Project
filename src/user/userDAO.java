package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@oracledatabase_medium?TNS_ADMIN=/Users/parkhyeongju/Downloads/Wallet_OracleDataBase";
    String uid = "ADMIN";
    String pwd = "database616125Os!";

    public userDAO() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,uid,pwd);

        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public int login(String userID, String userPassword) {
        String SQL = "SELECT userPassword FROM delicious_user WHERE userID = ?"; // Parameter 값으로 들어온 UserID를 '?'에 들어가게 해 줌.
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
    public int join(UserData user){
        String SQL = "INSERT INTO delicious_user values(?,?,?,?,?,?)";
        try{
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserName());
            pstmt.setString(4, user.getUserGender());
            pstmt.setString(5, user.getUserEmail());
            pstmt.setString(6, user.getUserAgreement());
            return pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return -1; // DB ERROR
    }
}

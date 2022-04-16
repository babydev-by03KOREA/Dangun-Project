package Restaurant;

import dbconnect.DBOpen;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ResDAO {

    public void ResData(ResDTO data) {
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = null;
        try {
            con = DBOpen.getConnection();
            sql = "INSERT INTO DELICIOUS VALUES(?,?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            // pstmt의 경우, 동적인  쿼리에 사용합니다. 즉, 거지같이 맨날 + 'method' +로 쿼리를 날리지 않아도 됨. (다만 연습은 하도록 하자..)
            // 오타로 골머리를 앓지 않아도 된다는뜻. prepareStatement(쿼리문)의 형식으로 이루어져야함. (ERROR 없어짐)
            pstmt.setString(1,data.getDangun());
            pstmt.setString(2,data.getType());
            pstmt.setString(3,data.getName());
            pstmt.setString(4,data.getPhone());
            pstmt.setString(5,data.getAddress());
            pstmt.setString(6,data.getDetail());
            pstmt.setString(7,data.getOpen());
            pstmt.setString(8,data.getClosed());
            pstmt.setString(9,data.getBreaktime1());
            pstmt.setString(10,data.getBreaktime2());
            pstmt.executeUpdate();
            // pstmt의 끝은 늘 executeUpdate()가 있어야함!
            /*
            executeQuery() => ResultSet(rs), SELECT문을 실행할 때 사용함.
            executeUpdate() => 삽입, 수정, 삭제와 관련된 SQL문 실행 시 사용함.
            */
        }catch(Exception e) {
            System.out.println("Your Commands was denied for "+e);
        } finally {
            try {
                if (pstmt != null) {pstmt.close();}
                if (con != null) {con.close();}
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

    public ArrayList<ResDTO> ResList() {
        ArrayList<ResDTO> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM DELICIOUS";
        try {
            con = DBOpen.getConnection();
            pstmt = con.prepareStatement(sql);
            // select문을 쓴다 => executeQuery() + ResultSet(rs)를 쓴다.
            // ResultSet은 try밖에다가 선언하도록 해요 ^^
            rs = pstmt.executeQuery();
            while(rs.next()) {
                ResDTO rdto = new ResDTO();

                rdto.setDangun(rs.getString(1));
                rdto.setType(rs.getString(2));
                rdto.setName(rs.getString(3));
                rdto.setPhone(rs.getString(4));
                rdto.setAddress(rs.getString(5));
                rdto.setDetail(rs.getString(6));
                rdto.setOpen(rs.getString(7));
                rdto.setClosed(rs.getString(8));
                rdto.setBreaktime1(rs.getString(9));
                rdto.setBreaktime2(rs.getString(10));
                list.add(rdto);
            }

        } catch (Exception e) {
            System.out.println("Your List Commands was denied for"+e);
        } finally {
            try {
                if (pstmt != null) {pstmt.close();}
                if (con != null) {con.close();}
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return list;
    }
}
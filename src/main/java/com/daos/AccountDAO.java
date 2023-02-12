package com.daos;

import com.db.DBConnection;
import com.models.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Huynh Chi Hai
 */
public class AccountDAO {

    private Connection conn = null;

    public AccountDAO() {
        conn = DBConnection.getConnection();
    }

    public Account checkAccount(String Username, String Password) {
        try {
            String query = "select * from account where username=? and password=?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, Username);
            pst.setString(2, Password);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                String db_user = rs.getString("Username");
                String db_pwd = rs.getString("Password");
                String db_SecurityAnswer = rs.getString("SecurityAnswer");
                String db_Fullname = rs.getString("Fullname");
                String db_PhoneNumber = rs.getString("PhoneNumber");
                String db_Gender = rs.getString("Gender");
                String db_Email = rs.getString("Email");

                Account acc = new Account(db_user, db_pwd, db_SecurityAnswer, db_Fullname, db_PhoneNumber, db_Gender, db_Email);
                if (db_user.equals(Username) && db_pwd.equals(Password)) {
                    return acc;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}

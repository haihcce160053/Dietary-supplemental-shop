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

    public Account getAccount(String Username) {
        try {
            String query = "select Account.Username, Account.Password, Account.SercurityAnswer, AccountInformation.AccountTypeID, AccountInformation.FullName,AccountInformation.Email, AccountInformation.Gender, AccountInformation.PhoneNumber from Account left outer join AccountInformation on Account.Username = AccountInformation.Username where Account.Username = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, Username);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String db_user = rs.getString("Username");
                String db_pwd = rs.getString("Password");
                String db_SecurityAnswer = rs.getString("SercurityAnswer");
                String db_Fullname = rs.getString("FullName");
                String db_PhoneNumber = rs.getString("PhoneNumber");
                String db_Gender = rs.getString("Gender");
                String db_Email = rs.getString("Email");
                String db_AccountTypeId = rs.getString("AccountTypeID");
                Account acc = new Account(db_user, db_pwd, db_SecurityAnswer, db_Fullname, db_PhoneNumber, db_Gender, db_Email, db_AccountTypeId);
                return acc;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     *
     * @param ac
     * @return
     */
    public int addNew(Account ac) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Account values(?,?,?)");
            pst.setString(1, ac.getUsername());
            pst.setString(2, ac.getPassword());
            pst.setString(3, ac.getSecurityAnswer());
            count = pst.executeUpdate();
            PreparedStatement pt = conn.prepareStatement("Insert into AccountInformation values(?,?,?,?,?,?)");
            pst.setString(1, ac.getUsername());
            pst.setString(2, ac.getAccountTypeId());
            pst.setString(3, ac.getFullname());
            pst.setInt(4, Integer.parseInt(ac.getPassword()));
            pst.setString(5, ac.getGender());
            pst.setString(6, ac.getEmail());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}

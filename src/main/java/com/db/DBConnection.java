package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Huynh Chi Hai
 */
public class DBConnection {
    private static Connection conn = null;
<<<<<<< HEAD
    private String machineName = "DESKTOP-TEIM7A0\\SQLEXPRESS";
    private String port = "1433";
    private String databaseName = "Project";
    private String user = "sa";
    private String password = "admin";
=======
    private final String machineName = "DESKTOP-14KGKKC";
    private final String port = "1433";
    private final String databaseName = "FIVESTORE";
    private final String user = "sa";
    private final String password = "Chihai4242";
>>>>>>> 6a8b4e9f3280775a9ec84de67498fd6858c0eb55

    //Connect to SQLServer
    public static Connection getConnection() {
        if (conn == null) {
            try {
                DBConnection db = new DBConnection();
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");                 
                String url = "jdbc:sqlserver://" + db.machineName + ": " + db.port + ";databaseName=" + db.databaseName + ";user=" + db.user + ";password=" + db.password + ";encrypt=true;trustServerCertificate=true";
                conn = DriverManager.getConnection(url);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return conn;
    }

    //Close connection of SQLServer
    public void closeConnection() {
        try {
            if (!conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

package permisos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleConnectionManager {

    private static final String URL = "jdbc";
    private static final String USER = "XXX";
    private static final String PASSWORD = "YYY";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

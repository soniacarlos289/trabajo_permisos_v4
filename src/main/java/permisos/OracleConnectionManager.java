package permisos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleConnectionManager {

    public static Connection getConnection() throws SQLException {
        String url = ConfigProperties.getDbOracleUrl();
        String user = ConfigProperties.getDbOracleUser();
        String password = ConfigProperties.getDbOraclePassword();
        return DriverManager.getConnection(url, user, password);
    }
}

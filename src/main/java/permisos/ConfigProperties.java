package permisos;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Clase utilidad para cargar y acceder a las propiedades de configuración
 * desde el archivo application.properties
 */
public class ConfigProperties {
    
    private static final Properties properties = new Properties();
    private static final String PROPERTIES_FILE = "application.properties";
    
    // Bloque estático para cargar las propiedades al inicializar la clase
    static {
        try (InputStream input = ConfigProperties.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE)) {
            if (input == null) {
                throw new RuntimeException("No se pudo encontrar el archivo " + PROPERTIES_FILE);
            }
            properties.load(input);
        } catch (IOException e) {
            throw new RuntimeException("Error al cargar el archivo de propiedades: " + PROPERTIES_FILE, e);
        }
    }
    
    /**
     * Obtiene el valor de una propiedad
     * @param key La clave de la propiedad
     * @return El valor de la propiedad o null si no existe
     */
    public static String getProperty(String key) {
        return properties.getProperty(key);
    }
    
    /**
     * Obtiene el valor de una propiedad con un valor por defecto
     * @param key La clave de la propiedad
     * @param defaultValue Valor por defecto si la propiedad no existe
     * @return El valor de la propiedad o el valor por defecto
     */
    public static String getProperty(String key, String defaultValue) {
        return properties.getProperty(key, defaultValue);
    }
    
    // Métodos específicos para Base de Datos Oracle - OracleConnectionManager
    public static String getDbOracleUrl() {
        return getProperty("db.oracle.url");
    }
    
    public static String getDbOracleUser() {
        return getProperty("db.oracle.user");
    }
    
    public static String getDbOraclePassword() {
        return getProperty("db.oracle.password");
    }
    
    // Métodos específicos para Base de Datos - actualiza_cursos
    public static String getDbCursosUrl() {
        return getProperty("db.cursos.url");
    }
    
    public static String getDbCursosUser() {
        return getProperty("db.cursos.user");
    }
    
    public static String getDbCursosPassword() {
        return getProperty("db.cursos.password");
    }
    
    // Métodos específicos para Base de Datos RRHH - JSP Connections
    public static String getDbRrhhDriver() {
        return getProperty("db.rrhh.driver");
    }
    
    public static String getDbRrhhUsername() {
        return getProperty("db.rrhh.username");
    }
    
    public static String getDbRrhhPassword() {
        return getProperty("db.rrhh.password");
    }
    
    public static String getDbRrhhString() {
        return getProperty("db.rrhh.string");
    }
    
    // Métodos específicos para API Savia Cloud
    public static String getApiSaviaUrl() {
        return getProperty("api.savia.url");
    }
    
    public static String getApiSaviaOauthToken() {
        return getProperty("api.savia.oauth.token");
    }
    
    // Métodos específicos para OAuth2
    public static String getOauthTokenRequestUrl() {
        return getProperty("oauth.token.request.url");
    }
    
    public static String getOauthClientId() {
        return getProperty("oauth.client.id");
    }
    
    public static String getOauthClientSecret() {
        return getProperty("oauth.client.secret");
    }
    
    public static String getOauthScope() {
        return getProperty("oauth.scope");
    }
    
    public static String getOauthResourceUrl() {
        return getProperty("oauth.resource.url");
    }
}

<%@ page import="permisos.ConfigProperties" %>
<%
// FileName="oracle_jdbc_conn.htm"
// Type="JDBC"
// HTTP="true"
// Catalog=""
// Schema=""
// Configuración cargada desde application.properties
String MM_RRHH_DRIVER = ConfigProperties.getDbRrhhDriver();
String MM_RRHH_USERNAME = ConfigProperties.getDbRrhhUsername();
String MM_RRHH_PASSWORD = ConfigProperties.getDbRrhhPassword();
String MM_RRHH_STRING = ConfigProperties.getDbRrhhString();
%>

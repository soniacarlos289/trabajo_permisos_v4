<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*"%> 
<%
	/**
	* Garantiza que la sesion tenga los atributos necesarios para el
	* correcto funcionamiento de las aplicaciones web corporativas.
	*/
	es.aytosalamanca.http.controller.session.SessionManager.touchSession(request); 
%>
<%@ include file="../../../Connections/RRHH.jsp" %>
<%
String RS__MMColParam1 = "0";
if (request.getParameter("ID")    !=null) {RS__MMColParam1 = (String)request.getParameter("ID")   ;}
%>
<%
String RS__MMColParam2 = "0";
if (request.getParameter("PERMISO")    !=null) {RS__MMColParam2 = (String)request.getParameter("PERMISO")   ;}
%>

<html>
<head>
<title>Justificante</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<body onunload="window.opener.location.reload()">
</head>
<body>



  <table>
  <tr>
    <td colspan="5"><form ACTION = "subirDoc.jsp?PERMISO=<%=RS__MMColParam2%>&ID_ENLACE=<%=RS__MMColParam1%>" METHOD="POST"   enctype = "multipart/form-data" name="form1">
     Justificante de Pemiso o Ausencia<br/> 
         Seleccionar archivo PDF menor de 1Mb:<br/> 
        
          <input type="file" name="file" accept="application/pdf" size = "50"/>
          
          <br /> 
     <input type = "submit" value = "Subir archivo" />   
       <input type="hidden" name="ID_ENLACE" value="<%= RS__MMColParam1 %>" size="16" maxlength="15">   
                        
                    </td>  </form>
                              


 </tr>
   </table>
  
   </div>
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

</html>

<%@page contentType="text/html; charset=iso-8859-1" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Demo - Men&uacute; Lateral Moderno</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
</head>
<body>

<!-- Include the sidebar menu -->
<%@ include file="menu.jsp" %>

<!-- Main content area with proper spacing for sidebar -->
<div class="content-wrapper">
    <div class="container-fluid">
        <h1>Demostraci&oacute;n del Men&uacute; Lateral Moderno</h1>
        
        <div class="card mt-4">
            <div class="card-header">
                <h3>Caracter&iacute;sticas del Nuevo Men&uacute;</h3>
            </div>
            <div class="card-body">
                <h4>Dise&ntilde;o Moderno</h4>
                <ul>
                    <li><strong>Esquema de colores azul y blanco</strong> - Integrado con custom-style.css</li>
                    <li><strong>Men&uacute; lateral fijo</strong> - Siempre visible en el lado izquierdo</li>
                    <li><strong>Resaltado din&aacute;mico</strong> - La opci&oacute;n activa se marca autom&aacute;ticamente</li>
                    <li><strong>Submen&uacute;s expandibles</strong> - Los men&uacute;s se expanden al pasar el mouse o al estar activos</li>
                    <li><strong>Iconos visuales</strong> - Cada opci&oacute;n tiene un icono representativo</li>
                    <li><strong>Responsive</strong> - Se adapta a dispositivos m&oacute;viles con bot&oacute;n de men&uacute;</li>
                </ul>
                
                <h4 class="mt-4">C&oacute;mo Usar</h4>
                <p>Para incluir este men&uacute; en cualquier p&aacute;gina JSP, simplemente agregue:</p>
                <pre><code>&lt;%@ include file="menu.jsp" %&gt;</code></pre>
                <p>Y envuelva su contenido en:</p>
                <pre><code>&lt;div class="content-wrapper"&gt;
    &lt;!-- Su contenido aqu&iacute; --&gt;
&lt;/div&gt;</code></pre>
                
                <h4 class="mt-4">Ventajas sobre el Men&uacute; de Pesta&ntilde;as</h4>
                <div class="row mt-3">
                    <div class="col-md-6">
                        <div class="alert alert-success">
                            <strong>Men&uacute; Lateral Moderno</strong>
                            <ul class="mb-0 mt-2">
                                <li>M&aacute;s espacio para contenido</li>
                                <li>Navegaci&oacute;n jer&aacute;rquica clara</li>
                                <li>Mejor organizaci&oacute;n visual</li>
                                <li>M&aacute;s opciones de men&uacute; disponibles</li>
                                <li>Experiencia de usuario moderna</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="alert alert-warning">
                            <strong>Men&uacute; de Pesta&ntilde;as Anterior</strong>
                            <ul class="mb-0 mt-2">
                                <li>Ocupa espacio horizontal valioso</li>
                                <li>Limitado n&uacute;mero de pesta&ntilde;as</li>
                                <li>Navegaci&oacute;n plana sin jerarqu&iacute;a</li>
                                <li>Menos intuitivo en m&oacute;viles</li>
                                <li>Apariencia menos moderna</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="card mt-4">
            <div class="card-header">
                <h3>Tabla de Ejemplo</h3>
            </div>
            <div class="card-body">
                <p>Ejemplo de contenido con el nuevo men&uacute; lateral:</p>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Funcionario</th>
                            <th>Tipo</th>
                            <th>Fecha</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Juan P&eacute;rez</td>
                            <td>Permiso</td>
                            <td>01/12/2024</td>
                            <td><span class="badge badge-success">Aprobado</span></td>
                        </tr>
                        <tr>
                            <td>Mar&iacute;a Garc&iacute;a</td>
                            <td>Ausencia</td>
                            <td>02/12/2024</td>
                            <td><span class="badge badge-warning">Pendiente</span></td>
                        </tr>
                        <tr>
                            <td>Carlos L&oacute;pez</td>
                            <td>Permiso</td>
                            <td>03/12/2024</td>
                            <td><span class="badge badge-danger">Rechazado</span></td>
                        </tr>
                        <tr>
                            <td>Ana Mart&iacute;nez</td>
                            <td>Ausencia</td>
                            <td>04/12/2024</td>
                            <td><span class="badge badge-success">Aprobado</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Tarjeta 1
                    </div>
                    <div class="card-body">
                        Ejemplo de tarjeta con contenido.
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Tarjeta 2
                    </div>
                    <div class="card-body">
                        Ejemplo de tarjeta con contenido.
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Tarjeta 3
                    </div>
                    <div class="card-body">
                        Ejemplo de tarjeta con contenido.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>

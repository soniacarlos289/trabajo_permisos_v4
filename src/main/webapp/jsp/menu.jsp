<%@ page contentType="text/html; charset=iso-8859-1" %>
<%
    // Get the current page URL for highlighting active menu items
    String currentPage = request.getRequestURI();
    String contextPath = request.getContextPath();
%>

<style>
/* Sidebar Menu Styles - Integrado con custom-style.css (azul y blanco) */
.sidebar-menu {
    width: 260px;
    min-height: 100vh;
    background: linear-gradient(180deg, var(--primary-blue) 0%, var(--dark-blue) 100%);
    position: fixed;
    top: 0;
    left: 0;
    overflow-y: auto;
    overflow-x: hidden;
    box-shadow: 2px 0 8px rgba(0,0,0,0.15);
    z-index: 1000;
    transition: transform 0.3s ease;
}

.sidebar-menu-header {
    padding: 20px 15px;
    background-color: rgba(0, 0, 0, 0.2);
    border-bottom: 2px solid rgba(255, 255, 255, 0.1);
    text-align: center;
}

.sidebar-menu-header h3 {
    color: var(--white);
    margin: 0;
    font-size: 1.2em;
    font-weight: 600;
}

.sidebar-menu ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.sidebar-menu-item {
    position: relative;
}

.sidebar-menu-link {
    display: block;
    padding: 14px 20px;
    color: var(--white);
    text-decoration: none;
    font-weight: 500;
    transition: all 0.3s ease;
    border-left: 4px solid transparent;
    font-size: 0.95em;
}

.sidebar-menu-link:hover {
    background-color: rgba(255, 255, 255, 0.1);
    border-left-color: var(--secondary-blue);
    color: var(--white);
    padding-left: 25px;
}

.sidebar-menu-link.active,
.sidebar-menu-item.active > .sidebar-menu-link {
    background-color: var(--secondary-blue);
    border-left-color: var(--white);
    font-weight: 600;
}

.sidebar-menu-link i {
    margin-right: 10px;
    width: 20px;
    display: inline-block;
    text-align: center;
}

/* Submenu styles */
.sidebar-submenu {
    list-style: none;
    padding: 0;
    margin: 0;
    background-color: rgba(0, 0, 0, 0.2);
    display: none;
}

.sidebar-menu-item.active > .sidebar-submenu,
.sidebar-menu-item:hover > .sidebar-submenu {
    display: block;
}

.sidebar-submenu-link {
    display: block;
    padding: 10px 20px 10px 45px;
    color: rgba(255, 255, 255, 0.85);
    text-decoration: none;
    font-size: 0.9em;
    transition: all 0.2s ease;
    border-left: 4px solid transparent;
}

.sidebar-submenu-link:hover {
    background-color: rgba(255, 255, 255, 0.1);
    color: var(--white);
    padding-left: 50px;
}

.sidebar-submenu-link.active {
    background-color: var(--secondary-blue);
    color: var(--white);
    font-weight: 500;
    border-left-color: var(--white);
}

/* Content wrapper to account for sidebar */
.content-wrapper {
    margin-left: 260px;
    padding: 20px;
    min-height: 100vh;
    background-color: var(--light-gray);
}

/* Mobile responsive */
@media (max-width: 768px) {
    .sidebar-menu {
        transform: translateX(-100%);
    }
    
    .sidebar-menu.mobile-open {
        transform: translateX(0);
    }
    
    .content-wrapper {
        margin-left: 0;
    }
    
    .mobile-menu-toggle {
        display: block;
        position: fixed;
        top: 10px;
        left: 10px;
        z-index: 1001;
        background-color: var(--primary-blue);
        color: var(--white);
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    }
}

@media (min-width: 769px) {
    .mobile-menu-toggle {
        display: none;
    }
}

/* Menu toggle icon */
.menu-toggle-icon {
    display: inline-block;
    font-size: 1.2em;
}
</style>

<!-- Mobile menu toggle button -->
<button class="mobile-menu-toggle" onclick="toggleSidebar()">
    <span class="menu-toggle-icon">&#9776;</span> Men&uacute;
</button>

<!-- Sidebar Navigation -->
<nav class="sidebar-menu" id="sidebarMenu">
    <div class="sidebar-menu-header">
        <h3>RRHH Sistema</h3>
    </div>
    
    <ul>
        <!-- Home / Buscar -->
        <li class="sidebar-menu-item <%= currentPage.contains("/index.jsp") || currentPage.contains("/index_busqueda.jsp") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/index.jsp" class="sidebar-menu-link">
                <i>&#127968;</i> Inicio / Buscar
            </a>
        </li>
        
        <!-- Permisos/Ausencias -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Permisos/") || currentPage.contains("/Ausencias/") || currentPage.contains("/Datos/") || currentPage.contains("/Firmas/") || currentPage.contains("/Horas/") || currentPage.contains("/Bolsa/") || currentPage.contains("/Finger/") ? "active" : "" %>">
            <a href="#" class="sidebar-menu-link">
                <i>&#128100;</i> Funcionario
            </a>
            <ul class="sidebar-submenu">
                <li><a href="<%= contextPath %>/jsp/gestion/Datos/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Datos/") ? "active" : "" %>">Datos Personales</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Permisos/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Permisos/") && !currentPage.contains("_vo_rrhh") ? "active" : "" %>">Permisos</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Ausencias/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Ausencias/") && !currentPage.contains("_vo_rrhh") ? "active" : "" %>">Ausencias</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Finger/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Finger/") ? "active" : "" %>">Fichajes</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Firmas/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Firmas/") ? "active" : "" %>">Firmas</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Horas/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Horas/") ? "active" : "" %>">Horas Extras</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Bolsa/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Bolsa/") && !currentPage.contains("_proceso") && !currentPage.contains("_concilia") ? "active" : "" %>">Bolsa</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Bolsa_concilia/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Bolsa_concilia/") ? "active" : "" %>">Bolsa Conciliaci&oacute;n</a></li>
            </ul>
        </li>
        
        <!-- Autorizar -->
        <li class="sidebar-menu-item <%= currentPage.contains("_vo_rrhh") ? "active" : "" %>">
            <a href="#" class="sidebar-menu-link">
                <i>&#10004;</i> Autorizar
            </a>
            <ul class="sidebar-submenu">
                <li><a href="<%= contextPath %>/jsp/gestion/Permisos_vo_rrhh/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Permisos_vo_rrhh/") ? "active" : "" %>">Permisos</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Ausencias_vo_rrhh/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Ausencias_vo_rrhh/") ? "active" : "" %>">Ausencias</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Fichajes_vo_rrhh/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Fichajes_vo_rrhh/") ? "active" : "" %>">Fichajes</a></li>
            </ul>
        </li>
        
        <!-- Finger Application -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Finger_apl/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/Finger_apl/index.jsp" class="sidebar-menu-link">
                <i>&#128336;</i> Aplicaci&oacute;n Finger
            </a>
        </li>
        
        <!-- Horas Sindicales -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Gestion/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/Gestion/index.jsp" class="sidebar-menu-link">
                <i>&#128197;</i> Horas Sindicales
            </a>
        </li>
        
        <!-- Proceso Bolsa -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Bolsa_proceso/") ? "active" : "" %>">
            <a href="#" class="sidebar-menu-link">
                <i>&#128200;</i> Proceso Mensual Saldos
            </a>
            <ul class="sidebar-submenu">
                <li><a href="<%= contextPath %>/jsp/gestion/Bolsa_proceso/index.jsp" class="sidebar-submenu-link <%= currentPage.contains("/Bolsa_proceso/index.jsp") ? "active" : "" %>">SNP</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Bolsa_proceso/index_policias.jsp" class="sidebar-submenu-link <%= currentPage.contains("index_policias") ? "active" : "" %>">POLIC&Iacute;AS</a></li>
                <li><a href="<%= contextPath %>/jsp/gestion/Bolsa_proceso/index_bomberos.jsp" class="sidebar-submenu-link <%= currentPage.contains("index_bomberos") ? "active" : "" %>">BOMBEROS</a></li>
            </ul>
        </li>
        
        <!-- Calendario Laboral -->
        <li class="sidebar-menu-item <%= currentPage.contains("/calendario_laboral/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/calendario_laboral/index.jsp" class="sidebar-menu-link">
                <i>&#128198;</i> Calendario Laboral
            </a>
        </li>
        
        <!-- Bajas Fichero -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Bajas/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/Bajas/index.jsp" class="sidebar-menu-link">
                <i>&#128196;</i> Bajas Fichero
            </a>
        </li>
        
        <!-- Informes -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Informes/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/Informes/index_informes.jsp" class="sidebar-menu-link">
                <i>&#128202;</i> Informes
            </a>
        </li>
        
        <!-- Formacion -->
        <li class="sidebar-menu-item <%= currentPage.contains("/Formacion/") ? "active" : "" %>">
            <a href="<%= contextPath %>/jsp/gestion/Formacion/index_formacion.jsp" class="sidebar-menu-link">
                <i>&#127891;</i> Formaci&oacute;n
            </a>
        </li>
    </ul>
</nav>

<script>
// Toggle sidebar for mobile devices
function toggleSidebar() {
    var sidebar = document.getElementById('sidebarMenu');
    sidebar.classList.toggle('mobile-open');
}

// Close sidebar when clicking outside on mobile
document.addEventListener('click', function(event) {
    if (window.innerWidth <= 768) {
        var sidebar = document.getElementById('sidebarMenu');
        var toggleBtn = document.querySelector('.mobile-menu-toggle');
        
        if (!sidebar.contains(event.target) && !toggleBtn.contains(event.target)) {
            sidebar.classList.remove('mobile-open');
        }
    }
});

// Prevent menu links from closing sidebar immediately
document.querySelectorAll('.sidebar-menu-link, .sidebar-submenu-link').forEach(function(link) {
    link.addEventListener('click', function(e) {
        // If it's a parent menu item with submenu, prevent default
        if (this.classList.contains('sidebar-menu-link') && this.nextElementSibling && this.nextElementSibling.classList.contains('sidebar-submenu')) {
            e.preventDefault();
            var parentLi = this.closest('.sidebar-menu-item');
            parentLi.classList.toggle('active');
        }
    });
});
</script>

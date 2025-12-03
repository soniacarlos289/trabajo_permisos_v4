# Implementación de Menú Lateral Moderno

## Descripción General

Se ha creado un sistema de menú lateral moderno para reemplazar los menús tipo tab y subtab existentes en las páginas JSP del proyecto. El nuevo menú ofrece:

- **Diseño Moderno**: Menú lateral fijo con esquema de colores azul y blanco
- **Resaltado Dinámico**: Detección automática de la página activa
- **Navegación Jerárquica**: Menús y submenús expandibles
- **Diseño Responsive**: Se adapta automáticamente a dispositivos móviles
- **Integración con Bootstrap**: Compatible con el diseño existente

## Archivo Principal: menu.jsp

Ubicación: `/src/main/webapp/jsp/menu.jsp`

Este archivo contiene:
- Estructura HTML del menú lateral
- Estilos CSS integrados con custom-style.css
- JavaScript para funcionalidad interactiva
- Lógica de resaltado dinámico basado en URL actual

## Características del Menú

### 1. Esquema de Colores Azul y Blanco

El menú utiliza las variables CSS definidas en `custom-style.css`:

```css
--primary-blue: #1e5da8    /* Fondo principal del menú */
--dark-blue: #0d47a1        /* Degradado del menú */
--secondary-blue: #3498db   /* Elemento activo */
--white: #ffffff            /* Texto y bordes */
```

### 2. Estructura del Menú

El menú incluye las siguientes secciones principales:

1. **Inicio / Buscar** - Página principal de búsqueda de funcionarios
2. **Funcionario** - Submenu con:
   - Datos Personales
   - Permisos
   - Ausencias
   - Fichajes
   - Firmas
   - Horas Extras
   - Bolsa
   - Bolsa Conciliación
3. **Autorizar** - Submenu con:
   - Permisos
   - Ausencias
   - Fichajes
4. **Aplicación Finger** - Gestión de fichajes
5. **Horas Sindicales** - Gestión de horas sindicales
6. **Proceso Mensual Saldos** - Submenu con:
   - SNP
   - POLICÍAS
   - BOMBEROS
7. **Calendario Laboral** - Gestión de calendarios
8. **Bajas Fichero** - Gestión de bajas
9. **Informes** - Generación de informes
10. **Formación** - Gestión de formación

### 3. Resaltado Dinámico

El menú detecta automáticamente la página actual y:
- Marca el elemento de menú correspondiente con clase `active`
- Expande el submenú si la página está dentro de una sección
- Resalta con color azul secundario (#3498db) el elemento activo

La detección se basa en la URL de la página (`request.getRequestURI()`).

### 4. Diseño Responsive

En dispositivos móviles (< 768px):
- El menú se oculta por defecto (fuera de pantalla)
- Aparece un botón "☰ Menú" en la esquina superior izquierda
- Al hacer clic, el menú se desliza hacia la vista
- Se cierra automáticamente al hacer clic fuera del menú

## Cómo Integrar el Menú en una Página JSP

### Opción 1: Integración Completa (Recomendada)

Para páginas que anteriormente usaban los menús `#tabh` y `#subtabh`:

**ANTES:**
```jsp
<body>
<div id="apliweb-tabform">
<div>
<ul id="tabh">
    <li id="active"><a href="#">Permisos/Ausencias</a></li>
    <li><a href="...">Autorizar</a></li>
    <!-- más pestañas -->
</ul>
</div>
<div id="form">
    <ul id="subtabh">
        <li><a href="#">Datos per.</a></li>
        <!-- más subpestañas -->
    </ul>
    <div id="subform">
        <!-- Contenido -->
    </div>
</div>
</div>
</body>
```

**DESPUÉS:**
```jsp
<body>

<!-- Include the sidebar menu -->
<%@ include file="menu.jsp" %>

<!-- Main content area with proper spacing for sidebar -->
<div class="content-wrapper">
    <!-- Contenido -->
</div>

<script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
</body>
```

### Opción 2: Para Nuevas Páginas

```jsp
<%@page contentType="text/html; charset=iso-8859-1" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Título de la Página</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
</head>
<body>

<!-- Include the sidebar menu -->
<%@ include file="../../menu.jsp" %>

<!-- Main content area -->
<div class="content-wrapper">
    <div class="container-fluid">
        <h1>Título del Contenido</h1>
        
        <!-- Tu contenido aquí -->
        
    </div>
</div>

<script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
```

**Nota Importante:** Ajusta la ruta del `include` según la ubicación de tu página JSP:
- Si la página está en `/jsp/`: use `file="menu.jsp"`
- Si la página está en `/jsp/gestion/`: use `file="../menu.jsp"`
- Si la página está en `/jsp/gestion/Ausencias/`: use `file="../../menu.jsp"`

## Páginas Ya Actualizadas

Las siguientes páginas ya han sido actualizadas para usar el nuevo menú:

1. `/jsp/index.jsp` - Página principal
2. `/jsp/gestion/Ausencias/index.jsp` - Lista de ausencias
3. `/jsp/gestion/Ausencias/ver.jsp` - Visualización de ausencia
4. `/jsp/demo-menu-lateral.jsp` - Página de demostración

## Estilos CSS Proporcionados

El archivo `menu.jsp` incluye estilos CSS integrados que proporcionan:

### Clases Principales:

- `.sidebar-menu` - Contenedor principal del menú lateral
- `.sidebar-menu-header` - Encabezado del menú (título "RRHH Sistema")
- `.sidebar-menu-link` - Enlaces del menú principal
- `.sidebar-submenu` - Contenedor de submenús
- `.sidebar-submenu-link` - Enlaces de submenús
- `.content-wrapper` - Contenedor del contenido principal (con margen izquierdo de 260px)
- `.mobile-menu-toggle` - Botón de menú para móviles

### Estados:

- `.active` - Elemento de menú activo (página actual)
- `:hover` - Efecto hover (fondo más claro, desplazamiento)

## Ventajas del Nuevo Menú

### vs. Menú de Pestañas Anterior

| Aspecto | Menú Anterior (Tabs) | Menú Lateral Nuevo |
|---------|---------------------|-------------------|
| **Espacio Vertical** | Ocupa mucho espacio | Solo encabezado |
| **Número de Opciones** | Limitado | Ilimitado |
| **Jerarquía** | Plana (difícil de organizar) | Jerárquica (menús/submenús) |
| **Mobile** | Difícil de usar | Optimizado con botón |
| **Visual** | Horizontal, anticuado | Vertical, moderno |
| **Mantenibilidad** | HTML repetido en cada página | Un solo archivo centralizado |

### Beneficios Adicionales:

1. **Consistencia**: Todas las páginas tienen el mismo menú
2. **Mantenibilidad**: Cambios en un solo lugar (`menu.jsp`)
3. **Accesibilidad**: Mejor navegación por teclado
4. **Performance**: Menos HTML repetido = archivos más pequeños
5. **UX**: Navegación más intuitiva y moderna
6. **Responsive**: Funciona perfectamente en móviles y tablets

## Personalización

### Cambiar Colores

Edita las variables CSS en `custom-style.css`:

```css
:root {
    --primary-blue: #1e5da8;    /* Color principal */
    --secondary-blue: #3498db;  /* Color activo */
    --dark-blue: #0d47a1;       /* Color oscuro */
}
```

### Añadir Nueva Opción de Menú

Edita `menu.jsp` y agrega un nuevo elemento `<li>`:

```jsp
<!-- Nuevo menú sin submenús -->
<li class="sidebar-menu-item <%= currentPage.contains("/NuevoModulo/") ? "active" : "" %>">
    <a href="<%= contextPath %>/jsp/gestion/NuevoModulo/index.jsp" class="sidebar-menu-link">
        <i>🔧</i> Nuevo Módulo
    </a>
</li>

<!-- Nuevo menú con submenús -->
<li class="sidebar-menu-item <%= currentPage.contains("/NuevoModulo/") ? "active" : "" %>">
    <a href="#" class="sidebar-menu-link">
        <i>🔧</i> Nuevo Módulo
    </a>
    <ul class="sidebar-submenu">
        <li><a href="<%= contextPath %>/jsp/gestion/NuevoModulo/opcion1.jsp" 
               class="sidebar-submenu-link <%= currentPage.contains("opcion1") ? "active" : "" %>">
               Opción 1</a></li>
        <li><a href="<%= contextPath %>/jsp/gestion/NuevoModulo/opcion2.jsp" 
               class="sidebar-submenu-link <%= currentPage.contains("opcion2") ? "active" : "" %>">
               Opción 2</a></li>
    </ul>
</li>
```

### Cambiar Ancho del Menú

Edita los valores en `menu.jsp`:

```css
.sidebar-menu {
    width: 260px;  /* Cambiar este valor */
}

.content-wrapper {
    margin-left: 260px;  /* Debe coincidir con el ancho del menú */
}
```

## Compatibilidad

- **Navegadores**: Chrome, Firefox, Safari, Edge (últimas versiones)
- **Dispositivos**: Desktop, Tablet, Mobile
- **Bootstrap**: Compatible con Bootstrap 5.3.0
- **JSP**: Compatible con JSP 2.3+

## Resolución de Problemas

### El menú no aparece
- Verifica que la ruta del `include` sea correcta
- Asegúrate de que `custom-style.css` esté cargado

### El menú no se resalta correctamente
- Verifica que la URL actual coincida con los patrones en `menu.jsp`
- Usa `<%= request.getRequestURI() %>` para debug

### El menú se superpone al contenido
- Asegúrate de usar el `<div class="content-wrapper">` alrededor del contenido

### El botón móvil no funciona
- Verifica que `bootstrap.bundle.min.js` esté cargado al final del `<body>`

## Página de Demo

Para ver el menú en acción, accede a:
```
/jsp/demo-menu-lateral.jsp
```

Esta página muestra:
- Menú lateral completo
- Ejemplos de contenido (tablas, tarjetas, etc.)
- Documentación de uso
- Comparativa con el menú anterior

## Próximos Pasos

Para completar la migración a los nuevos menús:

1. **Actualizar páginas restantes**:
   - Identificar todas las páginas con `#tabh` y `#subtabh`
   - Reemplazar por el nuevo menú lateral
   - Probar cada página modificada

2. **Eliminar código obsoleto**:
   - Una vez migradas todas las páginas, los estilos de `#tabh` y `#subtabh` en `custom-style.css` pueden marcarse como legacy

3. **Documentar cambios**:
   - Actualizar el README del proyecto
   - Crear guía de usuario si es necesario

## Autor y Fecha

- **Implementación**: Diciembre 2024
- **Versión**: 1.0
- **Framework**: Bootstrap 5.3.0
- **Compatibilidad**: JSP 2.3+, Java 8+

---

Para más información o soporte, consulta los archivos:
- `/resources/css/custom-style.css` - Estilos personalizados
- `BOOTSTRAP_IMPLEMENTATION.md` - Documentación de Bootstrap
- `DESIGN_FEATURES.md` - Características de diseño

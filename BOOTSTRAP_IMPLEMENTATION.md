# Bootstrap y Diseño Visual - Actualización del Proyecto

## Resumen de Cambios

Se ha actualizado el diseño visual de todas las páginas JSP del proyecto incorporando Bootstrap 5 y una hoja de estilos personalizada con esquema de colores azul y blanco.

## Archivos Añadidos

### 1. Recursos CSS y JavaScript (Alojados Localmente)

Por restricciones de red del servidor, todos los archivos se alojan localmente en el proyecto:

```
src/main/webapp/resources/
├── css/
│   ├── bootstrap.min.css       (Bootstrap 5.3.0 - versión minificada)
│   └── custom-style.css        (Estilos personalizados del proyecto)
├── js/
│   └── bootstrap.bundle.min.js (Bootstrap JS con Popper incluido)
└── fonts/
    (directorio reservado para fuentes futuras)
```

### 2. Archivos de Inclusión Comunes

Se han creado archivos JSP compartidos para facilitar el mantenimiento:

```
src/main/webapp/jsp/common/
├── header.jsp    (Referencias a CSS y meta tags)
└── footer.jsp    (Referencias a JavaScript)
```

## Características del Diseño

### Esquema de Colores

El diseño utiliza una paleta de colores azul y blanco profesional:

- **Azul Primario:** `#1e5da8` - Para títulos y elementos principales
- **Azul Secundario:** `#3498db` - Para elementos interactivos
- **Azul Claro:** `#e3f2fd` - Para fondos y destacados
- **Azul Oscuro:** `#0d47a1` - Para énfasis y hover
- **Blanco:** `#ffffff` - Para fondos y texto sobre azul
- **Gris Claro:** `#f5f5f5` - Para fondos de página

### Componentes Estilizados

1. **Navegación por Pestañas**
   - Diseño horizontal con gradiente azul
   - Efecto hover con fondo blanco
   - Borde redondeado y sombra suave

2. **Formularios**
   - Campos con bordes redondeados
   - Efecto focus con sombra azul
   - Botones con gradiente y efecto hover

3. **Tablas**
   - Encabezados con gradiente azul
   - Filas alternadas para mejor legibilidad
   - Efecto hover en filas

4. **Tarjetas y Paneles**
   - Bordes redondeados
   - Sombra suave para profundidad
   - Encabezados destacados

### Diseño Responsive

El diseño es totalmente responsive y se adapta a diferentes tamaños de pantalla:

- Navegación por pestañas se convierte en vertical en móviles
- Tablas ajustadas para pantallas pequeñas
- Imágenes escalables

## Archivos Modificados

Se han actualizado **191 archivos JSP** en todo el proyecto:

- `/jsp/index.jsp` (página principal)
- `/jsp/gestion/*` (todas las páginas de gestión)
- `/jsp/permisos/*` (páginas de permisos)
- Y muchos más...

Cada archivo JSP ahora incluye:

```jsp
<head>
    ...
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
</head>
<body>
    ...
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
</body>
```

## Compatibilidad

- **Bootstrap Version:** 5.3.0
- **Navegadores Soportados:** Chrome, Firefox, Safari, Edge (últimas versiones)
- **Codificación:** ISO-8859-1 (mantiene compatibilidad con archivos existentes)
- **Java Version:** 1.8+
- **Servidor:** Compatible con cualquier servidor que soporte JSP 2.3+

## Ventajas del Nuevo Diseño

1. **Profesional:** Apariencia moderna y limpia
2. **Consistente:** Mismo diseño en todas las páginas
3. **Mantenible:** Estilos centralizados en archivos CSS
4. **Accesible:** Mejor legibilidad y navegación
5. **Responsive:** Funciona en móviles, tablets y escritorio
6. **Sin Dependencias Externas:** Todo alojado localmente

## Uso de los Estilos Personalizados

### Clases CSS Disponibles

El archivo `custom-style.css` proporciona clases personalizadas:

```css
/* Badges de estado */
.badge-primary
.badge-success
.badge-warning
.badge-danger

/* Alertas */
.alert-success
.alert-error
.alert-warning
.alert-info

/* Tarjetas */
.card
.card-header
.panel
.panel-header

/* Contenedores de búsqueda */
.search-container
.search-title
```

### Componentes de Bootstrap Disponibles

Todos los componentes estándar de Bootstrap 5 están disponibles:

- Grid System (row, col-*)
- Forms (form-control, form-select, btn)
- Tables (table, table-striped, table-bordered)
- Cards (card, card-body, card-header)
- Alerts (alert)
- Badges (badge)
- Utilities (mt-*, mb-*, p-*, text-center, etc.)

## Mantenimiento Futuro

### Para Agregar Nuevas Páginas JSP

Al crear nuevas páginas JSP, incluir en el `<head>`:

```jsp
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
```

Y antes de cerrar `</body>`:

```jsp
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
```

### Para Modificar Colores

Editar las variables CSS en `custom-style.css`:

```css
:root {
    --primary-blue: #1e5da8;
    --secondary-blue: #3498db;
    /* ... otros colores ... */
}
```

### Para Actualizar Bootstrap

1. Descargar nuevas versiones de:
   - `bootstrap.min.css`
   - `bootstrap.bundle.min.js`
2. Reemplazar archivos en `/resources/css/` y `/resources/js/`
3. Probar compatibilidad con estilos personalizados

## Verificación de la Instalación

Para verificar que el diseño se ha aplicado correctamente:

1. Compilar el proyecto: `mvn clean package`
2. Desplegar en el servidor
3. Abrir cualquier página JSP en el navegador
4. Verificar que:
   - Los colores azul y blanco se aplican correctamente
   - Las tablas tienen estilo con encabezados azules
   - Los botones tienen efecto hover
   - La navegación por pestañas funciona correctamente

## Estructura del WAR Generado

El archivo WAR incluye los nuevos recursos:

```
permisos-0.0.1-SNAPSHOT.war
├── WEB-INF/
├── resources/
│   ├── css/
│   │   ├── bootstrap.min.css
│   │   └── custom-style.css
│   └── js/
│       └── bootstrap.bundle.min.js
└── jsp/
    └── ... (todas las páginas JSP actualizadas)
```

## Soporte y Documentación

- **Bootstrap Documentation:** https://getbootstrap.com/docs/5.3/
- **Custom CSS:** Ver comentarios en `/resources/css/custom-style.css`
- **Grid System:** https://getbootstrap.com/docs/5.3/layout/grid/
- **Components:** https://getbootstrap.com/docs/5.3/components/

---

**Fecha de Actualización:** Diciembre 2024  
**Versión Bootstrap:** 5.3.0  
**Archivos Actualizados:** 191 JSP + 3 CSS/JS + 2 includes

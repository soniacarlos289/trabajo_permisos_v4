# Características de Diseño - Ejemplos de Uso

## Paleta de Colores Aplicada

### Colores Principales
```css
Azul Primario:    #1e5da8  ████████
Azul Secundario:  #3498db  ████████
Azul Claro:       #e3f2fd  ████████
Azul Oscuro:      #0d47a1  ████████
Blanco:           #ffffff  ████████
Gris Claro:       #f5f5f5  ████████
```

## Componentes Estilizados

### 1. Navegación por Pestañas (Tabs)

Las pestañas de navegación ahora tienen:
- Fondo con gradiente azul (de #1e5da8 a #3498db)
- Texto blanco
- Efecto hover que cambia el fondo a blanco y el texto a azul
- Bordes redondeados
- Sombra suave

**Código HTML:**
```html
<div id="apliweb-tabform">
    <div>
        <ul id="tabh">
            <li id="active"><a href="#" id="current">Permisos/Ausencias</a></li>
            <li><a href="gestion/Permisos_vo_rrhh/index.jsp">Autorizar</a></li>
            <li><a href="gestion/Finger_apl/index.jsp">Finger</a></li>
            <li><a href="gestion/Gestion/index.jsp">Horas Sindicales</a></li>
        </ul>
    </div>
    <div id="form">
        <!-- Contenido de la página -->
    </div>
</div>
```

### 2. Formularios

Los campos de formulario tienen:
- Bordes redondeados
- Efecto focus con borde azul y sombra
- Botones con gradiente y efecto hover elevado

**Código HTML:**
```html
<form name="formConsulta" method="GET" action="gestion/result.jsp">
    <input type="text" name="ID_USUARIO" class="form-control" placeholder="Buscar funcionario">
    <input type="submit" name="Buscar" value="Buscar" class="btn btn-primary">
</form>
```

### 3. Tablas

Las tablas ahora tienen:
- Encabezados con gradiente azul
- Texto blanco en encabezados
- Filas alternadas (zebra striping)
- Efecto hover en filas
- Bordes redondeados

**Código HTML:**
```html
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
            <td>Juan Pérez</td>
            <td>Permiso</td>
            <td>01/12/2024</td>
            <td><span class="badge badge-success">Aprobado</span></td>
        </tr>
    </tbody>
</table>
```

### 4. Tarjetas (Cards)

Las tarjetas tienen:
- Fondo blanco
- Encabezado con gradiente azul
- Sombra suave
- Bordes redondeados

**Código HTML:**
```html
<div class="card">
    <div class="card-header">
        Título de la Tarjeta
    </div>
    <div class="card-body">
        Contenido de la tarjeta
    </div>
</div>
```

### 5. Alertas y Mensajes

Las alertas tienen colores distintivos:
- Éxito: Verde
- Error: Rojo
- Advertencia: Amarillo
- Información: Azul claro

**Código HTML:**
```html
<div class="alert alert-success">
    Operación realizada con éxito
</div>

<div class="alert alert-error">
    Error al procesar la solicitud
</div>

<div class="alert alert-warning">
    Advertencia: Revise los datos ingresados
</div>

<div class="alert alert-info">
    Información: Complete todos los campos requeridos
</div>
```

### 6. Badges (Etiquetas de Estado)

Los badges tienen diferentes colores según el estado:

**Código HTML:**
```html
<span class="badge badge-primary">Pendiente</span>
<span class="badge badge-success">Aprobado</span>
<span class="badge badge-warning">En Revisión</span>
<span class="badge badge-danger">Rechazado</span>
```

### 7. Botones

Los botones tienen varios estilos disponibles:

**Código HTML:**
```html
<button class="btn btn-primary">Guardar</button>
<button class="btn btn-secondary">Cancelar</button>
<button class="btn btn-success">Aprobar</button>
<button class="btn btn-danger">Eliminar</button>
<button class="btn btn-warning">Advertencia</button>
<button class="btn btn-info">Información</button>
```

## Grid System de Bootstrap

El sistema de grid permite crear layouts responsive:

**Código HTML:**
```html
<div class="container">
    <div class="row">
        <div class="col-md-6">
            Columna izquierda (50% en desktop)
        </div>
        <div class="col-md-6">
            Columna derecha (50% en desktop)
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">33%</div>
        <div class="col-md-4">33%</div>
        <div class="col-md-4">33%</div>
    </div>
</div>
```

## Utilidades de Espaciado

Bootstrap proporciona clases para espaciado:

```html
<!-- Márgenes -->
<div class="mt-3">Margen superior</div>
<div class="mb-3">Margen inferior</div>
<div class="mx-3">Margen horizontal</div>
<div class="my-3">Margen vertical</div>

<!-- Padding -->
<div class="p-3">Padding en todos los lados</div>
<div class="px-3">Padding horizontal</div>
<div class="py-3">Padding vertical</div>
```

## Utilidades de Texto

```html
<p class="text-center">Texto centrado</p>
<p class="text-start">Texto alineado a la izquierda</p>
<p class="text-end">Texto alineado a la derecha</p>
```

## Compatibilidad Responsive

El diseño se adapta automáticamente a diferentes tamaños de pantalla:

- **Desktop (≥1200px):** Layout completo con todas las columnas
- **Tablet (768-1199px):** Layout ajustado, tablas más compactas
- **Móvil (<768px):** Layout apilado verticalmente, navegación vertical

## Ejemplos de Páginas Actualizadas

### Página Principal (index.jsp)
- Navegación por pestañas con gradiente azul
- Formulario de búsqueda estilizado
- Imagen responsiva

### Gestión de Ausencias (gestion/Ausencias/index.jsp)
- Tabla estilizada con encabezados azules
- Botones de acción con iconos
- Filtros de búsqueda con formularios Bootstrap

### Gestión de Permisos (gestion/Permisos/index.jsp)
- Lista de permisos en tabla responsive
- Estados con badges de colores
- Acciones rápidas con botones estilizados

## Mejoras de Accesibilidad

- Meta viewport para dispositivos móviles
- Contraste de colores adecuado (WCAG AA)
- Estructura semántica HTML5
- Formularios con labels asociados

## Mejoras de Rendimiento

- CSS y JS minificados
- Recursos alojados localmente (sin dependencias CDN)
- Carga única de recursos en el head
- JavaScript al final del body para carga optimizada

## Mantenimiento y Extensibilidad

Para agregar nuevos estilos personalizados:

1. Editar `/resources/css/custom-style.css`
2. Usar las variables CSS existentes
3. Seguir las convenciones de nomenclatura BEM
4. Documentar los cambios en este archivo

```css
/* Ejemplo de nuevo componente */
.mi-componente {
    background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
    color: var(--white);
    padding: 1rem;
    border-radius: 8px;
}
```

## Soporte de Navegadores

- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+
- Opera 76+

## Conclusión

El nuevo diseño proporciona:
✓ Apariencia profesional y moderna
✓ Consistencia visual en todas las páginas
✓ Responsive design para todos los dispositivos
✓ Mejor usabilidad y experiencia de usuario
✓ Mantenibilidad mejorada con CSS centralizado
✓ Sin dependencias externas (todo local)

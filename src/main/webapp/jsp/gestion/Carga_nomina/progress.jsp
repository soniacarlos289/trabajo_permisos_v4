<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Progreso de Procesado</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/custom-style.css">
  </head>
  <body>
    <h2>Procesando nóminas…</h2>
    <div id="status">Inicializando…</div>

    <script>
      const statusDiv = document.getElementById('status');
      // Cada segundo pedimos el progreso
      const intervalId = setInterval(async () => {
        try {
          const resp = await fetch('/permisos/uploadProgress');
          const data = await resp.json();
          statusDiv.textContent = 
            `Procesadas ${data.done} de ${data.total} página(s).`;
          if (data.done >= data.total) {
            clearInterval(intervalId);
            statusDiv.textContent += ' ¡Terminado!';
            //  cerrar la ventana emergente tras un breve retraso
            setTimeout(() => window.close(), 1000);
          }
        } catch (e) {
          statusDiv.textContent = 'Error obteniendo progreso.';
          clearInterval(intervalId);
        }
      }, 1000);
    </script>
  <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

</html>




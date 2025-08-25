<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.text.*" %>
<%
  // ====== Datos dinámicos de ejemplo (puedes editar) ======
  class Proyecto {
    String titulo, desc, imagen, enlace, tech;
    Proyecto(String t, String d, String i, String e, String te) {
      titulo=t; desc=d; imagen=i; enlace=e; tech=te;
    }
  }
  List<Proyecto> proyectos = Arrays.asList(
    new Proyecto("Gestor de Tareas", "CRUD básico de tareas y recordatorios.", "../img/proyecto1.png", "#", "HTML, CSS, JS"),
    new Proyecto("Portafolio Web", "Sitio personal responsivo con Bootstrap.", "../img/proyecto2.png", "#", "HTML, CSS, Bootstrap"),
    new Proyecto("Demo JSP", "Página dinámica con fecha y listado.", "../img/proyecto3.png", "#", "JSP, Java")
  );

  // Fecha/hora formateada
  Date ahora = new Date();
  SimpleDateFormat sdf = new SimpleDateFormat("EEEE d 'de' MMMM 'de' yyyy, HH:mm", new Locale("es","CL"));
  String fechaFormateada = sdf.format(ahora);
%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Proyectos (JSP) - Portafolio</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap + estilos -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/estilos.css">
</head>
<body>
<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="../index.html">Mi Portafolio</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="menu">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="../proyectos.html">Proyectos (HTML)</a></li>
        <li class="nav-item"><a class="nav-link active" href="./proyectos.jsp">Proyectos (JSP)</a></li>
        <li class="nav-item"><a class="nav-link" href="../habilidades.html">Habilidades</a></li>
        <li class="nav-item"><a class="nav-link" href="../experiencia.html">Experiencia</a></li>
        <li class="nav-item"><a class="nav-link" href="../contacto.html">Contacto</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- HEADER -->
<header class="text-white text-center py-5" style="background: linear-gradient(135deg,#0d6efd,#5a8cff);">
  <div class="container">
    <h1 class="fw-bold">Proyectos (JSP dinámico)</h1>
    <p class="lead mb-0">Fecha actual: <strong><%= fechaFormateada %></strong></p>
    <p class="mb-0">Total de proyectos: <span class="badge bg-light text-dark"><%= proyectos.size() %></span></p>
  </div>
</header>

<!-- LISTADO DINÁMICO -->
<section class="container my-5">
  <div class="row g-4">
    <%
      for (Proyecto p : proyectos) {
    %>
    <div class="col-md-4">
      <div class="card h-100 shadow">
        <img src="<%= p.imagen %>" class="card-img-top" alt="<%= p.titulo %>">
        <div class="card-body">
          <h5 class="card-title"><%= p.titulo %></h5>
          <p class="card-text"><%= p.desc %></p>
          <span class="badge text-bg-secondary"><%= p.tech %></span>
        </div>
        <div class="card-footer bg-white border-0">
          <a href="<%= p.enlace %>" class="btn btn-primary w-100">Ver más</a>
        </div>
      </div>
    </div>
    <%
      }
    %>
  </div>
</section>

<!-- FOOTER -->
<footer class="bg-dark text-white text-center py-3">
  <p class="mb-0">© 2025 - Mi Portafolio | Página JSP</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

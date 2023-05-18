<!DOCTYPE html>
<html>
<head>
  <title>Mi Curriculum Web</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Mi Curriculum Web</h1>
  

  <?php
  include 'conexion/conexion.php';

  // Consulta para obtener los datos personales
  $sql = "SELECT nombre, telefono, direccion, sitio_web, correo_electronico FROM datospersonales";
  $result = mysqli_query($conn, $sql);

  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    echo "<div class='card'>";
    echo "<div class='card-front'>";
    echo "<div class='profile-pic'><img src='img/fotoperfil.jpg' alt='Foto de perfil'></div>";
    echo "<p><strong class='hover-effect'>Nombre:</strong> " . $row["nombre"] . "</p>";
    echo "<p class='hover-hint'>Pasa el mouse para ver más</p>";
    echo "</div>";
    echo "<div class='card-back'>";
    echo "<div class='centrado'>";
    echo "<p><strong class='hover-effect'>Teléfono:</strong> " . $row["telefono"] . "</p>";
    echo "<p><strong class='hover-effect'>Dirección:</strong> " . $row["direccion"] . "</p>";
    echo "<p><strong class='hover-effect'>Sitio web:</strong> <a href='" . $row["sitio_web"] . "'>" . $row["sitio_web"] . "</a></p>";
    echo "<p><strong class='hover-effect'>Correo electrónico:</strong> " . $row["correo_electronico"] . "</p>";
    echo "</div>";
    echo "</div>";
    echo "</div>";  
}
   else {
    echo "No se encontraron datos personales.";
  }

  // Consulta para obtener los conocimientos
  $sql_conocimientos = "SELECT software, nivel FROM Conocimientos WHERE id_datos_personales = 1";
  $result_conocimientos = mysqli_query($conn, $sql_conocimientos);

  if (mysqli_num_rows($result_conocimientos) > 0) {
    echo "<h2 class='hover-effect'>Conocimientos</h2>";
    echo "<ul>";
    while ($row_conocimientos = mysqli_fetch_assoc($result_conocimientos)) {
        $class = strtolower($row_conocimientos["nivel"]);
        echo "<li class='hover-effect'>" . $row_conocimientos["software"] . " - " . $row_conocimientos["nivel"] . "</li>";
    }
    echo "</ul>";
  } else {
    echo "No se encontraron conocimientos.";
  }

  // Consulta para obtener la experiencia laboral
  $sql_experiencia = "SELECT empresa, fecha_inicio, fecha_fin, descripcion FROM ExperienciaLaboral WHERE id_datos_personales = 1";
  $result_experiencia = mysqli_query($conn, $sql_experiencia);

  if (mysqli_num_rows($result_experiencia) > 0) {
    echo "<h2 class='hover-effect'>Experiencia Laboral</h2>";
    echo "<div class='grid-container'>";
    while ($row_experiencia = mysqli_fetch_assoc($result_experiencia)) {
        echo "<div class='grid-item'>";
        echo "<h3 class='hover-effect'>" . $row_experiencia['empresa'] . "</h3>";
      if (empty($row_experiencia['fecha_fin'])) {
        echo "<p><strong class='hover-effect'>Fecha de fin:</strong> Actualmente</p>";
      } else {
        echo "<p><strong class='hover-effect'>Fecha de fin:</strong> " . $row_experiencia['fecha_fin'] . "</p>";
      }
      echo "<p class='hover-effect'>" . $row_experiencia['descripcion'] . "</p>";
      echo "<hr class='hover-effect'>";
      echo "</div>";
    }
    echo "</div>";
  } else {
    echo "No se encontraron datos de experiencia laboral.";
  }

  // Consulta para obtener las habilidades
  $sql_habilidades = "SELECT habilidad, descripcion FROM Habilidades WHERE id_datos_personales = 1";
  $result_habilidades = mysqli_query($conn, $sql_habilidades);

  if (mysqli_num_rows($result_habilidades) > 0) {
    echo "<h3 class='hover-effect'>Habilidades:</h3>";
    
    echo "<ul>";
    while ($row_habilidades = mysqli_fetch_assoc($result_habilidades)) {
      
        $habilidad = $row_habilidades["habilidad"];
        $descripcion = $row_habilidades["descripcion"];
        echo "<li class='hover-effect'><strong>$habilidad:</strong> $descripcion</li>";
       
    }
    echo "</ul>";
   
  } 
  
  else {
    echo "No se encontraron habilidades.";
  }

  // Consulta para obtener los proyectos personales
  $sql_proyectos = "SELECT nombre_proyecto, descripcion, tecnologias, enlace FROM ProyectosPersonales WHERE id_datos_personales = 1";
  $result_proyectos = mysqli_query($conn, $sql_proyectos);

  if (mysqli_num_rows($result_proyectos) > 0) {
    echo "<h3 class='hover-effect'>Proyectos Personales:</h3>";
    echo "<ul>";
    while ($row_proyectos = mysqli_fetch_assoc($result_proyectos)) {
        $nombre_proyecto = $row_proyectos["nombre_proyecto"];
        $descripcion = $row_proyectos["descripcion"];
        $tecnologias = $row_proyectos["tecnologias"];
        $enlace = $row_proyectos["enlace"];
        echo "<li class='hover-effect'><strong>$nombre_proyecto</strong></li>";
        echo "<ul>";
        echo "<li><strong>Descripción:</strong> $descripcion</li>";
        echo "<li><strong>Tecnologías:</strong> $tecnologias</li>";
        echo "<li><strong>Enlace:</strong> <a href='$enlace'>$enlace</a></li>";
        echo "</ul>";
    }
    echo "</ul>";
  } else {
    echo "No se encontraron proyectos personales.";
  }

  // Consulta para obtener las referencias laborales
  $sql_referencias_laborales = "SELECT nombre_referencia, telefono_referencia, empresa_referencia FROM ReferenciasLaborales WHERE id_datos_personales = 1";
  $result_referencias_laborales = mysqli_query($conn, $sql_referencias_laborales);

  if (mysqli_num_rows($result_referencias_laborales) > 0) {
    echo "<h3 class='hover-effect'>Referencias Laborales:</h3>";
    echo "<ul>";
    while ($row_referencias_laborales = mysqli_fetch_assoc($result_referencias_laborales)) {
        $nombre_referencia = $row_referencias_laborales["nombre_referencia"];
        $telefono_referencia = $row_referencias_laborales["telefono_referencia"];
        $empresa_referencia = $row_referencias_laborales["empresa_referencia"];
        echo "<li class='hover-effect'><strong>$nombre_referencia:</strong> $telefono_referencia - $empresa_referencia</li>";
    }
    echo "</ul>";
  } else {
    echo "No se encontraron referencias laborales.";
  }

  // Consulta para obtener las referencias personales
  $sql_referencias_personales = "SELECT nombre_referencia, telefono_referencia FROM ReferenciasPersonales WHERE id_datos_personales = 1";
  $result_referencias_personales = mysqli_query($conn, $sql_referencias_personales);

  if (mysqli_num_rows($result_referencias_personales) > 0) {
    echo "<h3 class='hover-effect'>Referencias Personales:</h3>";
    echo "<ul>";
    while ($row_referencias_personales = mysqli_fetch_assoc($result_referencias_personales)) {
        $nombre_referencia = $row_referencias_personales["nombre_referencia"];
        $telefono_referencia = $row_referencias_personales["telefono_referencia"];
        echo "<li class='hover-effect'><strong>$nombre_referencia:</strong> $telefono_referencia</li>";
    }
    echo "</ul>";
  } else {
    echo "No se encontraron referencias personales.";
  }

  mysqli_close($conn);
  ?>
  
</body>
</html>

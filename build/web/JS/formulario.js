document.getElementById("enviar").addEventListener("click", function() {
    var nombre = document.getElementById("nombre").value;
    var correo = document.getElementById("correo").value;
    var telefono = document.getElementById("telefono").value;
    var servicio = document.getElementById("servicio").value;
  
    var datos = {
      nombre: nombre,
      correo: correo,
      telefono: telefono,
      servicio: servicio
    };
  
    // recuperamos los datos de local storage
    var datosGuardados = JSON.parse(localStorage.getItem("datosGuardados")) || [];
  
    // agregamos los datos nuevos a la lista
    datosGuardados.push(datos);
  
    // almacenamos los datos actualizados en local storage
    localStorage.setItem("datosGuardados", JSON.stringify(datosGuardados));
  
    // Abre la página de procesar_formulario en una nueva pestaña
    window.open("../subsites/Resultados.jsp", "_blank");
  
    // Limpiael formulario
    document.getElementById("clienteForm").reset();
  });
  
  document.getElementById("cancelar").addEventListener("click", function() {
    document.getElementById("clienteForm").reset();
  });
  
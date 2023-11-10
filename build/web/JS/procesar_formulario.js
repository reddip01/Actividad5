// recuperamos los datos de local storage
var datosGuardados = JSON.parse(localStorage.getItem("datosGuardados")) || [];

// Obtener la tabla diligenciada
var tabla = document.querySelector("table");

// se llena la tabla con los datos del formulario
for (var i = 0; i < datosGuardados.length; i++) {
  var fila = tabla.insertRow(-1);
  var celdas = [
    datosGuardados[i].nombre,
    datosGuardados[i].correo,
    datosGuardados[i].telefono,
    datosGuardados[i].servicio
  ];

  for (var j = 0; j < celdas.length; j++) {
    var celda = fila.insertCell(j);
    celda.appendChild(document.createTextNode(celdas[j]));
  }
}

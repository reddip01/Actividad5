<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Tienda Online</title>
    <link rel="stylesheet" href="../css/solicituddeservicio.css"/>
</head>
<body>
    <div id="container">
        <header>
            <img src="../images/logo.png"/>
            <h1>Tienda Online Mercashop</h1>
        </header>
        <nav>
            <ul>
                <li>
                    <a href="../index.jsp">Inicio</a>
                </li>
                <li>
                    <a href="nuestratienda.jsp">Nuestra tienda</a>
                </li>
                <li>
                    <a href="servicios.jsp">Servicios</a>
                </li>
                <li>
                    <a href="contactenos.jsp">Contáctenos</a>
                </li>
            </ul>
        </nav>
        <div class="clearfix"></div>
        <section id="content">
            <article class="article">
                <h4>Solicitud de Servicio</h4>
                <form id="clienteForm" action="Resultados.jsp" method="post">
                    <div>
                      <p>Nombres:</p>  <input type="text" id="nombre" required name="formnombre"><br><br>
                    </div>
                    <div>
                        <p>Email:</p><input type="email" id="correo" required name="formcorreo"><br><br>
                    </div>
                    <div>
                        <p>Telefono:</p><input type="text" id="telefono" pattern="[0-9]+" required name="formtelefono"><br><br>
                    </div>
                    <div>
                        <p>Servicio:</p><select id="servicio" required name="formservicio">
                            <option value="Personalización">Personalización</option>
                            <option value="Pedido Mayorista">Pedido Mayorista</option>
                            <option value="Devolución">Devolución</option>
                        </select><br><br>
                    </div>
                    <div>
                        <input type="submit" value="Enviar datos" id="enviar">
                        <input type="button" value="Cancelar" id="cancelar" onclick="window.location.href='../index.jsp'">
                    </div>
                </form>
            </article>
        </section>
        <div class="clearfix"></div>
        <footer>Tienda Online a nivel nacional Mercashop 2023</footer>
    </div>
</body>
</html>

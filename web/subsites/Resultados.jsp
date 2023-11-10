<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Tienda Online</title>
    <link rel="stylesheet" href="../css/resultados.css" />
</head>
<body>
    <div id="container">
        <header>
            <img src="../images/logo.png" />
            <h1>Tienda Online Mercashop</h1>
        </header>
        <nav>
            <ul>
                <li>
                    <a href="nuestratienda.jsp">Nuestra tienda</a>
                </li>
                <li>
                    <a href="servicios.jsp">Servicios</a>
                </li>
                <li>
                    <a href="contactenos.jsp">Contáctenos</a>
                </li>
                <li>
                    <a href="solicituddeservicio.jsp">Solicitud de servicio</a>
                </li>
            </ul>
        </nav>
        <div class="clearfix"></div>
        <section id="content">
            <article class="nuevaref">
                <h2>Solicitudes de Servicio</h2>
                <%
                    String name=request.getParameter("formnombre");
                    String mail=request.getParameter("formcorreo");
                    String phone=request.getParameter("formtelefono");
                    String service=request.getParameter("formservicio");

                    try {
                        // Establecer la conexión a la base de datos PostgreSQL
                        String url = "jdbc:postgresql://localhost:5433/tienda";
                        String user = "postgres";
                        String password = "123456";
                        Connection conn = DriverManager.getConnection(url, user, password);
                        Statement sta = conn.createStatement();
                        int rowsAffected = sta.executeUpdate("INSERT INTO SolicitudServicio (nombre, correo, telefono, servicio) values ('"+name+"','"+mail+"','"+phone+"','"+service+"')");
                        conn.close();
                    } catch(Exception e) {
                        e.printStackTrace();
                    }
                %>
                
                <div>
                    <table border="1">
                        <tr>
                            <th>Nombres y Apellidos</th>
                            <th>Correo electrónico</th>
                            <th>Número de celular</th>
                            <th>Servicio solicitado</th>
                        </tr>
                        <%
                            try {
                                // Establecer la conexión a la base de datos PostgreSQL
                                String url = "jdbc:postgresql://localhost:5433/tienda";
                                String user = "postgres";
                                String password = "123456";
                                Connection conn = DriverManager.getConnection(url, user, password);
                                Statement sta = conn.createStatement();
                                ResultSet rs = sta.executeQuery("select * from SolicitudServicio");

                                while(rs.next()){
                        %>
                                    <tr>
                                        <th><%=rs.getString(2)%></th>
                                        <th><%=rs.getString(3)%></th>
                                        <th><%=rs.getString(4)%></th>
                                        <th><%=rs.getString(5)%></th>
                                    </tr>
                        <%
                                }
                                conn.close();
                            } catch(Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>
                </div>
            </article>
        </section>
        <div class="clearfix"></div>
        <footer>Tienda Online a nivel nacional Mercashop 2023</footer>
    </div>
</body>
</html>

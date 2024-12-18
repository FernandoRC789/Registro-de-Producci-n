<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <%
        // Verificar que el formulario se haya enviado con POST
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String usuario = request.getParameter("usuario");
            String contrase�a = request.getParameter("contrase�a");

            // Solo hacer la verificaci�n si los par�metros de usuario y contrase�a est�n presentes
            if (usuario != null && contrase�a != null) {
                // Establecer la conexi�n con la base de datos
                Connection con = null;
                PreparedStatement statement = null;
                ResultSet resultSet = null;

                try {
                    // Cargar el driver JDBC
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Conectar a la base de datos (ajusta la URL, usuario y contrase�a)
                    String url = "jdbc:mysql://localhost:3306/BDT1_RODRIGUEZ?useSSL=false&serverTimezone=UTC";
                    String dbUsuario = "root"; 
                    String dbContrase�a = "mysql";  

                    con = DriverManager.getConnection(url, dbUsuario, dbContrase�a);

                    // Preparar la consulta SQL para verificar las credenciales
                    String sql = "SELECT * FROM USUARIOS WHERE NOM_USUARIO = ? AND CONTRASENA = ?";
                    statement = con.prepareStatement(sql);
                    statement.setString(1, usuario);
                    statement.setString(2, contrase�a);
                    resultSet = statement.executeQuery();

                    // Verificar si el usuario y la contrase�a son correctos
                    if (resultSet.next()) {
                        // Si las credenciales son correctas, redirigir a otra p�gina
                        response.sendRedirect("registroDeOrden.jsp");
                        return; // Aseg�rate de que el c�digo despu�s de la redirecci�n no se ejecute
                    } else {
                        // Si las credenciales son incorrectas, mostrar mensaje de error
                        out.println("<h3>Usuario o contrase�a incorrectos.</h3>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<h3>Error al conectar con la base de datos: " + e.getMessage() + "</h3>");
                } finally {
                    try {
                        if (resultSet != null) resultSet.close();
                        if (statement != null) statement.close();
                        if (con != null) con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                        out.println("<h3>Error al cerrar recursos: " + e.getMessage() + "</h3>");
                    }
                }
            } else {
                out.println("<h3>Usuario o contrase�a vac�os.</h3>");
            }
        }
    %>

	<div class="Registro-sesion">
		<img src="img/farmexlogo.png" alt="logo de farmex">
		
		<form method="post" class="formulario">
			<div>
                <label for="turno">TURNO:</label>
				<select name="lenguajes" id="lang">
			        <option value="primero">PRIMERO</option>
			        <option value="segundo">SEGUNDO</option>
			        <option value="tercero">TERCERO</option>
			    </select>            
			</div>
            <div>
                <label for="usuario">USUARIO:</label>
                <input type="text" id="usuario" name="usuario">
            </div>
            <div>
                <label for="contrase�a">CONTRASE�A:</label>
                <input type="password" id="contrase�a" name="contrase�a">
            </div>
			
			<button id="btnAceptar">ACEPTAR</button>
			<button id="btnCerrar">CERRAR</button>
		</form>
	</div>

</body>
</html>

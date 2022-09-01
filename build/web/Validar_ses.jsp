<%-- 
    Document   : Validar_ses
    Created on : 13 jun. 2022, 03:10:25
    Author     : Job_M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.Connector"%>

<%
    String usuario = request.getParameter("usuario");
    String pass = request.getParameter("Password");
    String usua = usuario;
    HttpSession sesion = request.getSession();
    String idSession = sesion.getId();
    sesion.setAttribute("usua", usua);

    Connection conn = Connector.conectarBaseDatos();
    Statement ps = null;
    ResultSet rs = null;
    
    try{
        ps = conn.createStatement();
        rs = ps.executeQuery("SELECT * FROM usuario WHERE usuario.usu_nombre = '" + usuario +"';");
        if(rs.next()){
            do {
                if(usua.equals(rs.getString("usu_nombre")) && rs.getString("usu_password").equals(pass)){
                    sesion.setAttribute("usu_id",rs.getInt("usu_id"));
                    sesion.setAttribute("usu_nombre",rs.getString("usu_nombre"));
                    sesion.setAttribute("usu_password",rs.getString("usu_password"));
                    response.sendRedirect("home.jsp");
                    out.println(rs.getInt("usu_id")+" "+rs.getString("usu_correo")+" "+rs.getString("usu_password"));
                    break;
                } else {
                    request.setAttribute("error", "si");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    out.println("non");
                    }
                } while (rs.next());
            }else {
            request.setAttribute("error", "si");
            request.getRequestDispatcher("index.jsp").forward(request, response);
                }
        
    } catch (Exception e){
        out.println(e);
        }
    
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="../Css/Forms.css">
        <script src="https://kit.fontawesome.com/99d3836eec.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="icon" type="image/ico" href="img/gg-brands.png" />
        <title>JSP Page</title>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

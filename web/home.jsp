<%-- 
    Document   : home
    Created on : Aug 31, 2022, 5:13:27 PM
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession sesion = request.getSession();
    String idSession = sesion.getId();
    String usua = (String)sesion.getAttribute("usua");
    String usuario = (String)sesion.getAttribute("usu_nombre");

%>
<!DOCTYPE html>
<html>
    <head>
        <title>EEEE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Css/Index.css">
        <script src="https://kit.fontawesome.com/99d3836eec.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="icon" type="image/ico" href="img/gg-brands.png" />
    </head>
    <body>
        <h1>Hello World!</h1>  
        <%
                        if(usua != null){
                            out.println("<h2>Hola "+usuario+"!</h2>");
                       } else {
                            out.println();
                        }
                      %>  
                      <br><br><br>
                      <%
                    if (usua != null){    
                         out.println("<a href='Cerrar_ses.jsp'>Cerrar Sesión</a>");                   
                    } else {
                    response.sendRedirect("index.jsp");
                    }                    
                %>
    </body>
</html>

<%-- 
    Document   : index
    Created on : Aug 31, 2022, 5:13:52 PM
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/Forms.css">
        <script src="https://kit.fontawesome.com/99d3836eec.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="icon" type="image/ico" href="img/gg-brands.png" />
        <title>Inicio de sesión</title>
    </head>
    <body>
        <div class="ajustar-form">
            <form action="Validar_ses.jsp" class="login-form" method="post" name="iniciar">
                
        <h2 class="login-title">Inicio de sesión</h2>
        
        <div class="login-container">
            
            <div class="login-group">               
                <input type="text" name="usuario" placeholder=" " class="login-input" />
                <label class="login-label">usuario</label>
                <span class="login-line"></span>
            </div>

               <div class="login-group">
                <input type="password" name="Password" placeholder=" " class="login-input" />
                <label class="login-label">Contraseña</label>
                <span class="login-line"></span>
            </div>
            
            <%
                if(request.getAttribute("error")!=null){
                    String error =(String)request.getAttribute("error"); 
                    if(error.equals("si")){
                        out.println("<div class='login-container'><div class='error'>Usuario o contraeña son incorrectos</div></div>");
                    }
                }
            %> 
            
            <button type="submit" class="login-submit">
                Iniciar sesión
            </button>
        </div>
    </form>
</div>
    </body>
</html>

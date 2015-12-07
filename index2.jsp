<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BiriBiriBanco</title>
        <script>
            function not(){
                return false;
            }
            function user(){
                if ((event.keyCode !== 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
                {return false;}
            }
            function pass(){
                if ((event.keyCode !== 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
                {return false;}
            }
        </script>
    </head>
    <body>
        <h1>Bienvenido a BiriBiriBanco</h1>
        <h3>Registrarse</h3>
        <form action="servletprinc" method="POST">
            <input name="nombreusuario" name="user1" id="user" pattern="[A-Za-z]{7-64}" title="Debe contener 7 caracteres, no caracteres especiales">
            <input name="email" id="email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" pattern="[A-Za-z]{7-64}">
            <input name="password" name="pass1" id="pass" type="password" placeholder="Introduce tu contraseña"  onkeypress="return pass();" ondrop="return not();" onpaste="return not();" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
            <input type="submit" value="Ingresar" class="boton">
        </form>
        <h3>Iniciar Sesi&oacute;n</h3>
        <form action="servletpronc" method="POST">
            <input name="nombreusuario" name="user" id="user" placeholder="Introduce tu nombre de usuario" onpaste="" pattern="[A-Za-z1-9]{7-64}" onkeypress="return pass();" ondrop="return not();" onpaste="return not();">
            <input name="password" name="pass" id="pass" type="password" placeholder="Introduce tu contraseña"  onkeypress="return pass();" ondrop="return not();" onpaste="return not();" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
            <input type="submit" value="Ingresar" class="boton">
        </form>    
    </body>
</html>

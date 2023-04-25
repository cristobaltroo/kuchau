<%-- 
    Document   : index
    Created on : 28-03-2023, 15:27:58
    Author     : crist
--%>
<script>
    function soloNumeros(e) {
        var key = window.Event ? e.which : e.KeyCode
        return (key >= 48 && key <= 57 )
    }
    
    function validarut() {
        var arut = new Array(8);
        var i, j, dv;
        if ((document.getElementby))("rut").value.lenght) = 0 )(
                alert("debe ingresar un numero de rut");
    }else{
        for (i=1; i<9;i++) {
            arut(i)=0;
        }
        i=0
        for (j = (9-(document.getElementById("rut").value.length)); j<9;j++) {
                if (( document.getElementById("rut").valuesubstr(i,1) >= 0) & ( document.getElementById("rut").value.substr(i,1) <=9)) {
                    arut(j) = document.getElementById("rut").value.substr(i,1);
            i++;}
                
                }
                else {
                    alert("debe ingresar solo numeros!!!")
                    i=0
                    break;
                }
            }
            if(i=0 {
                dv = 11 - (( (arut[1]*3) + (arut[2]*2) + (arut[3]*7) + (arut[4]*6) + (arut[5]*5) + (arut[6]*4) + (arut[7]*3) + (arut[8]*2) )%11)
                    if (dv === 10) {
                        dv = "K";
                    } else if (dv === 11) {
                        dv = "0";
                    }
                    document.getElementById("digitador").value=dv;
                    return dv
    }
    
    function valida() {
        mensaje="";
        rut=document.getElementById("rut").value;
        if(rut=="") {
            mensaje=mensaje+"* rut esta en blanco \n";
        }
        if(mensaje!=""){
            mensaje="datos faltantes en el formulario \n\n"+mensaje;
            alert(mensaje);
            return false;
            
        }
    }
    unsubmit="return valida()"
</script>
<script>
function valida() {
            
            mensaje="";
            rut = document.getElementById("rut").value;
            if(rut==""){
                mensaje=mensaje+"*Rut esta en blanco \n";
            }
            nombre = document.getElementById("nombre").value;
            if(nombre==""){
                mensaje=mensaje+"*Nombre esta en blanco \n";
            }
            apellidoPaterno = document.getElementById("apellidoPaterno").value;
            if(apellidoPaterno==""){
                mensaje=mensaje+"*Apellido Paterno esta en blanco \n";
            }
            apellidoMaterno = document.getElementById("apellidoMaterno").value;
            if(apellidoMaterno==""){
                mensaje=mensaje+"*Apellido Materno esta en blanco \n";
            }
            correoElectronico = document.getElementById("correoElectronico").value;
            if(correoElectronico==""){
                mensaje=mensaje+"*Correo Electronico esta en blanco \n";
            }
            fechaNacimiento = document.getElementById("fechaNacimiento").value;
            if(fechaNacimiento==""){
                mensaje=mensaje+"*Fecha Nacimiento esta en blanco \n";
            }
            direccion = document.getElementById("direccion").value;
            if(direccion==""){
                mensaje=mensaje+"*Direccion esta en blanco \n";
            }
            telefono = document.getElementById("telefono").value;
            if(telefono==""){
                mensaje=mensaje+"*telefono esta en blanco \n";
            }
            password = document.getElementById("password").value;
            if(password==""){
                mensaje=mensaje+"*Password esta en blanco \n";
            }
            password2 = document.getElementById("password2").value;
            if(password2==""){
                mensaje=mensaje+"*Password2 esta en blanco \n";
            }
            if(mensaje!=""){
                mensaje="*Datos faltantes en el formulario \n\n"+mensaje;
               alert(mensaje);
               return false;
            }else{
                if(password!==password2){
                    mensaje="Contraseñas no coinciden";
                    alert(mensaje);
                    return false;
                }
            }
        }
        </script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>fua</h1>
        <h1>fua2</h1>
        <form action="NewServlet" method="POST" name="registro">
        
            <label>  
                ingresa tu rut: <br>
                <input type="text" name="rut" value="" onkeyup="validarut()" onkeypress="return soloNumeros(event)"/><br>
            </label><br>
            
            <label>  
                ingresa tu numero digitador: <br>
            <input type="text" name="digitador" value=" disabled="true" onkeypress="return soloNumeros(event)" /><br>
            </label><br>
            
            <label>
                ingresa tu nombre: <br>
        <input type="text" name="nombre" value="" /><br>
            </label>
            
            <label>
                ingresa tu apellido paterno: <br>
        <input type="text" name="apellido_paterno" value="" /><br>    
                    </label>
        
            <label>
                ingresa tu apellido materno <br>
        <input type="text" name="apellido_materno" value="" /><br>
            </label>
            
            <label>
                ingresa tu gmail <br>
        <input type="text" name="mail" value="" /><br>
            </label>
            
            <label>
                ingresa tu fecha de nacimiento <br>
        <input type="date" name="nacimiento" /><br>
            </label>
            
            <label>
                ingresa tu direccion <br>
        <input type="text" name="direccion" value=""  /><br>
            </label>
            
            <label>
                ingresa tu telefono <br>
        <input type="text" name="telefono" value="" id="telefono" class="telefono" onkeypress="return soloNumeros(event)" /><br>
            </label>
            
            <label>
                ingrese su contraseña <br>
        <input type="password" name="password" id="password" class="password" value="" /><br>
            </label>
            
            <label>
                confirme contraseña <br>
                <input type="password" name="password2" id="password2" class="confirmpassword" value="" /><br>    
            </label>
            
            <input class="button"   type="submit" value="presioname"  />
       
        
        </form>
        
        <script>
           
    document.querySelector('.button').onclick = function(){
        
        var telefono = document.querySelector('.telefono').value;
        
        if(telefono == ""){
            alert("telefono no ingresado");
            return false
        }
        else if(telefono > 0);{
        
        
        
        var password = document.querySelector('.password').value,
                confirmPassword = document.querySelector('.confirmpassword').value;
        
        if(password == ""){
            alert("contraseña no ingresada");
            return false
        }
       else if(password != confirmPassword){
           alert("las contraseñas no son iguales");
           return false 
       }
       else if(password == confirmPassword){
        alert("contraseña aseptada")    
    }
    return true
    
       } 
        
    }
            </script>
    </body>
</html>

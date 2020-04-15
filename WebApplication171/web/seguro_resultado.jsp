<%-- 
    Document   : seguro_resultado
    Created on : 07-04-2020, 15:10:10
    Author     : fredy
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<% 
//capturamos el valor recibido mediante POST
// Recuerde que todos los datos recibidos
//llegan como string.
int ano_vehiculo    =  Integer.parseInt(request.getParameter("txt_ano"));
//Obtenemos el año actual
int ano_actual      = Calendar.getInstance().get(Calendar.YEAR);
//Obtenemos la antiguedad
int antiguedad      = (ano_actual - ano_vehiculo);
//Declaramos variables requeridad para las demás operaciones
boolean asegurable;
double valor_seguro =0;
double valor_uf = 28626;

//Establecemos si el vehículo es asegurable
if(antiguedad <= 10){
    asegurable      = true;
    valor_seguro    = (antiguedad * valor_uf) /10; 
}else{
    asegurable      = false;
    
}





//Tipo de dato - Identificador (Atributo) - Valor (Numérico)
double porcentaje_anual = 0.1;






int ano_fila;
int antiguedad_fila;
double suma_porcentaje_anual = 0;
double porcentaje_anual_uf =0;

DecimalFormat formato = new DecimalFormat("0.00");
formato.format(suma_porcentaje_anual);
String resaltado_inicio="";
String resaltado_termino="";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Año Vehículo <%= ano_vehiculo %> .</h1>
        <h2> Antiguedad <%= antiguedad %> años. </h2>
        <!--Estructura de decisión para mensaje de resultado -->
        <% 
        if(asegurable){
        %>
        
        <div> <b>  Vehículo asegurable </b> </div>
        <div> Valor seguro $<%= formato.format(valor_seguro) %></div>
      
        <% }else{ %>
        
        <div> Vehículo no es asegurable </div>
       
        <% }%>
        
        <!-- Tabla con valores anuales de seguro
        Incorpore una tabla HTML que muestre cada
        año considerando 10 años desde el año
        actual, muestre el valor de seguro en UF
        y en pesos según el año que corresponda.
        Resalte en la tabla la fila que corresponde
        al año del vehículo ingresado por el usuario.
        -->
        <table>
            <tr>
            <td> <label> Año Vehículo</label> </td>
            <td> <label> Valor UF</label></td>
            <td> <label> Valor $ </label></td>
            </tr>
            <% ano_fila = ano_actual; %>
        <% for(int i=0;i<11;i++){
        antiguedad_fila =  ano_actual - ano_fila; 
        if(antiguedad_fila==0){
            antiguedad_fila=1;
            porcentaje_anual_uf = 0.1;
        }else{
            suma_porcentaje_anual = (suma_porcentaje_anual +porcentaje_anual);
             porcentaje_anual_uf = suma_porcentaje_anual;
        }
        if(ano_vehiculo == ano_fila){
            resaltado_inicio ="<strong>";
            resaltado_termino ="</strong>";
        }
        %>
        </tr>
            <td> <%= resaltado_inicio %><label><%= ano_fila  %></label> <%= resaltado_termino %></td>
            <td><%= resaltado_inicio %> <label><%= formato.format(porcentaje_anual_uf) %> </label><%= resaltado_termino %></td>
            <td><%= resaltado_inicio %> <label><%= (antiguedad_fila * valor_uf)/10 %></label><%= resaltado_termino %></td>
        </tr>
        
        <%  
            resaltado_inicio ="";
            resaltado_termino="";
            ano_fila-- ;} %>
        </table>
    </body>
</html>

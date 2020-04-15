<%-- 
    Document   : seguro
    Created on : 07-04-2020, 15:05:26
    Author     : fredy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Seguro Automotriz</h1><hr>
        <form name="frm_seguro" action="seguro_resultado.jsp" method="post">
            <table>
                <tr>
                    <td> <label> Año </label></td>
                    <td> <input type="text" id="txt_ano" name="txt_ano" placeholder="Ingrese año">  </td>
                </tr>
                <tr>
                    <td> </td>
                    <td> <input type="submit" name="btn_enviar" value="Enviar">  </td>
                </tr>
            </table>
        </form>
            <!-- Estructura de repetición FOR-->
            <table>
                <tr>
                    <td> i </td>
                    <td> i +2</td>
                    <td> i*i </td>
                </tr>
            
            <%   int sumac2 =0;
                 int sumac3 =0;
                for(int i=0; i<10 ;i++){ %>
                <tr>
                    <td> <%= i %> </td>
                    <td> <% sumac2=sumac2 + i+2;%> <%= i+2 %> </td>
                    <td> <% sumac3=sumac3 + i*i;%> <%= i*i %> </td>
                </tr> 
            <% }%>
            <tr>
                <td> TOTAL</td>
                <td> <%= sumac2 %></td>
                <td> <%= sumac3 %></td>
            </tr>
            </table>
    </body>
</html>

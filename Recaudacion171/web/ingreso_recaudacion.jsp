<%-- 
    Document   : ingreso_recaudacion
    Created on : 22-04-2020, 17:21:28
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
        <h1>Ingreso de recaudación</h1>
        <form name="frm_ingreso" action="resultado_recaudacion.jsp" method="post">
            <table>
                <tr>
                    <td> <label> Total de asistentes</label></td>
                    <td> <input type="text" name="txt_total_asistentes" placeholder="Ingrese cantidad" ></td>
                </tr>
                 <tr>
                    <td> <label> Asistentes VIP</label></td>
                    <td> <input type="text" name="txt_asistentes_vip" placeholder="Ingrese asistentes VIP" ></td>
                </tr>
                 <tr>
                    <td> <label> Precio entrada normal</label></td>
                    <td> <input type="text" name="txt_precio_normal" placeholder="Ingrese precio entrada normal" ></td>
                </tr>
                 <tr>
                    <td> <label> % descuento VIP</label></td>
                    <td> <input type="text" name="txt_descuento_vip" placeholder="Ingrese descuento VIP" ></td>
                </tr>
                 <tr>
                    <td> </td>
                    <td> <input type="submit" id="btn_enviar"  value="Enviar" ></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>

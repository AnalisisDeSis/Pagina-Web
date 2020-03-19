<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE PRINCIPAL>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Main</title>
    </head>
    <body>
        
        <div class="d-flex">
           <table class="table table-striped">
            <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>PAQUETE</th>
                        <th>U. MEDIDA</th>
                        <th>PRECIO</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pr" items="${producto}">
                    <tr>
                        <td>${pr.getId()}</td>
                        <td>${pr.getNombre()}</td>
                        <td>${pr.getPaquete()}</td>
                        <td>${pr.getuMedida()}</td>
                        <td>${pr.getPrecio()}</td>
                     </tr>
                    </c:forEach>
                    
                </tbody>
            </table>

        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>

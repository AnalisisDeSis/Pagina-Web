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
        
        
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Menu</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
	<a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Productos&accion=Listar" target="myFrame">Productos</a>
      </li>
     <li class="nav-item">
      <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Pedido&accion=default" target="myFrame">Pedido</a>
     </li>
	 </ul>
  </div>
 <div class="btn-group">
     <button style="border: none" type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
              ${usuario.getNombre()}
            </button>
                <div class="dropdown-menu  dropdown-menu-right text-center">
                    <a class="dropdown-item" href="#">
                        <center>
                        <img src="img/user.png" alt="60" width="60"/>
                        </center>
                    </a>
                    <a class="dropdown-item" href="#">${usuario.getNit()}</a>
                    <a class="dropdown-item" href="#">usuario@gmail.com</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </div>
            </div>
        </nav>
                    
        <div class="m-4" style="height: 550px; ">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>

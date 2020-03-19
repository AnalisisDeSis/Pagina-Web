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
            <div class="col-sm-5">
                <div class="card">
                    <form action="Controlador" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label> Productos </label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoProducto" class="form-control" placeholder="Codigo" >
                                    <input type="submit" name="accion" value="BuscarProducto" class="btn btn-dark">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombreProducto" class="form-control" placeholder="Datos Producto">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" class="form-control" placeholder="Q 0.0"> 
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="cantidad" class="form-control" placeholder="Cantidad" min="1" pattern="^[0-9]+">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="stock" class="form-control" placeholder="Stock">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-outline-dark btn-block">
                            </div>
                        </div>
                 </form>       
                </div>
                
            </div>
            
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <label>Nro.Serie</label>
                        <input type="text" name="nroSerie" class="form-control">
                        </div>
                        <br>
                        <table border="1" class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="card-footer">
                        <div>
                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-outline-success">
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-outline-danger">
                        </div>
                    </div>
                </div>
                <div>
                    <input type="text" name="nroSerie" class="form-control">
                </div>
            </div>
        </div>

        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>

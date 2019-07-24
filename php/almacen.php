<?php
include'menu.php';

?>
<br><br>
<div class="container">
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">PRODUCTO</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Nombre del Producto">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">DESCRIPCION</label>
      <input type="password" class="form-control" id="inputPassword4" >
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">CATEGORIA</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">PRECIO DE VENTA</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>

  <button type="submit" class="btn btn-primary">Sign in</button>
</form>
</div>

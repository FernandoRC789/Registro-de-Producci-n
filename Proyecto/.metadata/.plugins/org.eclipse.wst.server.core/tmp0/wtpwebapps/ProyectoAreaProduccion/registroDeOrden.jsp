<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro De Orden De Producción</title>
<link href="registroestilos.css" rel="stylesheet" type="text/css">
</head>
<body class="ventana-orden">
	<h2>Registro De Orden De Producción</h2>
	<div class="botones">
		<button>Modificar</button>
		<button>Recargar</button>
		<button>Guardar</button>
		<button>Anular</button>
		<button>Saldo</button>
		<button>Peso F8</button>
		<button>Ticket Caja</button>
		<button>Ticket Pallet</button>
		<button>Cerrar</button>
	</div>
	
	<div>
		<div class="datos-orden-produccion">
			<div class="parte1">
				<div class="datosCliente">
					<a href="#">Cliente</a>
					<input type="text" name="codCliente" id="codCliente">
					<input type="text" name="nombreCliente" id="nombreCliente">
				</div>
				<div class="datosProducto">
					<a href="#">Producto</a>
					<input type="text" name="codProducto" id="codProducto">
					<input type="text" name="nombreProducto" id="nombreProducto">
				</div>
				<div>
					<p>Orden de Producción</p>
					<input type="text" name="ordenProduccion" id="numeroOrdenProduccion">
				</div>
				<div>
					<p>Fecha de Fabricación</p>
					<input type="date" name="fechaFabricacion" id="fechaFabricacion">
					<p>Fecha de Vencimiento</p>
					<input type="date" name="fechaVencimiento" id="fechaVencimiento">
				</div>
				<div>
					<p>Estado</p>
					<input type="text" name="opAbierta" id="opAbierta">
				</div>
			</div>
			<div class="parte2">
				<div>
					<p>N° Lote</p>
					<input type="text" name="lote" id="lote">
				</div>
				<div>
					<p>Peso Unitario</p>
					<input type="text" name="pesoUnitario" id="PesoUnitario">
				</div>
				<div>
					<p>Tara por Caja</p>
					<input type="text" name="taraCaja" id="taraCaja">
				</div>
				<div>
					<p>Uni x Caja</p>
					<input type="text" name="lote" id="lote"><!-- es autorelleno de la base de datos de productos -->
					<p>Caja x Pallet</p>
					<input type="text" name="cajaPallet" id="cajaPallet">
				</div>

				
			</div>
			
			
		</div>
		<div class="datos-de-produccion">
		
		</div>
	
	</div>
</body>
</html>
<div class="form reporte-general">
	<form id="CdrReportForm" method="post" accept-charset="utf-8" action="/cdrs/parseData">
		<legend class="legend">Historial De Llamadas Por Número De Origen</legend>
		<fieldset class="fieldet">
			<div class="input">
				<label for="CdrOrigen">Número De Origen</label>
				<input type="text" id="CdrOrigen" class="input" required="required" name="data[Cdr][origen]" />
			</div>
			<?php echo $this -> element('campos-generales-reporte');?>
		</fieldset>
		<?php echo $this-> Form -> submit("Mostrar Informe");?>
	</form>
</div>
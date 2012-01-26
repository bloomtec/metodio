<div class="form reporte-general">
	<form id="CdrReportForm" method="post" accept-charset="utf-8" action="/cdrs/parseData">
		<legend class="legend">Historial De Llamadas Por Extensión</legend>
		<fieldset class="fieldet">
			<div class="input">
				<label for="CdrExtension">Extensión</label>
				<input type="text" id="CdrExtension" class="input" required="required" name="data[Cdr][extension]" />
			</div>
			<?php echo $this -> element('campos-generales-reporte');?>
		</fieldset>
		<?php echo $this-> Form -> submit("Mostrar Informe");?>
	</form>
</div>
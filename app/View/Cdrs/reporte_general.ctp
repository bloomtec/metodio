<div class="form reporte-general">
	<form id="CdrReportForm" method="post" accept-charset="utf-8" action="/cdrs/parseData">
		<legend class="legend">Historial General De Llamadas</legend>
		<fieldset class="fieldet">
			<?php echo $this -> element('campos-generales-reporte');?>
		</fieldset>
		<input type="submit" value="Mostrar Reporte" />
	</form>
</div>

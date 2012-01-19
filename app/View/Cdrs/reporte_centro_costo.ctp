<div class="form reporte-general">
	<form id="CdrReportForm" method="post" accept-charset="utf-8" action="/cdrs/parseData">
		<legend class="legend">Historial De Llamadas Por Centro De Costo</legend>
		<fieldset class="fieldet">
			<div class="input select">
				<label for="CdrCentro">Centro De Costo</label>
				<select id="CdrCentro" name="data[Cdr][centro]">
					<?php foreach ($costCenters as $key => $value) : ?>
					<option value="<?php echo $key; ?>"><?php echo $value; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			<?php echo $this -> element('campos-generales-reporte');?>
		</fieldset>
		<input type="submit" value="Mostrar Reporte" />
	</form>
</div>
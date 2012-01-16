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
			<div class="input">
				<label for="CdrFechaInicial">Fecha Inicial</label>
				<input type="date" id="CdrFechaInicial" class="input" name="data[Cdr][fecha_inicial]" />
			</div>
			<div class="input">
				<label for="CdrHoraInicial">Hora Inicial</label>
				<!--<input type="time" id="CdrHoraInicial" class="input" required="required" name="data[Cdr][hora_inicial]" />-->
				<?php echo $this -> Form -> hour('Cdr.hora_inicial.hora',true)?>
				<?php echo $this -> Form -> minute('Cdr.hora_inicial.minuto')?>
				<?php echo $this -> Form -> minute('Cdr.hora_inicial.segundo')?>
			</div>
			<div class="input">
				<label for="CdrFechaFinal">Fecha Final</label>
				<input type="date" id="CdrFechaFinal" class="input" name="data[Cdr][fecha_final]" />
			</div>
			<div class="input">
				<label for="CdrHoraFinal">Hora Final</label>
				<!--<input type="time" id="CdrHoraFinal" class="input" required="required" name="data[Cdr][hora_final]" />-->
				<?php echo $this -> Form -> hour('Cdr.hora_final.hora',true)?>
				<?php echo $this -> Form -> minute('Cdr.hora_final.minuto')?>
				<?php echo $this -> Form -> minute('Cdr.hora_final.segundo')?>
			</div>
		</fieldset>
		<input type="submit" value="Mostrar Reporte" />
	</form>
</div>
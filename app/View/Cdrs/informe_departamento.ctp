<div class="form reporte-general">
	<form id="CdrReportForm" method="post" accept-charset="utf-8" action="/cdrs/parseData">
		<legend class="legend">
			Historial General De Llamadas
		</legend>
		<fieldset class="fieldet">
			<div class="input select">
				<label for="CdrDepartamento">Departamento</label>
				<select id="CdrDepartamento" name="data[Cdr][departamento]">
					<?php foreach ($departments as $key => $value) : ?>
					<option value="<?php echo $value; ?>"><?php echo $value; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			<?php echo $this -> element('campos-generales-reporte');?>
		</fieldset>
		<?php echo $this-> Form -> submit("Mostrar Informe");?>
	</form>
</div>
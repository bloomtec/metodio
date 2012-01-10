
var PageName = 'ver listado de abreviados';
var PageId = 'cbad0f1f4ef44bf2992f1a5bee9deeaf'
var PageUrl = 'ver_listado_de_abreviados.html'
document.title = 'ver listado de abreviados';
var PageNotes = 
{
"pageName":"ver listado de abreviados",
"showNotesNames":"False"}
var $OnLoadVariable = '';

var $CSUM;

var hasQuery = false;
var query = window.location.hash.substring(1);
if (query.length > 0) hasQuery = true;
var vars = query.split("&");
for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if (pair[0].length > 0) eval("$" + pair[0] + " = decodeURIComponent(pair[1]);");
} 

if (hasQuery && $CSUM != 1) {
alert('Prototype Warning: The variable values were too long to pass to this page.\nIf you are using IE, using Firefox will support more data.');
}

function GetQuerystring() {
    return '#OnLoadVariable=' + encodeURIComponent($OnLoadVariable) + '&CSUM=1';
}

function PopulateVariables(value) {
    var d = new Date();
  value = value.replace(/\[\[OnLoadVariable\]\]/g, $OnLoadVariable);
  value = value.replace(/\[\[PageName\]\]/g, PageName);
  value = value.replace(/\[\[GenDay\]\]/g, '28');
  value = value.replace(/\[\[GenMonth\]\]/g, '11');
  value = value.replace(/\[\[GenMonthName\]\]/g, 'noviembre');
  value = value.replace(/\[\[GenDayOfWeek\]\]/g, 'lunes');
  value = value.replace(/\[\[GenYear\]\]/g, '2011');
  value = value.replace(/\[\[Day\]\]/g, d.getDate());
  value = value.replace(/\[\[Month\]\]/g, d.getMonth() + 1);
  value = value.replace(/\[\[MonthName\]\]/g, GetMonthString(d.getMonth()));
  value = value.replace(/\[\[DayOfWeek\]\]/g, GetDayString(d.getDay()));
  value = value.replace(/\[\[Year\]\]/g, d.getFullYear());
  return value;
}

function OnLoad(e) {

}

var u31 = document.getElementById('u31');
gv_vAlignTable['u31'] = 'center';
var u36 = document.getElementById('u36');
gv_vAlignTable['u36'] = 'center';
var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'center';
var u17 = document.getElementById('u17');

var u28 = document.getElementById('u28');
gv_vAlignTable['u28'] = 'center';
var u29 = document.getElementById('u29');

var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'center';
var u30 = document.getElementById('u30');

u30.style.cursor = 'pointer';
if (bIE) u30.attachEvent("onclick", Clicku30);
else u30.addEventListener("click", Clicku30, true);
function Clicku30(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_departamento.html" + GetQuerystring();

}

}

var u6 = document.getElementById('u6');
gv_vAlignTable['u6'] = 'center';
var u57 = document.getElementById('u57');

var u32 = document.getElementById('u32');

var u59 = document.getElementById('u59');

var u60 = document.getElementById('u60');

var u13 = document.getElementById('u13');

if (bIE) u13.attachEvent("onmouseover", MouseOveru13);
else u13.addEventListener("mouseover", MouseOveru13, true);
function MouseOveru13(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u13',e)) return;
if (true) {

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u39','hidden','none',500);

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u44','','none',500);

}

}

var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'center';
var u15 = document.getElementById('u15');

u15.style.cursor = 'pointer';
if (bIE) u15.attachEvent("onclick", Clicku15);
else u15.addEventListener("click", Clicku15, true);
function Clicku15(e)
{
windowEvent = e;


if (true) {

	self.location.href="login.html" + GetQuerystring();

}

}

if (bIE) u15.attachEvent("onmouseover", MouseOveru15);
else u15.addEventListener("mouseover", MouseOveru15, true);
function MouseOveru15(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u15',e)) return;
if (true) {

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u39','hidden','none',500);

	SetPanelVisibility('u44','hidden','none',500);

}

}

var u38 = document.getElementById('u38');
gv_vAlignTable['u38'] = 'center';
var u43 = document.getElementById('u43');
gv_vAlignTable['u43'] = 'center';
var u44 = document.getElementById('u44');

var u40 = document.getElementById('u40');

u40.style.cursor = 'pointer';
if (bIE) u40.attachEvent("onclick", Clicku40);
else u40.addEventListener("click", Clicku40, true);
function Clicku40(e)
{
windowEvent = e;


if (true) {

	self.location.href="agregar_usuario.html" + GetQuerystring();

}

}

var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u37 = document.getElementById('u37');

var u26 = document.getElementById('u26');
gv_vAlignTable['u26'] = 'center';
var u41 = document.getElementById('u41');
gv_vAlignTable['u41'] = 'center';
var u10 = document.getElementById('u10');
gv_vAlignTable['u10'] = 'center';
var u11 = document.getElementById('u11');

if (bIE) u11.attachEvent("onmouseover", MouseOveru11);
else u11.addEventListener("mouseover", MouseOveru11, true);
function MouseOveru11(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u11',e)) return;
if (true) {

	SetPanelVisibility('u17','','none',500);

	SetPanelVisibility('u39','hidden','none',500);

	SetPanelVisibility('u44','hidden','none',500);

}

}

var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'center';
var u12 = document.getElementById('u12');
gv_vAlignTable['u12'] = 'center';
var u39 = document.getElementById('u39');

var u9 = document.getElementById('u9');

if (bIE) u9.attachEvent("onmouseover", MouseOveru9);
else u9.addEventListener("mouseover", MouseOveru9, true);
function MouseOveru9(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u9',e)) return;
if (true) {

	SetPanelVisibility('u39','','none',500);

	SetPanelVisibility('u44','hidden','none',500);

	SetPanelVisibility('u17','hidden','none',500);

}

}

var u35 = document.getElementById('u35');

u35.style.cursor = 'pointer';
if (bIE) u35.attachEvent("onclick", Clicku35);
else u35.addEventListener("click", Clicku35, true);
function Clicku35(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_centro_de_costos.html" + GetQuerystring();

}

}

var u27 = document.getElementById('u27');

var u7 = document.getElementById('u7');

u7.style.cursor = 'pointer';
if (bIE) u7.attachEvent("onclick", Clicku7);
else u7.addEventListener("click", Clicku7, true);
function Clicku7(e)
{
windowEvent = e;


if (true) {

	self.location.href="home.html" + GetQuerystring();

}

}

if (bIE) u7.attachEvent("onmouseover", MouseOveru7);
else u7.addEventListener("mouseover", MouseOveru7, true);
function MouseOveru7(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u7',e)) return;
if (true) {

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u39','hidden','none',500);

	SetPanelVisibility('u44','hidden','none',500);

}

}

var u42 = document.getElementById('u42');

var u58 = document.getElementById('u58');

var u23 = document.getElementById('u23');
gv_vAlignTable['u23'] = 'center';
var u53 = document.getElementById('u53');

var u24 = document.getElementById('u24');

var u4 = document.getElementById('u4');

var u46 = document.getElementById('u46');
gv_vAlignTable['u46'] = 'center';
var u61 = document.getElementById('u61');

var u56 = document.getElementById('u56');
gv_vAlignTable['u56'] = 'center';
var u54 = document.getElementById('u54');
gv_vAlignTable['u54'] = 'center';
var u5 = document.getElementById('u5');

var u2 = document.getElementById('u2');

var u18 = document.getElementById('u18');

if (bIE) u18.attachEvent("onmouseover", MouseOveru18);
else u18.addEventListener("mouseover", MouseOveru18, true);
function MouseOveru18(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u18',e)) return;
if (true) {

	SetPanelVisibility('u24','','none',500);

	SetPanelVisibility('u29','hidden','none',500);

	SetPanelVisibility('u34','hidden','none',500);

}

}

var u19 = document.getElementById('u19');
gv_vAlignTable['u19'] = 'center';
var u55 = document.getElementById('u55');

var u20 = document.getElementById('u20');

if (bIE) u20.attachEvent("onmouseover", MouseOveru20);
else u20.addEventListener("mouseover", MouseOveru20, true);
function MouseOveru20(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u20',e)) return;
if (true) {

	SetPanelVisibility('u29','','none',500);

	SetPanelVisibility('u24','hidden','none',500);

	SetPanelVisibility('u34','hidden','none',500);

}

}

var u21 = document.getElementById('u21');
gv_vAlignTable['u21'] = 'center';
var u48 = document.getElementById('u48');
gv_vAlignTable['u48'] = 'center';
var u22 = document.getElementById('u22');

if (bIE) u22.attachEvent("onmouseover", MouseOveru22);
else u22.addEventListener("mouseover", MouseOveru22, true);
function MouseOveru22(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u22',e)) return;
if (true) {

	SetPanelVisibility('u34','','none',500);

	SetPanelVisibility('u29','hidden','none',500);

	SetPanelVisibility('u24','hidden','none',500);

}

}

var u49 = document.getElementById('u49');

var u47 = document.getElementById('u47');

var u50 = document.getElementById('u50');
gv_vAlignTable['u50'] = 'center';
var u25 = document.getElementById('u25');

u25.style.cursor = 'pointer';
if (bIE) u25.attachEvent("onclick", Clicku25);
else u25.addEventListener("click", Clicku25, true);
function Clicku25(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_extension.html" + GetQuerystring();

}

}

var u51 = document.getElementById('u51');

var u45 = document.getElementById('u45');

var u52 = document.getElementById('u52');
gv_vAlignTable['u52'] = 'center';
var u33 = document.getElementById('u33');
gv_vAlignTable['u33'] = 'center';
var u34 = document.getElementById('u34');

var u0 = document.getElementById('u0');

if (window.OnLoad) OnLoad();

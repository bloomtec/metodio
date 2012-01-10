
var PageName = 'eliminar centro de costos';
var PageId = '39dc4f28a59e4ce8b7a6dd0c3071186b'
var PageUrl = 'eliminar_centro_de_costos.html'
document.title = 'eliminar centro de costos';
var PageNotes = 
{
"pageName":"eliminar centro de costos",
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

var u21 = document.getElementById('u21');
gv_vAlignTable['u21'] = 'center';
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

	SetPanelVisibility('u46','hidden','none',500);

	SetPanelVisibility('u51','hidden','none',500);

}

}

var u51 = document.getElementById('u51');

var u25 = document.getElementById('u25');
gv_vAlignTable['u25'] = 'center';
var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'center';
var u55 = document.getElementById('u55');
gv_vAlignTable['u55'] = 'center';
var u46 = document.getElementById('u46');

var u31 = document.getElementById('u31');

var u38 = document.getElementById('u38');
gv_vAlignTable['u38'] = 'center';
var u32 = document.getElementById('u32');

var u23 = document.getElementById('u23');
gv_vAlignTable['u23'] = 'center';
var u62 = document.getElementById('u62');

var u53 = document.getElementById('u53');
gv_vAlignTable['u53'] = 'center';
var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u4 = document.getElementById('u4');

var u68 = document.getElementById('u68');

var u66 = document.getElementById('u66');

var u30 = document.getElementById('u30');
gv_vAlignTable['u30'] = 'center';
var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'center';
var u60 = document.getElementById('u60');

var u34 = document.getElementById('u34');

var u17 = document.getElementById('u17');

var u64 = document.getElementById('u64');

var u19 = document.getElementById('u19');
gv_vAlignTable['u19'] = 'center';
var u49 = document.getElementById('u49');

var u11 = document.getElementById('u11');

if (bIE) u11.attachEvent("onmouseover", MouseOveru11);
else u11.addEventListener("mouseover", MouseOveru11, true);
function MouseOveru11(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u11',e)) return;
if (true) {

	SetPanelVisibility('u17','','none',500);

	SetPanelVisibility('u46','hidden','none',500);

	SetPanelVisibility('u51','hidden','none',500);

}

}

var u41 = document.getElementById('u41');

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

	SetPanelVisibility('u46','hidden','none',500);

	SetPanelVisibility('u51','hidden','none',500);

}

}

var u45 = document.getElementById('u45');
gv_vAlignTable['u45'] = 'center';
var u36 = document.getElementById('u36');

var u58 = document.getElementById('u58');

var u37 = document.getElementById('u37');

var u2 = document.getElementById('u2');

var u22 = document.getElementById('u22');

if (bIE) u22.attachEvent("onmouseover", MouseOveru22);
else u22.addEventListener("mouseover", MouseOveru22, true);
function MouseOveru22(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u22',e)) return;
if (true) {

	SetPanelVisibility('u36','','none',500);

	SetPanelVisibility('u31','hidden','none',500);

	SetPanelVisibility('u26','hidden','none',500);

	SetPanelVisibility('u41','hidden','none',500);

}

}

var u13 = document.getElementById('u13');

if (bIE) u13.attachEvent("onmouseover", MouseOveru13);
else u13.addEventListener("mouseover", MouseOveru13, true);
function MouseOveru13(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u13',e)) return;
if (true) {

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u46','hidden','none',500);

	SetPanelVisibility('u17','hidden','none',500);

	SetPanelVisibility('u51','','none',500);

}

}

var u52 = document.getElementById('u52');

var u43 = document.getElementById('u43');
gv_vAlignTable['u43'] = 'center';
var u0 = document.getElementById('u0');

var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'center';
var u27 = document.getElementById('u27');

var u47 = document.getElementById('u47');

u47.style.cursor = 'pointer';
if (bIE) u47.attachEvent("onclick", Clicku47);
else u47.addEventListener("click", Clicku47, true);
function Clicku47(e)
{
windowEvent = e;


if (true) {

	self.location.href="agregar_usuario.html" + GetQuerystring();

}

}

var u20 = document.getElementById('u20');

if (bIE) u20.attachEvent("onmouseover", MouseOveru20);
else u20.addEventListener("mouseover", MouseOveru20, true);
function MouseOveru20(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u20',e)) return;
if (true) {

	SetPanelVisibility('u31','','none',500);

	SetPanelVisibility('u26','hidden','none',500);

	SetPanelVisibility('u36','hidden','none',500);

	SetPanelVisibility('u41','hidden','none',500);

}

}

var u50 = document.getElementById('u50');
gv_vAlignTable['u50'] = 'center';
var u28 = document.getElementById('u28');
gv_vAlignTable['u28'] = 'center';
var u24 = document.getElementById('u24');

if (bIE) u24.attachEvent("onmouseover", MouseOveru24);
else u24.addEventListener("mouseover", MouseOveru24, true);
function MouseOveru24(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u24',e)) return;
if (true) {

	SetPanelVisibility('u41','','none',500);

	SetPanelVisibility('u31','hidden','none',500);

	SetPanelVisibility('u26','hidden','none',500);

	SetPanelVisibility('u36','hidden','none',500);

}

}

var u54 = document.getElementById('u54');

var u39 = document.getElementById('u39');

var u6 = document.getElementById('u6');
gv_vAlignTable['u6'] = 'center';
var u61 = document.getElementById('u61');
gv_vAlignTable['u61'] = 'center';
var u35 = document.getElementById('u35');
gv_vAlignTable['u35'] = 'center';
var u26 = document.getElementById('u26');

var u65 = document.getElementById('u65');

var u56 = document.getElementById('u56');

var u5 = document.getElementById('u5');

var u12 = document.getElementById('u12');
gv_vAlignTable['u12'] = 'center';
var u9 = document.getElementById('u9');

if (bIE) u9.attachEvent("onmouseover", MouseOveru9);
else u9.addEventListener("mouseover", MouseOveru9, true);
function MouseOveru9(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u9',e)) return;
if (true) {

	SetPanelVisibility('u46','','none',500);

	SetPanelVisibility('u51','hidden','none',500);

	SetPanelVisibility('u17','hidden','none',500);

}

}

var u42 = document.getElementById('u42');

var u33 = document.getElementById('u33');
gv_vAlignTable['u33'] = 'center';
var u63 = document.getElementById('u63');
gv_vAlignTable['u63'] = 'center';
var u18 = document.getElementById('u18');

if (bIE) u18.attachEvent("onmouseover", MouseOveru18);
else u18.addEventListener("mouseover", MouseOveru18, true);
function MouseOveru18(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u18',e)) return;
if (true) {

	SetPanelVisibility('u26','','none',500);

	SetPanelVisibility('u31','hidden','none',500);

	SetPanelVisibility('u41','hidden','none',500);

	SetPanelVisibility('u36','hidden','none',500);

}

}

var u48 = document.getElementById('u48');
gv_vAlignTable['u48'] = 'center';
var u67 = document.getElementById('u67');

var u57 = document.getElementById('u57');
gv_vAlignTable['u57'] = 'center';
var u10 = document.getElementById('u10');
gv_vAlignTable['u10'] = 'center';
var u40 = document.getElementById('u40');
gv_vAlignTable['u40'] = 'center';
var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'center';
var u44 = document.getElementById('u44');

var u29 = document.getElementById('u29');

var u59 = document.getElementById('u59');
gv_vAlignTable['u59'] = 'center';
if (window.OnLoad) OnLoad();


var PageName = 'modulo usuarios';
var PageId = '9d245603cc9243a683cdc9a7f4871b84'
var PageUrl = 'modulo_usuarios.html'
document.title = 'modulo usuarios';
var PageNotes = 
{
"pageName":"modulo usuarios",
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

var u86 = document.getElementById('u86');

var u51 = document.getElementById('u51');

var u102 = document.getElementById('u102');
gv_vAlignTable['u102'] = 'center';
var u25 = document.getElementById('u25');
gv_vAlignTable['u25'] = 'center';
var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'center';
var u55 = document.getElementById('u55');

var u46 = document.getElementById('u46');
gv_vAlignTable['u46'] = 'center';
var u76 = document.getElementById('u76');
gv_vAlignTable['u76'] = 'center';
var u31 = document.getElementById('u31');

var u77 = document.getElementById('u77');

u77.style.cursor = 'pointer';
if (bIE) u77.attachEvent("onclick", Clicku77);
else u77.addEventListener("click", Clicku77, true);
function Clicku77(e)
{
windowEvent = e;


if (true) {

	self.location.href="login.html" + GetQuerystring();

}

}

if (bIE) u77.attachEvent("onmouseover", MouseOveru77);
else u77.addEventListener("mouseover", MouseOveru77, true);
function MouseOveru77(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u77',e)) return;
if (true) {

	SetPanelVisibility('u79','hidden','none',500);

	SetPanelVisibility('u108','hidden','none',500);

	SetPanelVisibility('u113','hidden','none',500);

}

}

var u93 = document.getElementById('u93');
gv_vAlignTable['u93'] = 'center';
var u107 = document.getElementById('u107');
gv_vAlignTable['u107'] = 'center';
var u38 = document.getElementById('u38');
gv_vAlignTable['u38'] = 'center';
var u32 = document.getElementById('u32');
gv_vAlignTable['u32'] = 'center';
var u23 = document.getElementById('u23');
gv_vAlignTable['u23'] = 'center';
var u62 = document.getElementById('u62');
gv_vAlignTable['u62'] = 'center';
var u53 = document.getElementById('u53');

var u87 = document.getElementById('u87');

u87.style.cursor = 'pointer';
if (bIE) u87.attachEvent("onclick", Clicku87);
else u87.addEventListener("click", Clicku87, true);
function Clicku87(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_extension.html" + GetQuerystring();

}

}

var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u119 = document.getElementById('u119');
gv_vAlignTable['u119'] = 'center';
var u27 = document.getElementById('u27');
gv_vAlignTable['u27'] = 'center';
var u7 = document.getElementById('u7');

var u66 = document.getElementById('u66');
gv_vAlignTable['u66'] = 'center';
var u112 = document.getElementById('u112');
gv_vAlignTable['u112'] = 'center';
var u115 = document.getElementById('u115');
gv_vAlignTable['u115'] = 'center';
var u104 = document.getElementById('u104');

u104.style.cursor = 'pointer';
if (bIE) u104.attachEvent("onclick", Clicku104);
else u104.addEventListener("click", Clicku104, true);
function Clicku104(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_abreviado.html" + GetQuerystring();

}

}

var u30 = document.getElementById('u30');

var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'center';
var u60 = document.getElementById('u60');
gv_vAlignTable['u60'] = 'center';
var u89 = document.getElementById('u89');

var u122 = document.getElementById('u122');

u122.style.cursor = 'pointer';
if (bIE) u122.attachEvent("onclick", Clicku122);
else u122.addEventListener("click", Clicku122, true);
function Clicku122(e)
{
windowEvent = e;


if (true) {

	self.location.href="historial_de_llamadas_por_departamento.html" + GetQuerystring();

}

}

var u34 = document.getElementById('u34');
gv_vAlignTable['u34'] = 'center';
var u17 = document.getElementById('u17');

u17.style.cursor = 'pointer';
if (bIE) u17.attachEvent("onclick", Clicku17);
else u17.addEventListener("click", Clicku17, true);
function Clicku17(e)
{
windowEvent = e;


if (true) {

	self.location.href="editar_usuario.html" + GetQuerystring();

}

}

var u64 = document.getElementById('u64');
gv_vAlignTable['u64'] = 'center';
var u100 = document.getElementById('u100');
gv_vAlignTable['u100'] = 'center';
var u19 = document.getElementById('u19');

var u49 = document.getElementById('u49');

var u103 = document.getElementById('u103');

var u79 = document.getElementById('u79');

var u69 = document.getElementById('u69');

u69.style.cursor = 'pointer';
if (bIE) u69.attachEvent("onclick", Clicku69);
else u69.addEventListener("click", Clicku69, true);
function Clicku69(e)
{
windowEvent = e;


if (true) {

	self.location.href="home.html" + GetQuerystring();

}

}

if (bIE) u69.attachEvent("onmouseover", MouseOveru69);
else u69.addEventListener("mouseover", MouseOveru69, true);
function MouseOveru69(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u69',e)) return;
if (true) {

	SetPanelVisibility('u79','hidden','none',500);

	SetPanelVisibility('u108','hidden','none',500);

	SetPanelVisibility('u113','hidden','none',500);

}

}

var u97 = document.getElementById('u97');

u97.style.cursor = 'pointer';
if (bIE) u97.attachEvent("onclick", Clicku97);
else u97.addEventListener("click", Clicku97, true);
function Clicku97(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_centro_de_costos.html" + GetQuerystring();

}

}

var u118 = document.getElementById('u118');

u118.style.cursor = 'pointer';
if (bIE) u118.attachEvent("onclick", Clicku118);
else u118.addEventListener("click", Clicku118, true);
function Clicku118(e)
{
windowEvent = e;


if (true) {

	self.location.href="historial_de_llamadas_por_numero_de_origen.html" + GetQuerystring();

}

}

var u124 = document.getElementById('u124');

u124.style.cursor = 'pointer';
if (bIE) u124.attachEvent("onclick", Clicku124);
else u124.addEventListener("click", Clicku124, true);
function Clicku124(e)
{
windowEvent = e;


if (true) {

	self.location.href="historial_de_llamadas_por_centro_de_costo.html" + GetQuerystring();

}

}

var u85 = document.getElementById('u85');
gv_vAlignTable['u85'] = 'center';
var u11 = document.getElementById('u11');
gv_vAlignTable['u11'] = 'center';
var u41 = document.getElementById('u41');

var u108 = document.getElementById('u108');

var u71 = document.getElementById('u71');

u71.style.cursor = 'pointer';
if (bIE) u71.attachEvent("onclick", Clicku71);
else u71.addEventListener("click", Clicku71, true);
function Clicku71(e)
{
windowEvent = e;


if (true) {

	self.location.href="resources/reload.html#" + encodeURI(PageUrl + GetQuerystring());

}

}

if (bIE) u71.attachEvent("onmouseover", MouseOveru71);
else u71.addEventListener("mouseover", MouseOveru71, true);
function MouseOveru71(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u71',e)) return;
if (true) {

	SetPanelVisibility('u108','','none',500);

	SetPanelVisibility('u113','hidden','none',500);

	SetPanelVisibility('u79','hidden','none',500);

}

}

var u15 = document.getElementById('u15');

u15.style.cursor = 'pointer';
if (bIE) u15.attachEvent("onclick", Clicku15);
else u15.addEventListener("click", Clicku15, true);
function Clicku15(e)
{
windowEvent = e;


if (true) {

	SetPanelVisibility('u9','hidden','none',500);

	MoveWidgetBy('u21',0,-50,'none',500);

}

}

var u45 = document.getElementById('u45');

var u36 = document.getElementById('u36');
gv_vAlignTable['u36'] = 'center';
var u75 = document.getElementById('u75');

if (bIE) u75.attachEvent("onmouseover", MouseOveru75);
else u75.addEventListener("mouseover", MouseOveru75, true);
function MouseOveru75(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u75',e)) return;
if (true) {

	SetPanelVisibility('u79','hidden','none',500);

	SetPanelVisibility('u108','hidden','none',500);

	SetPanelVisibility('u79','hidden','none',500);

	SetPanelVisibility('u113','','none',500);

}

}

var u58 = document.getElementById('u58');

var u37 = document.getElementById('u37');

var u126 = document.getElementById('u126');

var u2 = document.getElementById('u2');

var u92 = document.getElementById('u92');

u92.style.cursor = 'pointer';
if (bIE) u92.attachEvent("onclick", Clicku92);
else u92.addEventListener("click", Clicku92, true);
function Clicku92(e)
{
windowEvent = e;


if (true) {

	self.location.href="crear_departamento.html" + GetQuerystring();

}

}

var u83 = document.getElementById('u83');
gv_vAlignTable['u83'] = 'center';
var u129 = document.getElementById('u129');

var u95 = document.getElementById('u95');
gv_vAlignTable['u95'] = 'center';
var u22 = document.getElementById('u22');

var u13 = document.getElementById('u13');

u13.style.cursor = 'pointer';
if (bIE) u13.attachEvent("onclick", Clicku13);
else u13.addEventListener("click", Clicku13, true);
function Clicku13(e)
{
windowEvent = e;


if (true) {

	self.location.href="ver_usuario.html" + GetQuerystring();

}

}

var u52 = document.getElementById('u52');
gv_vAlignTable['u52'] = 'center';
var u43 = document.getElementById('u43');

var u0 = document.getElementById('u0');

var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'center';
var u47 = document.getElementById('u47');

var u68 = document.getElementById('u68');
gv_vAlignTable['u68'] = 'center';
var u90 = document.getElementById('u90');
gv_vAlignTable['u90'] = 'center';
var u73 = document.getElementById('u73');

if (bIE) u73.attachEvent("onmouseover", MouseOveru73);
else u73.addEventListener("mouseover", MouseOveru73, true);
function MouseOveru73(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u73',e)) return;
if (true) {

	SetPanelVisibility('u79','','none',500);

	SetPanelVisibility('u108','hidden','none',500);

	SetPanelVisibility('u113','hidden','none',500);

}

}

var u84 = document.getElementById('u84');

u84.style.cursor = 'pointer';
if (bIE) u84.attachEvent("onclick", Clicku84);
else u84.addEventListener("click", Clicku84, true);
function Clicku84(e)
{
windowEvent = e;


if (true) {

	self.location.href="modulo_centro_de_costos.html" + GetQuerystring();

}

}

if (bIE) u84.attachEvent("onmouseover", MouseOveru84);
else u84.addEventListener("mouseover", MouseOveru84, true);
function MouseOveru84(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u84',e)) return;
if (true) {

	SetPanelVisibility('u96','','none',500);

	SetPanelVisibility('u91','hidden','none',500);

	SetPanelVisibility('u86','hidden','none',500);

	SetPanelVisibility('u103','hidden','none',500);

}

}

var u20 = document.getElementById('u20');
gv_vAlignTable['u20'] = 'center';
var u50 = document.getElementById('u50');
gv_vAlignTable['u50'] = 'center';
var u128 = document.getElementById('u128');

var u106 = document.getElementById('u106');

var u28 = document.getElementById('u28');

var u24 = document.getElementById('u24');

var u54 = document.getElementById('u54');
gv_vAlignTable['u54'] = 'center';
var u99 = document.getElementById('u99');

var u113 = document.getElementById('u113');

var u39 = document.getElementById('u39');

var u111 = document.getElementById('u111');

var u130 = document.getElementById('u130');

var u78 = document.getElementById('u78');
gv_vAlignTable['u78'] = 'center';
var u120 = document.getElementById('u120');

u120.style.cursor = 'pointer';
if (bIE) u120.attachEvent("onclick", Clicku120);
else u120.addEventListener("click", Clicku120, true);
function Clicku120(e)
{
windowEvent = e;


if (true) {

	self.location.href="historial_de_llamdas_por_numero_destino.html" + GetQuerystring();

}

}

var u114 = document.getElementById('u114');

u114.style.cursor = 'pointer';
if (bIE) u114.attachEvent("onclick", Clicku114);
else u114.addEventListener("click", Clicku114, true);
function Clicku114(e)
{
windowEvent = e;


if (true) {

	self.location.href="historia_de_llamadas_general.html" + GetQuerystring();

}

}

var u4 = document.getElementById('u4');

var u94 = document.getElementById('u94');

var u6 = document.getElementById('u6');
gv_vAlignTable['u6'] = 'center';
var u96 = document.getElementById('u96');

var u61 = document.getElementById('u61');

u61.style.cursor = 'pointer';
if (bIE) u61.attachEvent("onclick", Clicku61);
else u61.addEventListener("click", Clicku61, true);
function Clicku61(e)
{
windowEvent = e;


if (true) {

	SetPanelVisibility('u55','hidden','none',500);

	MoveWidgetBy('u21',0,-50,'none',500);

	MoveWidgetBy('u9',0,-50,'none',500);

}

}

var u91 = document.getElementById('u91');

var u35 = document.getElementById('u35');

var u26 = document.getElementById('u26');

var u65 = document.getElementById('u65');

var u56 = document.getElementById('u56');

var u116 = document.getElementById('u116');

u116.style.cursor = 'pointer';
if (bIE) u116.attachEvent("onclick", Clicku116);
else u116.addEventListener("click", Clicku116, true);
function Clicku116(e)
{
windowEvent = e;


if (true) {

	self.location.href="historia_de_llamadas_por_extensión.html" + GetQuerystring();

}

}

var u127 = document.getElementById('u127');

var u105 = document.getElementById('u105');
gv_vAlignTable['u105'] = 'center';
var u109 = document.getElementById('u109');

u109.style.cursor = 'pointer';
if (bIE) u109.attachEvent("onclick", Clicku109);
else u109.addEventListener("click", Clicku109, true);
function Clicku109(e)
{
windowEvent = e;


if (true) {

	self.location.href="agregar_usuario.html" + GetQuerystring();

}

}

var u123 = document.getElementById('u123');
gv_vAlignTable['u123'] = 'center';
var u82 = document.getElementById('u82');

u82.style.cursor = 'pointer';
if (bIE) u82.attachEvent("onclick", Clicku82);
else u82.addEventListener("click", Clicku82, true);
function Clicku82(e)
{
windowEvent = e;


if (true) {

	self.location.href="modulo_departamentos.html" + GetQuerystring();

}

}

if (bIE) u82.attachEvent("onmouseover", MouseOveru82);
else u82.addEventListener("mouseover", MouseOveru82, true);
function MouseOveru82(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u82',e)) return;
if (true) {

	SetPanelVisibility('u91','','none',500);

	SetPanelVisibility('u86','hidden','none',500);

	SetPanelVisibility('u96','hidden','none',500);

	SetPanelVisibility('u103','hidden','none',500);

}

}

var u81 = document.getElementById('u81');
gv_vAlignTable['u81'] = 'center';
var u5 = document.getElementById('u5');

var u12 = document.getElementById('u12');

var u9 = document.getElementById('u9');

var u42 = document.getElementById('u42');
gv_vAlignTable['u42'] = 'center';
var u33 = document.getElementById('u33');

var u72 = document.getElementById('u72');
gv_vAlignTable['u72'] = 'center';
var u63 = document.getElementById('u63');

u63.style.cursor = 'pointer';
if (bIE) u63.attachEvent("onclick", Clicku63);
else u63.addEventListener("click", Clicku63, true);
function Clicku63(e)
{
windowEvent = e;


if (true) {

	self.location.href="editar_usuario.html" + GetQuerystring();

}

}

var u18 = document.getElementById('u18');
gv_vAlignTable['u18'] = 'center';
var u48 = document.getElementById('u48');
gv_vAlignTable['u48'] = 'center';
var u110 = document.getElementById('u110');
gv_vAlignTable['u110'] = 'center';
var u67 = document.getElementById('u67');

var u88 = document.getElementById('u88');
gv_vAlignTable['u88'] = 'center';
var u57 = document.getElementById('u57');
gv_vAlignTable['u57'] = 'center';
var u125 = document.getElementById('u125');
gv_vAlignTable['u125'] = 'center';
var u101 = document.getElementById('u101');

u101.style.cursor = 'pointer';
if (bIE) u101.attachEvent("onclick", Clicku101);
else u101.addEventListener("click", Clicku101, true);
function Clicku101(e)
{
windowEvent = e;


if (true) {

	self.location.href="modulo_abreviados.html" + GetQuerystring();

}

}

if (bIE) u101.attachEvent("onmouseover", MouseOveru101);
else u101.addEventListener("mouseover", MouseOveru101, true);
function MouseOveru101(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u101',e)) return;
if (true) {

	SetPanelVisibility('u103','','none',500);

	SetPanelVisibility('u91','hidden','none',500);

	SetPanelVisibility('u86','hidden','none',500);

	SetPanelVisibility('u96','hidden','none',500);

}

}

var u10 = document.getElementById('u10');

var u40 = document.getElementById('u40');
gv_vAlignTable['u40'] = 'center';
var u70 = document.getElementById('u70');
gv_vAlignTable['u70'] = 'center';
var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'center';
var u44 = document.getElementById('u44');
gv_vAlignTable['u44'] = 'center';
var u117 = document.getElementById('u117');
gv_vAlignTable['u117'] = 'center';
var u74 = document.getElementById('u74');
gv_vAlignTable['u74'] = 'center';
var u29 = document.getElementById('u29');

var u59 = document.getElementById('u59');

u59.style.cursor = 'pointer';
if (bIE) u59.attachEvent("onclick", Clicku59);
else u59.addEventListener("click", Clicku59, true);
function Clicku59(e)
{
windowEvent = e;


if (true) {

	self.location.href="ver_usuario.html" + GetQuerystring();

}

}

var u98 = document.getElementById('u98');
gv_vAlignTable['u98'] = 'center';
var u80 = document.getElementById('u80');

u80.style.cursor = 'pointer';
if (bIE) u80.attachEvent("onclick", Clicku80);
else u80.addEventListener("click", Clicku80, true);
function Clicku80(e)
{
windowEvent = e;


if (true) {

	self.location.href="modulo_extensiones.html" + GetQuerystring();

}

}

if (bIE) u80.attachEvent("onmouseover", MouseOveru80);
else u80.addEventListener("mouseover", MouseOveru80, true);
function MouseOveru80(e)
{
windowEvent = e;

if (!IsTrueMouseOver('u80',e)) return;
if (true) {

	SetPanelVisibility('u86','','none',500);

	SetPanelVisibility('u91','hidden','none',500);

	SetPanelVisibility('u103','hidden','none',500);

	SetPanelVisibility('u96','hidden','none',500);

}

}

var u121 = document.getElementById('u121');
gv_vAlignTable['u121'] = 'center';
if (window.OnLoad) OnLoad();

function ajax(url,destino) {
req = null;
if (window.XMLHttpRequest) { // Procura por um objeto nativo (Mozilla/Safari)
	req = new XMLHttpRequest();
	req.onreadystatechange = processReqChange;
	req.open("GET",url,true); //abre a requisição para o arquivo php que pesquisará o estado
	req.send(null);
} else if (window.ActiveXObject) { // Procura por uma versão ActiveX (IE)
	req = new ActiveXObject("Microsoft.XMLHTTP");
	if (req) {
		req.onreadystatechange = processReqChange;
		req.open("GET",url,true); //abre a requisição para o arquivo php que pesquisará o estado
		req.send();
	}
}
destino_retorno = destino;
}

function processReqChange() {
if (req.readyState == 4) { // apenas quando o estado for "completado"
	if (req.status == 200) { // apenas se o servidor retornar “OK”
		document.getElementById(destino_retorno).innerHTML = req.responseText;
	} else {
		alert("Houve um problema ao obter os dados:n" + req.statusText);
	}
} else if (req.readyState == 1) {
	document.getElementById(destino_retorno).innerHTML = '<span style="font-family:Arial;color:#666666;">Carregando</span>';	
}
}
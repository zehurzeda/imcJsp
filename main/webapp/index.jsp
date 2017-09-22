<html>
<head>
	<title>Calculo maior/menor</title>
</head>
<body>
<h2>Calculo IMC</h2>
<form>
	Altura: <input type="number" step="0.01" name="altura"/>
	Peso: <input type="number" step="0.01" name="peso"/>
	<select name="sexo">
		<option value="0" disabled selected>Gênero</option>
		<option value="1" >Masculino</option>
		<option value="2" >Feminino</option>
	</select>
	<button>Calcular</button>
</form>
<%
String alturaString = request.getParameter("altura");
String pesoString = request.getParameter("peso");
String sexoString = request.getParameter("sexo");

double altura = alturaString == null ? 0 : Double.parseDouble(alturaString);
double peso = pesoString == null ? 0 : Double.parseDouble(pesoString);
int sexo = sexoString == null ? 0 : Integer.parseInt(sexoString);

if(peso !=0 && altura !=0 && sexo != 0){
	double imc = peso/(altura*altura);
	if(sexo == 2){
		if(imc <= 19.1){
			%>
			<h3>Abaixo do peso!</h3>
			<%
		}else if(imc > 19.1 && imc <= 25.8 ){
			%>
			<h3>No peso normal!</h3>
			<%
		}else if(imc > 25.8 ){
			%>
			<h3>Acima do peso!</h3>
			<%
		}
	}else if(sexo == 1){
		if(imc <= 20.7){
			%>
			<h3>Abaixo do peso!</h3>
			<%
		}else if(imc > 20.7 && imc <= 26.4 ){
			%>
			<h3>No peso normal!</h3>
			<%
		}else if(imc > 27.8 ){
			%>
			<h3>Acima do peso!</h3>
			<%
		}
	}
}

%>
</body>
</html>

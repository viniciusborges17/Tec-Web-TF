

document.getElementById("formulario").onsubmit=function(event){
	var nomeCampo = document.getElementById("nome");
	var raCampo = document.getElementById("ra");
	if(nomeCampo.value == "" ) {
	    alert("Campo obrigatório não preenchido");
	    return false;

	}
	if(raCampo.value == "" ) {
	    alert("Campo obrigatório não preenchido");
	    return false;

	}
	else if (nomeCampo.value == true){
		
	var alunos = new Array(nomeCampo,raCampo);
	alert(alunos);
	}
	
};
function Alerta(){
	   alert(nomeCampo.value);
	}







/*
var alunos = document.getElementsByClassName("impo");
alert("impo");


var p = document.getElementById("novo_aluno");
console.log(titulo)

var a = document.getElementById("alunos");
console.log(a)
var b = document.getElementById("lista_alunos");
console.log(b)
var c = document.getElementById("total_alunos");
console.log(c)

var d = document.getElementById("titulo");
console.log(d)




/*
function calculo(nota){
	if (nota <= 3){
		return alert("reprovado");
	}
	else if (nota > 3 && nota <=5){
		return alert("Recuperação");
	}
	else if (nota > 5 && nota <= 7){
		return alert("Reforço");
	}
	else if (nota > 7){
		alert("Aprovado");
	}
}

var alunos = new Array("8.5","8.5","5","3");


var cont = 0;
while(cont <= 4){
	calculo(alunos[cont]);
	cont++;
}



/*








var alunos = ["joao","dd"]
for (var controle=0; controle <4; controle++) {
	 	alert(alunos[controle]);}

	
	
var a = function (){
    var	a = "msg";
	return alert(a);
};

a();


var nota1 = function (nota,peso){
	var media = nota * peso;
	return media;
	
}

var cal = nota1(10,10);
alert(cal);

var nome =  new Array("nome","nome2");


var p_nota = new Array("7","7");

var s_nota = new Array("8.5","8.5");

var multi = p_nota[0] * 0.6;
var multi_0 = p_nota[1] * 0.6;

var mult_s = s_nota[0] * 0.4;
var mult_s1 = s_nota[1] * 0.4;

var soma = mult_s + multi;
var soma1 = mult_s1 + multi_0;

var total = new Array();
total[0] = soma;
total[1] = soma1;

alert(total);
*/ 

var menu = document.querySelectorAll('a')[1];
var toggle = [];
var ativo = true;

var ligaDesliga = document.querySelectorAll('.navbar li');

menu.addEventListener('click', function(){
	if(ativo == true){
		for(var i = 0; i < ligaDesliga.length; i++){
			ligaDesliga[i].style.display = 'block';
			ativo = false;
		}
	}else{
		for(var i = 0; i < ligaDesliga.length; i++){
			ligaDesliga[i].style.display = 'none';
		}
		ligaDesliga[0].style.display = 'block';
		ativo = true;
	}
});

document.getElementById("login").onsubmit=function(event){
	var raCampo = document.getElementById("ra");
	var senhaCampo = document.getElementById("senha");
	if(raCampo.value == "") {
	    alert("Campo obrigatório não preenchido");
	    return false;
	}
	if(senhaCampo.value == "") {
	    alert("Campo obrigatório não preenchido");
	    return false;
	}

};



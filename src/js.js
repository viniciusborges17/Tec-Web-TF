var menu = document.querySelectorAll('a')[1];
var toggle = [];
var ativo = true;
var w = window.innerWidth;

var ligaDesliga = document.querySelectorAll('.navbar li');

if(window.innerWidth < 400){
	console.log("menor");
}

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
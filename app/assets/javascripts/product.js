document.addEventListener("turbolinks:load", function(){
	document.querySelector("#checkid").addEventListener("click",function(e){
		ahoy.track("Click to App", e.target.dataset);
	});
	document.querySelector("#HomeTopPhone").addEventListener("click",function(f){
		ahoy.track("Click to Phone", f.target.dataset);
	});			
	document.querySelector("#SearchText").addEventListener("click",function(g){
		ahoy.track("Click to SearchText", g.target.dataset);
	});		
	document.querySelector("#SearchButton").addEventListener("click",function(h){
		ahoy.track("Click to SearchButton", h.target.dataset);
	});		
});

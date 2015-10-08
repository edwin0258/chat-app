function submitText(){
	var chatBox = document.getElementById('text').value;  
	var body = document.getElementById("body");
	var post = document.createElement('li');
	//alert(chatBox);
	post.innerHTML = (chatBox)
	body.appendChild(post)
}
document.onkeydown=function(){
	if(window.event.keyCode=='13'){
		submitText();
	}
}
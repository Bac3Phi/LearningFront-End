var data = ["Hello", "Welcome", "Hi"];
window.onload = function() {
	document.getElementById("word").value = "";
	refreshList();
}

var checkWord = function() {
	var list = document.getElementById("list");
	var word = document.getElementById("word");
	var index = getIndex(word.value);

	if (index != -1) {
		if (confirm("Tu nay da co o muc " + (index + 1) + ", ban co muon xoa khoi danh sach?")) {
		    data.splice(index, 1);
		    refreshList();
		}
	} else {
		data.push(word.value);
		refreshList();
	}
	word.value = "";
}

var getIndex = function(word) {
	for (var i=0; i<data.length; i++) {
		if (word.toLowerCase() == data[i].toLowerCase()) {
			return i;
		}
	}	
	return -1;
}

var refreshList = function() {
	var list = document.getElementById("list");
	list.innerHTML = "";
	for (var i=0; i<data.length; i++) {
		list.innerHTML = list.innerHTML + data[i] + "\n";
	}
}
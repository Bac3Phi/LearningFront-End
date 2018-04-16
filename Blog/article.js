 function sendMessage(){
      var form = document.getElementsByClassName("form-control")
      var currentDate = new Date();
      var message = form[0].value

      var fullName = form[1].value

      var email = form[2].value

      var comments = document.getElementById('comments')
      var numberOfComments = comments.children.length - 1

      var comment = document.createElement('div')
      comment.className = 'row'
      comment.innerHTML = `<div class="col-md-11"><p>${message}</p><footer><small><b>${fullName}</b> <i> (${email}) </i>at ${currentDate.toLocaleString('en-US', {hour12: true })} </small></footer><hr></div><div class="col-md-1 comment-num">${numberOfComments}</div>`
      comments.insertBefore(comment, comments.children[comments.children.length-1])
      alert("Your comments sent successfull!");
      var article = document.getElementById('alert')
      
      article.innerHTML=`<div class="alert alert-success alert-dismissible"> <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong> Indicates a successful or positive action.</div>`; 
      }
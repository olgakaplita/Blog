//= require rails-ujs
//= require_tree .

//= require jquery
//= require bootstrap-sprockets

// window.addEventListener("load", function() {
// //  document.getElementById("q").value = "form javascript";
//
// //  document.getElementById("q").addEventListener('keypress', function() {
// //     console.log(this.value)
// //   })
// //   document.getElementById("q").addEventListener('mouseover', function () {
// //     console.log('myszka nad formularzem')
// //   })
// document.getElementById("add").addEventListener("click", function () {
//     var wynik;
//     var field1Value = parseInt(document.getElementById('field1').value);
//     var field2Value = parseInt(document.getElementById('field2').value);
//
//
//     wynik = field1Value + field2Value;
//     document.getElementById("wynik").innerHTML = wynik
//   })
//
//  });

window.addEventListener("load", function() {
  var elements = document.querySelectorAll('.summary');
  for(var i = 0; i < elements.length; i++) {
    elements[i].addEventListener("click", function(e) {
      e.preventDefault();
      var request = new XMLHttpRequest();
      request.open("GET", this.href + ".json");
      request.responseType = "json";
      request.addEventListener("load", function() {
        alert(this.response);
      });
      request.send();
    })
  }
});
//   var request = new XMLHttpRequest()
//   request.open("GET", "http://localhost:3000/test2.txt")
//   request.responseType = 'json'
//   request.addEventListener("load", function () {
//     document.getElementById('q').value = this.response.var1;
//     var newElement = document.createElement('h1');
//     newElement.innerText = this.response.var2;
//     document.body.appendChild(newElement);
//   })
//   request.send()
//
// });

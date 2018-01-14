//= require rails-ujs
//= require_tree .

//= require jquery
//= require bootstrap-sprockets

window.addEventListener("load", function() {
//  document.getElementById("q").value = "form javascript";

//  document.getElementById("q").addEventListener('keypress', function() {
//     console.log(this.value)
//   })
//   document.getElementById("q").addEventListener('mouseover', function () {
//     console.log('myszka nad formularzem')
//   })
document.getElementById("add").addEventListener("click", function () {
    var wynik;
    var field1Value = parseInt(document.getElementById('field1').value);
    var field2Value = parseInt(document.getElementById('field2').value);


    wynik = field1Value + field2Value;
    document.getElementById("wynik").innerHTML = wynik
  })

 });

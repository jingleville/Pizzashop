function total()
{
  var result = 0;
  Object.keys(window.localStorage).forEach(function(key){
    if(key.indexOf('product_') == 0) {
      var value = window.localStorage.getItem(key);
      result = result + value * 1;
    }
  });
  return result
}

function total_2(){
  var result = 0;

  for(var i = 0; i < window.localStorage.length; i++) {
    var key = window.localStorage.key(i);
    
    if(key.indexOf('product_') == 0) {
      var value = window.localStorage.getItem(key);
      result = result + value * 1;
    }


  }
}

function add_to_cart(id, modifyer)
{
  var key = "product_" + id

  var x = window.localStorage.getItem(key);
  if (modifyer == '+') {
    var mod = 1;
  } else {
    var mod = -1;
  }

  x = x * 1 + mod;

  if (x < 0) {
    x = 0;
  }
  
  window.localStorage.setItem(key, x);
  console.log('amount of ' + key + ' is ' + x);
  console.log(total());
}
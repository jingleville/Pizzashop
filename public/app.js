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

function items_list(){
  var result = "";

  for(var i = 0; i < window.localStorage.length; i++) {
    var key = window.localStorage.key(i);
    
    if(key.indexOf('product_') == 0) {
      var value = window.localStorage.getItem(key);
      result = result + key + "=" + value + ";";
    }
  }
  return result
}

function clean_localstorage(){
  window.localStorage.clear()
}

function update_orders_list() {
  var orders = items_list();
  $("#orders_input").val(orders);
}

function update_orders_button() {
  var text = "Cart(" + total() + ")";
  $("#orders_button").val(text);
}

function update_labels() {
  Object.keys(window.localStorage).forEach(function(key){
    if(key.indexOf('product_') == 0) {
      var x = document.getElementById(key);
      x.innerHTML = window.localStorage.getItem(key);
    }
  });
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

  var lbl = document.getElementById(key);
  lbl.innerHTML = x;

  update_orders_list();
  update_labels();
  update_orders_button();
}
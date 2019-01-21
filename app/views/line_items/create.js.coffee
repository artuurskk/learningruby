
notice = document.getElementById("notice")
if notice
  notice.style.display = "none"

cart = document.getElementById("cart")
cart.innerHTML = "<%= j render(@cart) %>"

cart_item_count = document.getElementById("lblCartCount")
cart_item_count.innerHTML = "<%= @cart.line_items.sum('quantity') %>"


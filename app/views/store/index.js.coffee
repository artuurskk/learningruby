
search = document.getElementById('search-form')
searchbtn = document.getElementById('search-btn')
products = document.getElementById('search-results')

search.keyup( ->
  alert( "Alert!!!!!!!!" )
  products.refresh()
)
searchbtn.on "click", ->
  alert( "Alert!!!!!!!!" )

$('#btn1').on 'click', -> alert("sad")

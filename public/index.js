var productTemplate = document.querySelector("#product-card");
var productContainer = document.querySelector(".row");

axios.get("http://localhost:3000/products").then(function(response) {
  var products = response.data;
  products.forEach(function(product) {
    var productClone = productTemplate.content.cloneNode(true);
    productClone.querySelector(".card-name").innerText = product.name;
    productClone.querySelector(".card-price").innerText = product.price;
    productClone.querySelector(".card-description").innerText = product.description;
    productClone.querySelector(".card-img-top").src = product.images[0]["url"];
    productContainer.appendChild(productClone);

    console.log(product);
  });
});

function showMessage() {
    alert("Welcome to FarmDirect! 🌾");
}

function buyProduct(product) {
    alert("You selected " + product + ". 🛒");
}

document.getElementById("farmerForm").addEventListener("submit", function(event) {

    event.preventDefault();

    let name = document.getElementById("farmerName").value;
    let location = document.getElementById("location").value;
    let crop = document.getElementById("crop").value;
    let price = document.getElementById("price").value;

    document.getElementById("farmerResult").innerHTML =
        "✅ Farmer " + name +
        " from " + location +
        " registered successfully!<br>" +
        "Product: " + crop +
        " | Price: ₹" + price + "/kg";

    document.getElementById("farmerForm").reset();
});
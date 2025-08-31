const users = {
    'usuario': 'contraseña'
};

let cart = [];
const cartItems = document.getElementById('cart-items');
const cartTotal = document.getElementById('cart-total');
const menu = document.getElementById('menu');
const loginForm = document.getElementById('login-form');
const loginError = document.getElementById('login-error');

function login(event) {
    event.preventDefault();
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    if (users[username] && users[username] === password) {
        loginForm.classList.add('hidden');
        menu.classList.remove('hidden');
    } else {
        loginError.textContent = 'Usuario o contraseña incorrectos';
    }
}

function addToCart(item, price) {
    cart.push({ item, price });
    updateCart();
}

function updateCart() {
    cartItems.innerHTML = '';
    let total = 0;

    cart.forEach(entry => {
        const li = document.createElement('li');
        li.textContent = `${entry.item} - $${entry.price.toFixed(2)}`;
        cartItems.appendChild(li);
        total += entry.price;
    });

    cartTotal.textContent = `Total: $${total.toFixed(2)}`;
}
// Datos de productos
const productos = [
	{
		id: 1,
		nombre: "Camisa",
		precio: 20.000,
		img: "img/camisa.jpg"
	},
	{
		id: 2,
		nombre: "Pantalon",
		precio: 30.000,
		img: "img/pantalon.jpg"
	},
	// ..
];

// Carrito
let carrito = [];

// Cargar productos en la página
const productosLista = document.getElementById("productos-lista");
productos.forEach(producto => {
	const li = document.createElement("li");
	const img = document.createElement("img");
	img.src = producto.img;
	img.alt = producto.nombre;
	const h3 = document.createElement("h3");
	h3.textContent = producto.nombre;
	const p = document.createElement("p");
	p.textContent = `$${producto.precio.toFixed(2)}`;
	const button = document.createElement("button");
	button.textContent = "Agregar al carrito";
	button.addEventListener("click", () => {
		agregarAlCarrito(producto);
	});
	li.appendChild(img);
	li.appendChild(h3);
	li.appendChild(p);
	li.appendChild(button);
	productosLista.appendChild(li);
});

// Agregar producto al carrito
function agregarAlCarrito(producto) {
	carrito.push(producto);
	actualizarCarrito();
}

// Actualizar carrito
function actualizarCarrito() {
	const carritoLista = document.getElementById("carrito-lista");
	carritoLista.innerHTML = "";
	carrito.forEach(producto => {
		const li = document.createElement("li");
		const p = document.createElement("p");
		p.textContent = `${producto.nombre} - $${producto.precio.toFixed(2)}`;
		li.appendChild(p);
		carritoLista.appendChild(li);
	});
	const carritoCantidad = document.getElementById("carrito-cantidad");
	c
}
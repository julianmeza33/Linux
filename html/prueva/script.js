const boton = document.getElementById('miBoton');
const barraBusqueda = document.getElementById('barraBusqueda');

boton.addEventListener('click', () => {
    boton.style.backgroundColor = 'red';
    boton.style.color = 'white';
    
    const dato = barraBusqueda.value;
    console.log(dato);

    fetch('https://jsonplaceholder.typicode.com/todos/1')
        .then(response => response.json())
        .then(json => {
            // Mostrar los datos en la tabla
            var a = document.querySelector("body > main > table > tbody > tr > td:nth-child(1)");
            if (!a) {
                a = document.createElement('tr');
                document.querySelector("body > main > table > tbody").appendChild(a);
            }
            a.innerHTML = json.userId;
})})
const boton = document.getElementById('miBoton');
const barraBusqueda = document.getElementById('barraBusqueda');

boton.addEventListener('click', () => {
    boton.style.backgroundColor = 'red';
    boton.style.color = 'white';
    
    // Recuperamos el valor de la barra de búsqueda
    const dato = barraBusqueda.value;
    console.log(dato);

    // Hacemos la búsqueda o consulta (en este caso es un fetch estático, pero puedes agregar tu lógica de búsqueda aquí)
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

            var b = document.querySelector("body > main > table > tbody > tr > td:nth-child(2)");
            if (!b) {
                b = document.createElement('tr');
                document.querySelector("body > main > table > tbody").appendChild(b);
            }
            b.innerHTML = json.id;

            var c = document.querySelector("body > main > table > tbody > tr > td:nth-child(3)");
            if (!c) {
                c = document.createElement('tr');
                document.querySelector("body > main > table > tbody").appendChild(c);
            }
            c.innerHTML = json.title;

            var d = document.querySelector("body > main > table > tbody > tr > td:nth-child(4)");
            if (!d) {
                d = document.createElement('tr');
                document.querySelector("body > main > table > tbody").appendChild(d);
            }
            d.innerHTML = json.completed;
        })
        .catch(error => {
            console.error('Error al buscar datos:', error);
        });
});
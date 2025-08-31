const boton = document.getElementById("busqueda");
const barra = document.getElementById("barra");

boton.addEventListener('click', () => {
    boton.style.backgroundColor = '#34ac44';
    boton.style.color = 'white';

    const dato = barra.value;
    console.log(dato);

    fetch(`https://jsonplaceholder.typicode.com/todos/${dato}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Datos no encontrados');
            }
            return response.json();
        })
        .then(json => {
            var a = document.querySelector("body > main > table > thead:nth-child(1) > tr > td");
            a.textContent = json.userId;

            var b = document.querySelector("body > main > table > thead:nth-child(2) > tr > td");
            b.textContent = json.id;

            var c = document.querySelector("body > main > table > thead:nth-child(3) > tr > td");
            c.textContent = json.title;

            var d = document.querySelector("body > main > table > thead:nth-child(4) > tr > td");
            d.textContent = json.completed;
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Datos no encontrados');
        });
});
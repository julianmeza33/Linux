fetch('https://jsonplaceholder.typicode.com/todos/1')
      .then(response => response.json())
      .then(json =>{      
        var a = document.querySelector("body > main > table > thead:nth-child(1) > tr > td")
        a.innerHTML = json.userId

        var b = document.querySelector("body > main > table > thead:nth-child(2) > tr > td")
        b.innerHTML = json.id

        var c = document.querySelector("body > main > table > thead:nth-child(3) > tr > td")
        c.innerHTML = json.title

        var d = document.querySelector("body > main > table > thead:nth-child(4) > tr > td")
        d.innerHTML = json.completed
      })
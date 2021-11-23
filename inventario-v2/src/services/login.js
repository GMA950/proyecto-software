const ENDPOINT = 'http://localhost/1337'

export default function login ({username, password}){
    //hacemos un fetch indicando el ENDPOINT y la ruta a la que se quiere ir
    // hace un post a Users
    return fetch(`${ENDPOINT}/Users`,{
        method: 'POST',
        headers:{
            "Content-Type": "application/json"
        },
        //le indicamos el cuerpo de la request (es un json)
        body: JSON.stringify({username,password})
    }).then(res =>{
        if (!res.ok) throw new Error('Response is NOT ok')
        // esto devuelve un json por lo que
        
        return res.json// transformamos la respuesta a json
    }).then(res => {
        const {jwt} = res
        return jwt
    })

}
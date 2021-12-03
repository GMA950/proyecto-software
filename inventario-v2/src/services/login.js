import axios from "axios"

const ENDPOINT = 'http://localhost:8000'

export default function login (username, pass){
    console.log(username);
    console.log('pasword: ', pass);
    console.log('tipo',typeof(pass));
    /** 
    username = 'enzom'
    pass = 'aAenzom'
    console.log(username);
    console.log(pass);
    //hacemos un fetch indicando el ENDPOINT y la ruta a la que se quiere ir
    // hace un post a Users
    return fetch(`${ENDPOINT}/auth/local`,{
        method: 'POST',
        headers:{
            'Accept': 'application/json',
            "Content-Type": "application/json"
        },
        //le indicamos el cuerpo de la request (es un json)
        body: JSON.stringify({username,pass})
    }).then(res =>{
        if (!res.ok) throw new Error('Response is NOT ok')
        // esto devuelve un json por lo que
        
        return res.json// transformamos la respuesta a json
    }).then(res => {
        const {jwt} = res
        return jwt
    })
    */
    
    const getResponse = async () =>{
        const res = await axios.post(`${ENDPOINT}/auth/local`,{
                //identifier: 'enzom',
                //password: 'aAenzom',
                identifier: username,
                password: pass,
            })
            /** 
            .then(res =>{
                
                console.log('Well done!');
                console.log('User profile', res.data.user);
                console.log('User token', res.data.jwt);
                
                return res.data.jwt
            })
            .then(res =>{
                console.log('JWT desde la funcion login:');
                console.log(res);
            })
            .catch(e =>{
            console.log('An error ocurred: ', e.response);
        
            })
            */
        return res.data.jwt
    }   
    const jwt = getResponse()
    console.log("jwt desde login:");
    console.log(jwt);
    return jwt
    
}

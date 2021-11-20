
import React from "react"

import { useHistory } from "react-router-dom"
import './Login.css'


export default function Login(){
    const pushLocation= useHistory()

    const handleSubmit= evt =>{
        evt.preventDefault()
        pushLocation.push('/sign-up')
    }
    return (
        <div className='Login-container'>
            <div className ='Login'>
                <div className='Login-sign-container'>
                    <h1 className = 'title'>Inicio de Sesion</h1>
                    
                    <form  className='inputs-container' onSubmit= {handleSubmit}>
                        <input className='Login-input' type='usuario'  placeholder='Usuario'/>
                        <input className='Login-input' type='password' placeholder='Contraseña'/>
                        <button className = 'Login-btn'> Iniciar Sesion </button>
                        <p>Olvidaste tu contraseña? <span className='span'>Click aqui</span> </p>
                       
                    </form>

                </div>
                
                <div className='login-image' >
                    
                </div>
                
                {/*
                <div className = 'Login Login__info'>
                    <p> bla bla bla bla bla</p>
                </div>
                */}
            </div>
            
        </div>
        
    )
}
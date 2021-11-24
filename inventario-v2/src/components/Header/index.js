
import React, { useState } from "react";
import useUser from "hooks/useUser";
import { Link } from "react-router-dom";
import './header.css'
import { useHistory } from "react-router-dom"

export default function Header(){
    //const isLogged = true
    const [isActive, setActive] = useState(false)
    const pushLocation= useHistory()
    const {isLogged,logout} = useUser()

    const handleClick = e =>{
        e.preventDefault()
        pushLocation.push('/')
        logout()
    }
    const toggleClassName = () =>{
        
        setActive(!isActive)
        console.log(isActive)
    }
    
    return(
        <header className= 'app-header'>
            {
                isLogged
                    // este seria el navBar una vez iniciada la sesion
                    ? <div className= 'header-container'>
                        <div className= 'navbar-container'>
                            <div className='nav-logo' >
                                Valrepuestos<i className="fab fa-typo3"/>
                            </div>
       
                            <button className= 'nav-menu-icon' onClick = {toggleClassName}>
                                <i className='fas fa-bars' />
                            </button>

                            <ul className={isActive? 'nav-menu nav-menu_active': 'nav-menu'}>
                            
                            
                                <li className='nav-menu-item'>
                                    <Link to='/inv' className='nav-links'>
                                        INICIO
                                    </Link>
                                </li>
                                <li className='nav-menu-item'>
                                    <Link to='/inv' className='nav-links' >
                                        INVENTARIO
                                    </Link>
                                </li>
                                <li className='nav-menu-item'>
                                    <Link to='/Products' className='nav-links' >
                                        CONFIGURACIÓN
                                    </Link>
                                </li>
                                
                                <button className = 'nav-btn' onClick={handleClick}>CERRAR SESION</button>
                                
                            </ul>
                            
                            
                        </div>


                       
                    </div>
                        

                    // navbar antes del login
                    : <nav className= 'header-container'>
                        <div className= 'nav-logo'>
                            Valrepuestos<i className="fab fa-typo3"/>
                        </div>
                    </nav>
            }
        </header>
    )

}
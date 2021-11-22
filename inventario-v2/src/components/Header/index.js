import React from "react";
import { Link } from "react-router-dom";
import './header.css'

export default function Header(){
    const isLogged = true

    return(
        <header className= 'app-header'>
            {
                isLogged
                    // este seria el navBar una vez iniciada la sesion
                    ? <nav className= 'navbar-container'>
                            <div className='nav-logo-logged' >
                                Valrepuestos<i className="fab fa-typo3"/>
                            </div>
                    </nav>
                    // navbar antes del login
                    : <nav className= 'navbar-container'>
                        <div className= 'nav-logo'>
                            Valrepuestos<i className="fab fa-typo3"/>
                        </div>
                    </nav>
            }
        </header>
    )

}
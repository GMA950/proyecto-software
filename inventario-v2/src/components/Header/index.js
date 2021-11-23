
import React from "react";
import './header.css'
import Navbar from "components/NavbarLogged";
import useUser from "hooks/useUser";


export default function Header(){
    //const isLogged = true
    const {isLogged,logout} = useUser()
    return(
        <header className= 'app-header'>
            {
                isLogged
                    // este seria el navBar una vez iniciada la sesion
                    ? <div>
                        <Navbar></Navbar>
                        <button onClick={logout}></button>
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
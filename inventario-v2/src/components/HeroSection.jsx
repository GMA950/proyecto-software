import React from 'react';
//import 'bootstrap/dist/css/bootstrap.min.css';
import '../App.css';
import { Button2 } from './Button2';
import './HeroSection.css';


function HeroSection() {
    return (
        /*<div className = 'hero-alpha'>*/
        <div className ='hero-container'>
            {/*<video src="/videos/video-2.mp4" autoPlay loop muted/>*/}
            <h1>Sistema de Inventario</h1>
            <p>Inicio de Sesión</p>
            {/*<div className="hero-btns">
                <Button className='btns' 
                buttonStyle='btn--outline'
                buttonSyze='btn--large'
                >
                    GET STARTED
                </Button>
                <Button className='btns' 
                buttonStyle='btn--primary'
                buttonSyze='btn--large'
                >
                    WATCH TRAILER <i className = 'far fa-play-circle' />
                </Button>
            </div>*/}
            <div className='input-areas'>
            <form>
                <input
                className='hero-input'
                name='usuario'
                type='usuario'
                placeholder='USUARIO'
                />
                <input
                className='hero-input'
                name='password'
                type='password'
                placeholder='CONTRASEÑA'
                />
                <Button2 dir = '/inv' buttonStyle='hero-btns' buttonStyle='btn2--primary'>Iniciar Sesión</Button2>
            </form>
            </div>
        </div>
        /*</div>*/
    )
}

export default HeroSection

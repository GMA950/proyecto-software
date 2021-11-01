import React from 'react';
import axios from 'axios';
import '../App.css';
import { Button } from './Button';
import './InvSection.css';
import StockEventsTable from './StockEventsTable';

// 2 Data Types

// Products

const fetchedProducts = [
    {id: 1, name: "Motor"},
    {id: 2, name: "Rueda"},
    {id: 3, name: "Aromatizante"}
]

// stock events

const fetchedStockEvents = [
    {id: 1, type: 'add', qty: 100, product: fetchedProducts[0]},
    {id: 2, type: 'remove', qty: -20, product: fetchedProducts[0]},
    {id: 3, type: 'remove', qty: -10, product: fetchedProducts[0]},

    {id: 4, type: 'add', qty: 120, product: fetchedProducts[1]},
    {id: 5, type: 'remove', qty: -45, product: fetchedProducts[1]},
]

//fetch stock events


// separate by product
//display

class InvSection extends React.Component{
    state = {
        fetchedProducts,
        fetchedStockEvents
    }

    async componentDidMount(){

        const productsRes = await axios({
            method: 'GET', 
            url: 'http://localhost:1337/products'
        })

        const stockEventsRes = await axios({
            method: 'GET', 
            url: 'http://localhost:1337/stockevents'
        })
        
        //console.log("App.componentDidMount stockEventsRes", stockEventsRes)

        const fetchedProducts = productsRes.data
        const fetchedStockEvents = stockEventsRes.data

        this.setState({fetchedProducts, fetchedStockEvents})
    }

    render(){
        console.log("App.render")
        const {fetchedProducts, fetchedStockEvents} = this.state
        return (
            <div className ='inv-container'>
                <h1>Inventario</h1>
                <StockEventsTable
                    products={fetchedProducts} 
                    stockEvents = {fetchedStockEvents}
                />
            </div>
        );
    }
}

/*
function InvSection() {
    return (
        <div className ='inv-container'>
            <video src="/videos/video-2.mp4" autoPlay loop muted/>
            <h1>Inventario</h1>
            <StockEventsTable
                products={fetchedProducts} 
                stockEvents = {fetchedStockEvents}
            />
            
            {/*<p>Inicio de Sesión</p>*/
            /*<div className="hero-btns">
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
            </div>*/
            /*
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
                <Button buttonStyle='hero-btns' buttonStyle='btn--primary'>Iniciar Sesión</Button>
            </form>
            </div>
            /
        </div>
    );
}
*/

export default InvSection;

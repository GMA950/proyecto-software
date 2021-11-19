import React from 'react';
import axios from 'axios';
//import 'bootstrap/dist/css/bootstrap.min.css';
import '../App.css';
import './InvSection.css';
import StockEventsTable from './StockEventsTable';
import InvOptions from './InvOptions';
import Search from './Search';

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
                <div class = 'row'>
                    <div class = 'col'><div className = "usr-cont">Bienvenido: USUARIO NULL</div></div>
                    <div class = 'col'><div className = "inv-til">Inventario</div></div>
                    <div class = 'col'><InvOptions/></div>
                </div>
                <div class = "table-container">
                    <Search/>
                    <StockEventsTable
                        products={fetchedProducts} 
                        stockEvents = {fetchedStockEvents}
                    />
                </div>
            </div>
        );
    }
}

export default InvSection;

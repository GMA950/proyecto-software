import React from 'react';
import './StockEventsTable.css';
import StockDetail from './StockDetail';

function StockEventsTable(props){
   
    const {products, stockEvents} = props
   
    return (
        <div className = "StockEventTable">
            {products.map(product => {
                const {id} = product

                const relevantStockEvents = stockEvents.filter(se => se.product.id === product.id)

                const stockTotal = relevantStockEvents.reduce((accumulator, currentElement) => {
                    return accumulator + currentElement.qty
                }, 0)
                return(
                    <div className = "StockEventTable__ProductContainer">
                        < StockDetail 
                            name = {product.name} 
                            total  = {stockTotal} 
                            stockEvents = {relevantStockEvents} 
                        />
                    </div>
                )
            })}
        </div>
    )
}

export default StockEventsTable;
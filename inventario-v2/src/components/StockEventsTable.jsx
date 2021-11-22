import React from 'react';
import './StockEventsTable.css';
import Table from 'react-bootstrap/Table';
import StockDetail from './StockDetail';


function StockEventsTable(props){
   
    const {searchValues, products, stockEvents} = props
   
    return (
        
        <div className = "StockEventTable">
            <Table striped bordered hover size="sm">
                <tbody>
                    {products.filter((product) => {
                        //console.log(product.name.toLowerCase())
                        //console.log(product.cat.toLowerCase())
                        //console.log(product.fab.toLowerCase())
                        //console.log(product.model.toLowerCase())
                        //console.log(product.ver.toLowerCase())
                        if(product.name==undefined){
                            product.name=''
                        }
                        if(product.cat==undefined){
                            product.cat=''
                        }
                        if(product.fab==undefined){
                            product.fab=''
                        }
                        if(product.model==undefined){
                            product.model=''
                        }
                        if(product.ver==undefined){
                            product.ver=''
                        }
                        if(product.year==undefined){
                            product.year=''
                        }
                        if(product.price==undefined){
                            product.price=''
                        }
                        if(searchValues.code=="" && searchValues.name=="" && searchValues.cat=="" && searchValues.fab=="" && searchValues.model=="" && searchValues.ver=="" && searchValues.year=="" && searchValues.stock=="" && searchValues.price==""){
                            console.log("limpio")
                            return product
                        }else if(product.name.toLowerCase().includes(searchValues.name.toLowerCase()) 
                                && product.cat.toLowerCase().includes(searchValues.cat.toLowerCase())
                                && product.code.toLowerCase().includes(searchValues.code.toLowerCase())  
                                && product.fab.toLowerCase().includes(searchValues.fab.toLowerCase())
                                && product.model.toLowerCase().includes(searchValues.model.toLowerCase())
                                && product.ver.toLowerCase().includes(searchValues.ver.toLowerCase())){ //product.name.toLowerCase().includes(searchValues.name.toLowerCase())
                                if(searchValues.year!="" || searchValues.stock!="" || searchValues.price!=""){

                                    const {id} = product
                                    const relevantStockEvents = stockEvents.filter(se => se.product.id === product.id)
                                    const stock = relevantStockEvents.reduce((accumulator, currentElement) => {return accumulator + currentElement.qty}, 0)

                                    //console.log(stockTotal)

                                    var year1 = parseInt(product.year.substring(0, 4))
                                    var year2 = parseInt(product.year.substring(5, 9))
                                    //var stock = parseInt(product.stock)
                                    var price = parseInt(product.price)
                                    //console.log(price)
                                    //console.log(searchValues.price)
                                    if(searchValues.year!="" && searchValues.price!="" && searchValues.stock!=""){
                                        if ((searchValues.year >= year1 && searchValues.year <= year2) && searchValues.price >= price && searchValues.stock >= stock){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year!="" && searchValues.price!="" && searchValues.stock==""){
                                        if ((searchValues.year >= year1 && searchValues.year <= year2) && searchValues.price >= price){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year!="" && searchValues.price=="" && searchValues.stock==""){
                                        if (searchValues.year >= year1 && searchValues.year <= year2){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year=="" && searchValues.price!="" && searchValues.stock==""){
                                        if (searchValues.price >= price){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year=="" && searchValues.price=="" && searchValues.stock!=""){
                                        if (searchValues.stock >= stock){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year=="" && searchValues.price!="" && searchValues.stock!=""){
                                        if (searchValues.stock >= stock && searchValues.price >= price){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }else if(searchValues.year!="" && searchValues.price=="" && searchValues.stock!=""){
                                        if ((searchValues.year >= year1 && searchValues.year <= year2) && searchValues.stock >= stock){ /*|| product.year==''*/
                                            //console.log(searchValues.year)
                                            return product
                                        }
                                    }
                                    //console.log(year1)
                                    //console.log(year2)
                                }else{
                                    return product
                                }
                            //console.log(searchValues.name.toLowerCase())
                            //console.log(product.name.toLowerCase())
                            //return product
                        }
                    }).map((product, i) => {
                        const {id} = product

                        const relevantStockEvents = stockEvents.filter(se => se.product.id === product.id)

                        const stockTotal = relevantStockEvents.reduce((accumulator, currentElement) => {
                            return accumulator + currentElement.qty
                        }, 0)
                        return(
                            <>
                            {/*<div className = "StockEventTable__ProductContainer">*/}
                            {/*{product.id} */}
                                    < StockDetail 
                                        id = {i+1} 
                                        code = {product.code}
                                        name = {product.name}
                                        cat = {product.cat}
                                        fab = {product.fab}
                                        model = {product.model}
                                        ver = {product.ver}
                                        year = {product.year}
                                        price = {product.price}

                                        total  = {stockTotal} 
                                        stockEvents = {relevantStockEvents} 
                                    />
                                    
                            {/*</div> */}
                            </>
                        )
                    })}
                </tbody>
            </Table>
        </div>
            
    )
}

export default StockEventsTable;
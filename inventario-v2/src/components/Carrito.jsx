import React from 'react';
import '../App.css';
import './Carrito.css';
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';

function Carrito(props){
   
    const {searchValues, products, stockEvents} = props
    const testProducts = [
        {product:{code: "1234", name:"hola", price:99},cant:2},
        {product:{code: "1333", name:"chao", price:69},cant:1}
    ]
    let total = 0
   
    return (
        <div className="shopContainer">
            <div class = 'row-s'>
                <div class = 'col-s'><div className = "usr-cont">Vendedor: NULL</div></div>
                <div class = 'col-s'><div className = "shop-til">Carrito</div></div>
                <div class = 'col-s'></div>
            </div>

            <div className="space-shop">
                <div className="SelectedCont">
                    <Table border hover>
                        <tbody>
                            <tr id="titulos">
                                <th>#</th>
                                <th>Codigo</th>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th></th>
                            </tr>
                            {testProducts.map((element, i) => {
                                total = total + element.product.price*element.cant
                                return(
                                    <tr>
                                        <td>{i+1}</td>
                                        <td>{element.product.code}</td>
                                        <td id="nombre">{element.product.name}</td>
                                        <td>$ {element.product.price}</td>
                                        <td><div className="ajuste"><input id="cantidad" type="number" min="1" max= "999" value = {element.cant} size="2"></input></div></td>
                                        <td>$ {element.product.price*element.cant}</td>
                                        <td><Button variant="outline-light" id="boton"><i class="fas fa-window-close fa-lg"></i></Button></td>
                                    </tr>
                                )
                            })
                            }
                        </tbody>
                    </Table>
                </div>
                <div className="right-space">
                    <div className="proceso">
                        <h1>TOTAL</h1>
                        <div className="final">
                            <div class="item-1">Aplicar Descuento</div>
                            <div class="item-2">
                                <div className="enserionecesitoesto">
                                    <div><input id="cantidad" type="number" min="1" max= "999"></input></div>
                                    <div className="porcentaje"> %</div>
                                </div>
                            </div>  
                            <div class="item-3"><b>Subtotal</b></div>  
                            <div class="item-4">$ {total
                                    /*
                                    testProducts.reduce((accumulator, currentElement) => {
                                        return accumulator + currentElement.product.price
                                    }, 0)*/
                                    }   
                            </div>
                            <div class="item-5"><b>Total</b></div> 
                            <div class="item-6">$ {total}</div>
                            <div class="item-8"><Button variant="success" size="lg">Procesar Venta <i class="fas fa-chevron-right fa-lg"></i></Button></div> 
                        </div>
                    </div>
                </div>
            </div>


        </div>     
    );
}

export default Carrito;
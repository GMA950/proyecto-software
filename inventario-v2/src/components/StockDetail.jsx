import React from "react";
import { ButtonGroup } from "react-bootstrap";
import Button from 'react-bootstrap/Button';

class StockDetail extends React.Component{

    state = {
        show: false,
        value: 1,
    }

    handleChange = event => {
        /*if (object.target.value.length > object.target.maxLength) {
            object.target.value = object.target.value.slice(0, object.target.maxLength)
        }*/
        let { value, min, max } = event.target;
        value = Math.max(Number(min), Math.min(Number(max), Number(value)));

        this.setState({ value });
    }


    render(){
        /*const {id, code, name, cat, fab, model, ver, year, price, total, ubicacion, origen, nota, stockEvents} = this.props*/
        const {product, stockEvents} = this.props
        const {show} = this.state
        return(
            <>
            <tr className="StockDetail" onClick={() => this.setState({show: !show})}>
                {/*<h2>Product: {name} | Total: {total}</h2>*/}
                <td>{product.id}</td>
                <td>{product.code}</td>
                <td>{product.name}</td>
                <td>{product.cat}</td>
                <td>{product.fab}</td>
                <td>{product.model}</td>
                <td>{product.ver}</td>
                <td>{product.year}</td>
                <td>{product.price}</td>
                <td>{product.stock}</td>
                {/*
                <td>{id}</td>{/*id
                <td>{code}</td> {/*codigo
                <td>{name}</td> {/*nombre
                <td>{cat}</td> {/*categoria
                <td>{fab}</td> {/*fabricante
                <td>{model}</td> {/*modelo
                <td>{ver}</td> {/*version
                <td>{year}</td> {/*año
                <td>{price}</td> {/*precio
                <td>{total}</td>*/}
            </tr>
            {show &&
                <tr>
                    <td colspan = "10" id="especial">
                        <div className = "StockEventTable__Card">
                            <div className = "container_card">
                                <div className = "e1">
                                    <b>Nota:</b>
                                    <div className = "et">{product.nota}</div>{/*nota*/}
                                </div>
                                <div className = "e1">
                                    <p><b>Ubicación:</b> {product.ubicacion}</p>{/*ubicacion*/}
                                    <p><b>Origen:</b> {product.origen}</p>{/*origen*/}
                                </div>
                                <div className = "e1">
                                </div>
                                <div className = "e2">
                                    <div className = "bt1">
                                        <div className = "bt1c">
                                            <div className = "nCont">
                                                <input type="number" value={this.state.value} min="1" max = "999" onChange={this.handleChange}/>
                                            </div>
                                        </div>
                                        <div className = "bt1c">
                                            <ButtonGroup vertical>
                                                <Button variant="success" size="md">
                                                    <div className = "btinfo">
                                                        <div className="btext"><b>Agregar al Carro</b></div>
                                                        <div className="bti"><i class="fas fa-cart-plus fa-2x"/></div>
                                                    </div>
                                                </Button>
                                                <br />
                                                <Button variant="secondary" size="md">
                                                    <div className = "btinfo">
                                                        <div className="btext"><b>Editar</b></div>
                                                        <div className="bti"><i class="fas fa-edit fa-2x"/></div>
                                                    </div>
                                                </Button>
                                            </ButtonGroup>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/*{stockEvents.map(event => (
                            <div className = "StockEventTable__Card">
                                <p>Id: {event.id}</p>
                                <p>Type: {event.type}</p>
                                <p>Quantity: {event.qty}</p>
                                <p>Product Name: {event.product.name}</p>
                            </div>
                        ))}*/}
                        </div>
                    </td>
                </tr>
            }
            </>
            
        )
    }
}

export default StockDetail;
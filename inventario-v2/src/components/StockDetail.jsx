import React from "react";
import Table from 'react-bootstrap/Table';

class StockDetail extends React.Component{

    state = {
        show: false
    }


    render(){
        const {id, name, cat, fab, model, ver, year, price, total, stockEvents} = this.props
        const {show} = this.state
        return(
            <>
            <tr className="StockDetail" onClick={() => this.setState({show: !show})}>
                {/*<h2>Product: {name} | Total: {total}</h2>*/}
                <td>{id}</td>
                <td>NULL</td> {/*codigo*/}
                <td>{name}</td> {/*nombre*/}
                <td>{cat}</td> {/*categoria*/}
                <td>{fab}</td> {/*fabricante*/}
                <td>{model}</td> {/*modelo*/}
                <td>{ver}</td> {/*version*/}
                <td>{year}</td> {/*año*/}
                <td>{price}</td> {/*precio*/}
                <td>{total}</td>
            </tr>
            {show &&
                <tr>
                    <td colspan = "10" id="especial">
                        {stockEvents.map(event => (
                            <div className = "StockEventTable__Card">
                                <p>Id: {event.id}</p>
                                <p>Type: {event.type}</p>
                                <p>Quantity: {event.qty}</p>
                                <p>Product Name: {event.product.name}</p>
                            </div>
                        ))}
                    </td>
                </tr>
            }
            </>
            
        )
    }
}

export default StockDetail;
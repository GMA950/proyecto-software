import React from 'react';
import axios from 'axios';
import StockEventsTable from './StockEventsTable';
//import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';
import '../App.css';
import './InvSection.css';


function InvOptions() {
    return (
        <>    
        <div className="mbl">
            <div className="bt3">
                <Button variant="secondary" size="lg">Ingresar Productos</Button>
            </div>
            <div className="bt3">
                <Button variant="warning" size="lg">Bajos en Stock</Button>
            </div>
        </div>
        <div className="mbr">
            <div className="bt3">
                <Button variant="primary" size="lg">Importar</Button>
            </div>
            <div className="bt3">
                <Button variant="success" size="lg">Exportar</Button>
            </div>
        </div>
        </>
    )
}

export default InvOptions

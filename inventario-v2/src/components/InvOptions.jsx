import React from 'react';
import axios from 'axios';
import StockEventsTable from './StockEventsTable';
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';
import '../App.css';
import './InvSection.css';

function InvOptions() {
    return (    
        <div className="mb-2">
            <Button variant="primary" size="lg">
                Importar
            </Button>{' '}
            <Button variant="secondary" size="lg">
                Exportar
            </Button>
        </div>
    )
}

export default InvOptions

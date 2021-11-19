import React from 'react';
import axios from 'axios';
import StockEventsTable from './StockEventsTable';
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';
import '../App.css';
import './Search.css';


function Search() {
    return (
        <div className = "bg-cont">
            <div className="mb-3">
                <div class = 'row2'>
                    <div class = 'colg'></div>
                    <div class = 'colinit'><div className = "search-item">Codigo</div></div>
                    <div class = 'col2'><div className = "search-item">Nombre</div></div>
                    <div class = 'col2'><div className = "search-item">Categoria</div></div>
                    <div class = 'col2'><div className = "search-item">Fabricante</div></div>
                    <div class = 'col2'><div className = "search-item">Modelo</div></div>
                    <div class = 'col2'><div className = "search-item">Versión</div></div>
                    <div class = 'col2'><div className = "search-item">Año</div></div>
                    <div class = 'col2'><div className = "search-item">Precio</div></div>
                    <div class = 'colend'><div className = "search-item">Stock</div></div>
                </div>
            </div>
            {/*<input
                className='hero-input'
                name='password'
                type='password'
                placeholder='CONTRASEÑA'
            />*/}
            <div className="mb-3">
                <div class = 'row3'>
                    <div class = 'colbtn'>
                        <Button variant="info" size = "sm">Borrar <i class="fas fa-eraser"></i></Button>
                    </div>
                    <div class = 'col3'>
                        <input type="number" className="search-input" name = "code"/>
                    </div>
                    <div class = 'col3'>
                        <input type="text" className="search-input" name = "name"/>
                    </div>
                    <div class = 'col3'>
                        <input type="text" className="search-input" name = "cat"/>
                    </div>
                    <div class = 'col3'>
                        <input type="text" className="search-input" name = "fab"/>
                    </div>
                    <div class = 'col3'>
                        <input type="text" className="search-input" name = "model"/>
                    </div>
                    <div class = 'col3'>
                        <input type="text" className="search-input" name = "ver"/>
                    </div>
                    <div class = 'col3'>
                        <input type="number" className="search-input" name = "year"/>
                    </div>
                    <div class = 'col3'>
                        <input type="number" className="search-input" name = "price"/>
                    </div>
                    <div class = 'col3'>
                        <input type="number" className="search-input" name = "stock"/>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Search
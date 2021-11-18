import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Navbar from './components/Navbar1';
import Home from './components/pages/Home';
import Services from './components/pages/Services';
import Products from './components/pages/Products';
import Inv from './components/pages/Inv';

function App() {
  return (
    <>
    <Router>
      <Switch>
        <Route path='/services' exact component = {Services}/>
        <Route path='/products' exact component = {Products}/>
        <Route path='/inv' exact component = {Inv}/>
        <div>
          <Navbar />
          <Route path='/' exact component = {Home}/>
        </div>
      </Switch>
    </Router>
    </>
  );
}

export default App;

import React from 'react';

import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

import Services from './components/pages/Services';
import Cart from './components/pages/Cart';
import InvSection from './components/pages/Inv';

import Login from './pages/login';
import Footer from './components/Footer';
import Header from 'components/Header';
import {UserContextProvider} from 'context/UserContext'
function App() {
  
  return (
    <UserContextProvider>
      <Router>
        <Header/>
          <Switch>
            <Route path='/services' exact component = {Services}/>
            <Route path='/cart' exact component = {Cart}/>
            <Route path='/inv' exact component = {InvSection}/>
            <Route path='/login' exact component = {Login}/>
            <Route path='/' exact component = {Login}/>
              
            
          </Switch>
        <Footer></Footer>
      
      </Router>
    </UserContextProvider>
  );
}

export default App;

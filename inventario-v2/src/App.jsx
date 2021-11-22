import React from 'react';
import Navbar from './components/Navbar1';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

import Services from './components/pages/Services';
import Products from './components/pages/Products';
import InvSection from './components/InvSection';

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
          <Route path='/products' exact component = {Products}/>
          <Route path='/inv' exact component = {InvSection}/>
          <div>
            {/*<Navbar />*/}
            <Route path='/' exact component = {Login}/>
            
          </div>
        </Switch>
        <Footer></Footer>
      
      </Router>
    </UserContextProvider>
  );
}

export default App;

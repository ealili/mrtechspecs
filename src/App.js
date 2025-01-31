import React, { Component } from 'react'
import './App.css'
import Home from './components/pages/homepage/Home'
import { Switch, Route, BrowserRouter as Router } from 'react-router-dom'
import NotFound from './components/pages/NotFound'
import Header from './components/header/Header'
import PhonesRoutes from './components/PhonesRoutes'
import About from './components/pages/about/About'
import Footer from './components/footer/Footer'
import Login from './components/pages/login/Login'
import Comparator from './components/pages/comparator/Comparator'
import AdminRoutes from "./components/admin/AdminRoutes";

class App extends Component {

  render () {
    return (
      <Router>
        <React.Fragment>
          <Header/>
          <section id="mainContent">
            <Switch>
              <Route exact path="/" component={Home}/>
              <Route path="/phones" component={PhonesRoutes}/>
              <Route path="/about" component={About}/>
              <Route path="/compare" component={Comparator}/>
              <Route path="/admin" component={AdminRoutes}/>
              <Route path="/login" component={Login}/>
              <Route component={NotFound}/>
            </Switch>
          </section>
          <Footer/>
        </React.Fragment>
      </Router>
    )
  }
}

export default App;

import React, { Component } from 'react'
import './App.css'
import Home from './components/pages/homepage/Home'
import { Switch, Route, BrowserRouter as Router } from 'react-router-dom'
import NotFound from './components/pages/NotFound'
import Header from './components/header/Header'
import PhonesRoutes from './components/PhonesRoutes'
import About from './components/pages/about/About'
import Footer from './components/footer/Footer'
import AddPhone from './components/admin/AddPhone'
import Admin from './components/admin/Admin'
import Login from './components/pages/login/Login'

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
              <Route path="/admin/addphone" component={AddPhone}/>
              <Route path="/admin" component={Admin}/>
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

export default App

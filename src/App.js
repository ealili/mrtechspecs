import React, { Component } from "react";
import "./App.css";
import { PhoneProvider } from "./Contexts/PhoneContext";
import Home from "./components/Home";
import { Switch, Route, BrowserRouter as Router } from "react-router-dom";
import NotFound from "./components/pages/NotFound";
import Header from "./components/Header";
import Phones from "./components/Phones";
import About from "./components/pages/About";
import Footer from "./components/Footer";
import AddPhone from "./components/AddPhone";

class App extends Component {
  render() {
    return (
      <PhoneProvider>
        <Router>
          <React.Fragment>
            <Header />
            <section id="mainContent">
              <Switch>
                <Route exact path="/" component={Home} />
                <Route path="/phones" component={Phones} />
                <Route path="/about" component={About} />
                <Route path="/addphone" component={AddPhone} />
                <Route component={NotFound} />
              </Switch>
            </section>
            <Footer />
          </React.Fragment>
        </Router>
      </PhoneProvider>
    );
  }
}

export default App;

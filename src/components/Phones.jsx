import React, { Component } from "react";
import { PhoneConsumer } from "../Contexts/PhoneContext";
import PhoneMenu from "./PhoneMenu";
import SamsungPage from "./pages/SamsungPage";
import IPhonePage from "./pages/IPhonePage";
import HuaweiPage from "./pages/HuaweiPage";
import MixedPhones from "./pages/MixedPhones";
import { Switch, Route } from "react-router-dom";
import PhoneSpecs from "./pages/PhoneSpecs";
import GooglePage from "./pages/GooglePage";
import SonyPage from "./pages/SonyPage";
import Notfound from "./pages/NotFound";

class Phones extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          return (
            <section className="py-5">
              <div className="container">
                <PhoneMenu />
                <div className="row text-center text-lg-left" />
                <Switch>
                  <Route exact path="/phones" component={MixedPhones} />
                  <Route path="/phones/samsung" component={SamsungPage} />
                  <Route path="/phones/iPhone" component={IPhonePage} />
                  <Route path="/phones/huawei" component={HuaweiPage} />
                  <Route path="/phones/google" component={GooglePage} />
                  <Route path="/phones/sony" component={SonyPage} />
                  <Route path="/phones/:id" component={PhoneSpecs} />
                </Switch>
              </div>
            </section>
          );
        }}
      </PhoneConsumer>
    );
  }
}

export default Phones;

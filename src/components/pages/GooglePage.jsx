import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";
import Phone from "../Phone";

export default class GooglePage extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const { googles } = value;
          return (
            <React.Fragment>
              <h3 className="my-4 text-center text-lg-left">Google Phones</h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {googles.map(google => (
                    <Phone key={google.id} phone={google} />
                  ))}
                </div>
              </div>
            </React.Fragment>
          );
        }}
      </PhoneConsumer>
    );
  }
}

import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";
import Phone from "../Phone";

export default class IPhonePage extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const { iPhones } = value;
          return (
            <React.Fragment>
              <h3 className="my-4 text-center text-lg-left">iPhones</h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {iPhones.map(iPhone => (
                    <Phone key={iPhone.id} phone={iPhone} />
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

import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";
import Phone from "../Phone";

export default class SamsungPage extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const { samsungs } = value;
          return (
            <React.Fragment>
              <h3 className="my-4 text-center text-lg-left">Samsung Phones</h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {samsungs.map(samsung => (
                    <Phone key={samsung.id} phone={samsung} />
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

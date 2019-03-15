import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";
import Phone from "../Phone";

export default class SonyPage extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const { sonies } = value;
          return (
            <React.Fragment>
              <h3 className="my-4 text-center text-lg-left">Sony Phones</h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {sonies.map(sony => (
                    <Phone key={sony.id} phone={sony} />
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

import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";
import Phone from "../Phone";

export default class HuaweiPage extends Component {
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const { huaweis } = value;
          return (
            <React.Fragment>
              <h3 className="my-4 text-center text-lg-left">Huawei Phones</h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {huaweis.map(huawei => (
                    <Phone key={huawei.id} phone={huawei} />
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

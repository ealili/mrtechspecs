import React, { Component } from "react";
import { PhoneConsumer } from "../../Contexts/PhoneContext";

class PhoneSpecs extends Component {
  getPhoneType(value) {
    const requiredId = this.props.match.params.id;
    if (requiredId.includes("galaxy")) {
      return value.samsungs;
    } else if (requiredId.includes("iphone")) {
      return value.iPhones;
    } else if (requiredId.includes("huawei")) {
      return value.huaweis;
    } else if (requiredId.includes("google")) {
      return value.googles;
    } else {
      return value.sonies;
    }
  }
  render() {
    return (
      <PhoneConsumer>
        {value => {
          const phoneType = this.getPhoneType(value);
          const requiredPhone = phoneType.find(
            ({ id }) => id === this.props.match.params.id
          );
          return (
            <section className="py-5">
              <div className="container">
                <div className="row text-center text-lg-left">
                  <div className="col-lg-4 col-md-6 col-xs-6">
                    <h4 className="my-4 text-center text-lg-left">
                      {requiredPhone.name}
                    </h4>
                    <img
                      id="specImage"
                      className="img-fluid img-thumbnail"
                      alt={requiredPhone.name}
                      src={requiredPhone.imgSource}
                    />
                  </div>
                  <div className="col-lg-8 col-md-6 col-xs-6">
                    <h4 className="my-4 text-center text-lg-left">
                      Phone Specs
                    </h4>
                    <table class="table table-striped">
                      <tbody>
                        <tr>
                          <th>Technology</th>
                          <td>{requiredPhone.technology}</td>
                        </tr>
                        <tr>
                          <th>Weight</th>
                          <td>{requiredPhone.weight}</td>
                        </tr>
                        <tr>
                          <th>Display Size: </th>
                          <td>{requiredPhone.displaySize}</td>
                        </tr>
                        <tr>
                          <th>Display Type: </th>
                          <td>{requiredPhone.displayType}</td>
                        </tr>
                        <tr>
                          <th>Display Resolution: </th>
                          <td>{requiredPhone.displayResolution}</td>
                        </tr>
                        <tr>
                          <th>Main Camera</th>
                          <td>{requiredPhone.mainCamera}</td>
                        </tr>
                        <tr>
                          <th>Selfie Camera</th>
                          <td>{requiredPhone.selfieCamera}</td>
                        </tr>
                        <tr>
                          <th>Sound</th>
                          <td>{requiredPhone.sound}</td>
                        </tr>
                        <tr>
                          <th>OS</th>
                          <td>{requiredPhone.OS}</td>
                        </tr>
                        <tr>
                          <th>Battery</th>
                          <td>{requiredPhone.battery}</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </section>
          );
        }}
      </PhoneConsumer>
    );
  }
}

export default PhoneSpecs;

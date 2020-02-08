import React, { Component } from "react";

class Comparator extends Component {
  state = {
    loading: true,
    phones: [],
    manufacturers: [],
    firstManufacturer: "",
    secondManufacturer: "",
    firstPhone: {
      name: "",
      productionYear: "",
      mname: "",
      displaySize: "",
      displayType: "",
      displayResolution: "",
      weight: "",
      battery: "",
      mainCamera: "",
      selfieCamera: "",
      os: "",
      technology: "",
      sound: "",
      imgSource: ""
    },
    secondPhone: {
      name: "",
      productionYear: "",
      mname: "",
      displaySize: "",
      displayType: "",
      displayResolution: "",
      weight: "",
      battery: "",
      mainCamera: "",
      selfieCamera: "",
      os: "",
      technology: "",
      sound: "",
      imgSource: ""
    },
    phoneDefault: {
      id: "",
      name: "",
      productionYear: "",
      mname: "",
      displaySize: "",
      displayType: "",
      displayResolution: "",
      weight: "",
      battery: "",
      mainCamera: "",
      selfieCamera: "",
      os: "",
      technology: "",
      sound: "",
      imgSource: ""
    }
  };

  componentDidMount() {
    fetch(`http://localhost:8080/api/phones`)
      .then(response => response.json())
      .then(data => {
        this.setState({ phones: data, loading: false });
      });

    fetch(`http://localhost:8080/api/manufacturers`)
      .then(response => response.json())
      .then(data => {
        this.setState({ manufacturers: data, loading: false });
      });
  }

  getFirstPhone() {
    if (this.refs.firstPhone.value === "") return;
    this.setState({
      firstPhone: this.state.phones.filter(
        phone => phone.id === this.refs.firstPhone.value
      )
    });
  }

  getSecondPhone() {
    if (this.refs.secondPhone.value === "") return;
    this.setState({
      secondPhone: this.state.phones.filter(
        phone => phone.id === this.refs.secondPhone.value
      )
    });
  }

  updateFManufacturer() {
    if (this.refs.firstManufacturer.value === "") return;
    this.setState({ firstManufacturer: this.refs.firstManufacturer.value });
    this.setState({ firstPhone: this.state.phoneDefault });
    this.refs.firstPhone.value = "";
  }

  updateSManufacturer() {
    if (this.refs.secondManufacturer.value === "") return;
    this.setState({ secondManufacturer: this.refs.secondManufacturer.value });
    this.setState({ secondPhone: this.state.phoneDefault });
    this.refs.secondPhone.value = "";
  }

  render() {
    if (this.state.loading) return <div>Loading...</div>;
    const firstPhone = this.state.firstPhone;
    const secondPhone = this.state.secondPhone;
    const firstManufacturer = this.state.firstManufacturer;
    const secondManufacturer = this.state.secondManufacturer;
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-10 my-4 mx-auto">
            <br />
            <hr />
            <h5 className="text-center">Select two phones to compare</h5>
            <hr />
            <div className="row">
              <div className="col-lg-12">
                <div className="table-responsive">
                  <table className="table table-striped table-hover">
                    <thead className="thead-inverse">
                      <tr>
                        <td className="w-25 option">Manufacturer Name</td>
                        <td>
                          <select
                            name="fmname"
                            ref="firstManufacturer"
                            onChange={this.updateFManufacturer.bind(this)}
                          >
                            <option value="" selected disabled hidden>
                              First Manufacturer
                            </option>
                            {this.state.manufacturers.map(m => {
                              return (
                                <option
                                  value={m.mname}
                                  name="firstmname"
                                  key={m.mname}
                                  required
                                >
                                  {m.mname}
                                </option>
                              );
                            })}
                          </select>
                        </td>
                        <td>
                          <select
                            name="smname"
                            ref="secondManufacturer"
                            onChange={this.updateSManufacturer.bind(this)}
                          >
                            <option value="" selected disabled hidden>
                              Second Manufacturer
                            </option>
                            {this.state.manufacturers.map(m => {
                              return (
                                <option
                                  value={m.mname}
                                  name="secondmname"
                                  key={m.mname}
                                  required
                                >
                                  {m.mname}
                                </option>
                              );
                            })}
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td className="w-25 option">Phone Name</td>
                        <td>
                          <select
                            ref="firstPhone"
                            onChange={this.getFirstPhone.bind(this)}
                          >
                            <option value="" selected disabled hidden>
                              First Phone
                            </option>
                            {this.state.phones.map(phone => {
                              if (phone.mname === firstManufacturer) {
                                return (
                                  <option
                                    value={phone.id}
                                    name={phone.id}
                                    key={phone.id}
                                    required
                                  >
                                    {phone.name}
                                  </option>
                                );
                              }
                            })}
                          </select>
                        </td>
                        <td>
                          <select
                            ref="secondPhone"
                            onChange={this.getSecondPhone.bind(this)}
                          >
                            <option value="" selected disabled hidden>
                              Second Phone
                            </option>
                            {this.state.phones.map(phone => {
                              if (phone.mname === secondManufacturer) {
                                return (
                                  <option
                                    value={phone.id}
                                    name={phone.id}
                                    key={phone.id}
                                    required
                                  >
                                    {phone.name}
                                  </option>
                                );
                              }
                            })}
                          </select>
                          <br />
                        </td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td className="w-25 option">Phone Image</td>
                        <td>
                          {firstPhone.imgSource !== "" ? (
                            <img
                              style={imgStyle}
                              alt={firstPhone.name}
                              src={firstPhone.imgSource}
                            />
                          ) : null}
                        </td>
                        <td>
                          {secondPhone.imgSource !== "" ? (
                            <img
                              style={imgStyle}
                              alt={secondPhone.name}
                              src={secondPhone.imgSource}
                            />
                          ) : null}
                        </td>
                      </tr>
                      {/*<tr>
                        <td className="w-25 option">Phone Name</td>
                        <td className="">{firstPhone.name}</td>
                        <td className="">{secondPhone.name}</td>
                      </tr>
                      <tr>
                        <td className="w-25 option">Manufacturer Name</td>
                        <td className="">{firstPhone.mname}</td>
                        <td className="">{secondPhone.mname}</td>
                      </tr>*/}
                      <tr>
                        <td className="w-25 option">Production Year</td>
                        <td className="">{firstPhone.productionYear}</td>
                        <td className="">{secondPhone.productionYear}</td>
                      </tr>
                      <tr>
                        <td className="option">Technology</td>
                        <td className="">{firstPhone.technology}</td>
                        <td className="">{secondPhone.technology}</td>
                      </tr>
                      <tr>
                        <td className="option">Weight</td>
                        <td className="">{firstPhone.weight}</td>
                        <td className="">{secondPhone.weight}</td>
                      </tr>
                      <tr>
                        <td className="option">Display Size</td>
                        <td className="">{firstPhone.displaySize}</td>
                        <td className="">{secondPhone.displaySize}</td>
                      </tr>
                      <tr>
                        <td className="option">Display Type</td>
                        <td className="">{firstPhone.displayType}</td>
                        <td className="">{secondPhone.displayType}</td>
                      </tr>
                      <tr>
                        <td className="option">Display Resolution</td>
                        <td className="">{firstPhone.displayResolution}</td>
                        <td className="">{secondPhone.displayResolution}</td>
                      </tr>
                      <tr>
                        <td className="option">Main Camera</td>
                        <td className="">{firstPhone.mainCamera}</td>
                        <td className="">{secondPhone.mainCamera}</td>
                      </tr>
                      <tr>
                        <td className="option">Selfie Camera</td>
                        <td className="">{firstPhone.selfieCamera}</td>
                        <td className="">{secondPhone.selfieCamera}</td>
                      </tr>
                      <tr>
                        <td className="option">Sound</td>
                        <td className="">{firstPhone.sound}</td>
                        <td className="">{secondPhone.sound}</td>
                      </tr>
                      <tr>
                        <td className="option">OS</td>
                        <td className="">{firstPhone.os}</td>
                        <td className="">{secondPhone.os}</td>
                      </tr>
                      <tr>
                        <td className="option">Battery</td>
                        <td className="">{firstPhone.battery}</td>
                        <td className="">{secondPhone.battery}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const imgStyle = {
  height: "125px",
  width: "170px"
};

export default Comparator;

import React, { Component } from "react";

export default class EditPhone extends Component {
  state = {
    loading: true,
    manufacturers: [],
    phones: [],
    mname: "",
    phone: [
      {
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
    ],
    exists: false,
    buttonDisabled: false,
    btnStyle: "btn btn-md btn-success"
  };

  async componentDidMount() {
    let url = `http://localhost/api/manufacturer/get_all_manufacturers.php`;
    let response = await fetch(url);
    let data = await response.json();
    this.setState({ manufacturers: data, loading: false });

    url = `http://localhost/api/phone/get_all_phones.php`;
    response = await fetch(url);
    data = await response.json();
    this.setState({ phones: data, loading: false });
  }

  getPhone() {
    if (this.refs.phone.value === "") return;
    this.setState({
      phone: this.state.phones.filter(
        phone => phone.id === this.refs.phone.value
      )
    });
  }

  updateManufacturer() {
    if (this.refs.manufacturer.value === "") return;
    this.setState({ mname: this.refs.manufacturer.value });
  }

  render() {
    if (this.state.loading) return <div className="lds-hourglass"></div>;
    const mname = this.state.mname;
    const phone = this.state.phone[0];
    return (
      <div className="container">
        <div>
          <button
            type="button"
            className="btn btn-secondary"
            onClick="window.history.go(-1); return false;"
          >
            Back
          </button>
          <input
            action="action"
            type="button"
            onClick="history.go(-1); return false;"
            value="Back"
          />
        </div>
        <div className="card mx-xl-5">
          <div className="card-body">
            <p className="h4 text-center py-4">Edit phone</p>
            <form
              action="http://localhost/api/phone/edit_phone.php"
              method="POST"
            >
              <label htmlFor="maname" className="grey-text font-weight-light">
                Manufacturer Name
              </label>
              <br />
              <select
                name="Manufacturer"
                ref="manufacturer"
                onChange={this.updateManufacturer.bind(this)}
              >
                <option value="" selected disabled hidden>
                  Choose here
                </option>
                {this.state.manufacturers.map(m => {
                  return (
                    <option value={m.mname} name="mname" key={m.mname} required>
                      {m.mname}
                    </option>
                  );
                })}
              </select>
              <br />
              <br />
              <label htmlFor="name" className="grey-text font-weight-light">
                Phone Name
              </label>
              <br />
              <select
                name="Phone"
                ref="phone"
                onChange={this.getPhone.bind(this)}
              >
                <option value="" selected disabled hidden>
                  Choose here
                </option>
                {this.state.phones.map(phone => {
                  if (phone.mname === mname) {
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
                  return;
                })}
              </select>
              <br />
              <br />
              <label
                htmlFor="displayType"
                className="grey-text font-weight-light"
              >
                Display Type
              </label>
              <input
                className="form-control"
                id="displayType"
                name="displayType"
                value={phone.displayType}
                placeholder={phone.displayType}
                required
              />
              <br />
              <label
                htmlFor="displayRes"
                className="grey-text font-weight-light"
              >
                Display Resolution
              </label>
              <input
                className="form-control"
                id="displayRes"
                name="displayResolution"
                value={phone.displayResolution}
                required
              />
              <br />
              <label
                htmlFor="displaySize"
                className="grey-text font-weight-light"
              >
                Display Size
              </label>
              <input
                className="form-control"
                id="displaySize"
                name="displaySize"
                placeholder="Display Size"
                required
              />
              <br />
              <label
                htmlFor="selfieCamera"
                className="grey-text font-weight-light"
              >
                Selfie Camera
              </label>
              <input
                className="form-control"
                id="selfieCamera"
                name="selfieCamera"
                placeholder="Selfie Camera"
                required
              />
              <br />
              <label
                htmlFor="mainCamera"
                className="grey-text font-weight-light"
              >
                Main Camera
              </label>
              <input
                className="form-control"
                id="mainCamera"
                name="mainCamera"
                placeholder="Main Camera"
                required
              />
              <br />

              <label htmlFor="tech" className="grey-text font-weight-light">
                Technology
              </label>
              <input
                className="form-control"
                id="tech"
                name="technology"
                placeholder="technology"
                required
              />
              <br />
              <label htmlFor="weight" className="grey-text font-weight-light">
                weight
              </label>
              <input
                className="form-control"
                id="weight"
                name="weight"
                placeholder="weight"
                required
              />
              <br />
              <label htmlFor="sound" className="grey-text font-weight-light">
                Sound
              </label>
              <input
                className="form-control"
                id="sound"
                name="sound"
                placeholder="sound"
                required
              />
              <br />
              <label htmlFor="os" className="grey-text font-weight-light">
                Operating System
              </label>
              <input
                className="form-control"
                id="os"
                name="os"
                placeholder="os"
                required
              />
              <br />
              <label htmlFor="os" className="grey-text font-weight-light">
                Production Year
              </label>
              <input
                type="number"
                min="2014"
                max="2019"
                className="form-control"
                id="productionYear"
                name="productionYear"
                placeholder="productionYear"
                required
              />
              <br />
              <label htmlFor="battery" className="grey-text font-weight-light">
                Battery
              </label>
              <input
                className="form-control"
                id="battery"
                name="battery"
                placeholder="battery"
                required
              />
              <br />
              <label htmlFor="imgURL" className="grey-text font-weight-light">
                Image URL
              </label>
              <input
                className="form-control"
                id="imgURL"
                name="imgSource"
                placeholder="imgURL"
                required
              />
              <br />
              <div className="text-center py-4 mt-3">
                <button
                  type="submit"
                  className={this.state.btnStyle}
                  disabled={this.state.buttonDisabled}
                >
                  Add phone to database{" "}
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    );
  }
}

import React, { Component } from "react";

export default class extends Component {
  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }
  render() {
    return (
      <div className="container">
        <div className="card mx-xl-5">
          <div className="card-body">
            <p className="h4 text-center py-4">Add a new phone</p>
            <form
              action="http://localhost:4000/add_phone"
              method="POST"
              onSubmit={console.log("phone has been inserted")}
            >
              <label htmlFor="phoneID" className="grey-text font-weight-light">
                Phone ID
              </label>
              <input
                className="form-control"
                name="phone_id"
                id="phoneID"
                placeholder="phone_id"
                required
              />{" "}
              <br />
              <label
                htmlFor="displayID"
                className="grey-text font-weight-light"
              >
                Display ID
              </label>
              <input
                className="form-control"
                id="display_id"
                name="display_id"
                placeholder="display_id"
                required
              />
              <br />
              <label htmlFor="cameraID" className="grey-text font-weight-light">
                Camera ID
              </label>
              <input
                className="form-control"
                id="cameraID"
                name="camera_id"
                placeholder="camera_id"
                required
              />
              <br />
              <label htmlFor="manname" className="grey-text font-weight-light">
                Manufacturer Name
              </label>
              <input
                className="form-control"
                id="manname"
                name="mname"
                placeholder="mname"
                required
              />
              <br />
              <label htmlFor="pname" className="grey-text font-weight-light">
                Phone Name
              </label>
              <input
                className="form-control"
                id="pname"
                name="name"
                placeholder="name"
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
                name="imgURL"
                placeholder="imgURL"
                required
              />
              <br />
              <div className="text-center py-4 mt-3">
                <button type="submit" className="btn btn-md btn-success">
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

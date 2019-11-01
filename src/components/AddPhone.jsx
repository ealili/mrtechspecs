import React, { Component } from 'react'

export default class extends Component {
  handleChange (event) {
    this.setState({ [event.target.name]: event.target.value })
  }

  handleSubmit = (e) => {
    e.preventDefault()
  }

  render () {
    return (
      <div className="container">
        <div className="card mx-xl-5">
          <div className="card-body">
            <p className="h4 text-center py-4">Add a new phone</p>
            <form
              action="http://localhost/api/phone/create_phone.php"
              method="POST"
              onSubmit={() => this.handleSubmit}
            >
              <label htmlFor="phoneID" className="grey-text font-weight-light">
                Phone ID
              </label>
              <input
                className="form-control"
                name="id"
                id="id"
                placeholder="Phone Id"
                required
              />{' '}
              <br/>
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
                placeholder="Display Type"
                required
              />
              <br/>
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
                placeholder="Display Resolution"
                required
              />
              <br/>
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
              <br/>
              <label htmlFor="selfieCamera" className="grey-text font-weight-light">
                Selfie Camera
              </label>
              <input
                className="form-control"
                id="selfieCamera"
                name="selfieCamera"
                placeholder="Selfie Camera"
                required
              />
              <br/>
              <label htmlFor="mainCamera" className="grey-text font-weight-light">
                Main Camera
              </label>
              <input
                className="form-control"
                id="mainCamera"
                name="mainCamera"
                placeholder="Main Camera"
                required
              />
              <br/>
              <label htmlFor="maname" className="grey-text font-weight-light">
                Manufacturer Name
              </label>
              <input
                className="form-control"
                id="maname"
                name="mname"
                placeholder="mname"
                required
              />
              <br/>
              <label htmlFor="pname" className="grey-text font-weight-light">
                Phone Name
              </label>
              <input
                className="form-control"
                id="pname"
                name="name"
                placeholder="Phone Name"
                required
              />
              <br/>
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
              <br/>
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
              <br/>
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
              <br/>
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
              <br/>
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
              <br/>
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
              <br/>
              <div className="text-center py-4 mt-3">
                <button type="submit" className="btn btn-md btn-success">
                  Add phone to database{' '}
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    )
  }
}

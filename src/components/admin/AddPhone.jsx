import React, { Component } from 'react'

export default class extends Component {

  state = {
    loading: true,
    manufacturers: []
  }

  async componentDidMount () {
    this.isMounted = true;
    const url = `http://localhost/api/manufacturer/get_all_manufacturers.php`
    const response = await fetch(url)
    const data = await response.json()
    this.setState({ manufacturers: data, loading: false })
  }

  //
  handleChange = (e) => {

  }


  render () {
    if (this.state.loading)
      return <h3>Loading...</h3>
    console.log(this.state.manufacturers)
    return (
      <div className="container">
        <div className="card mx-xl-5">
          <div className="card-body">
            <p className="h4 text-center py-4">Add a new phone</p>
            <form
              action="http://localhost/api/phone/create_phone.php"
              method="POST"
              onSubmit={this.handleSubmit}
            >
              <label htmlFor="name" className="grey-text font-weight-light">
                Phone Name
              </label>
              <input
                type="text"
                className="form-control"
                id="name"
                name="name"
                placeholder="Phone Name"
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

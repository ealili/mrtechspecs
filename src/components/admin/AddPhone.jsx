import React, { Component } from 'react'
import Redirect from "react-router-dom/Redirect";

export default class extends Component {

  state = {
    loading: true,
    manufacturers: [],
    exists: false,
    buttonDisabled: false,
    btnStyle: 'btn btn-md btn-success'
  }

  async componentDidMount () {
    const url = `http://localhost/api/manufacturer/get_all_manufacturers.php`
    const response = await fetch(url)
    const data = await response.json()
    this.setState({ manufacturers: data, loading: false })
  }

  handleChange (e) {
    let checkId = e.target.value
    checkId = checkId.charAt(0).toLowerCase() + checkId.slice(1)
    checkId = checkId.replace(/\s/g, '')
    fetch(`http://localhost/api/phone/get_phone.php?id=${checkId}`)
      .then(response => response.json())
      .then(data => {
        if (data.length > 0) {
          this.setState({
            exists: true,
            buttonDisabled: true,
            btnStyle: 'btn btn-md btn-secondary'
          })
        } else
          this.setState({
            exists: false,
            buttonDisabled: false,
            btnStyle: 'btn btn-md btn-success'
          })
      })
  }

  render () {
    if (this.state.loading)
      return <div className="lds-hourglass"></div>
    if (localStorage.getItem('user')==null) {
      return (<Redirect to={'/login'}/>)
    }
    return (
      <div className="container">
        <div>
          <button
              type="button"
              className="btn btn-secondary"
              onClick={() => window.history.back()}
          >
            Back
          </button>
        </div>
        <div className="card mx-xl-5">
          <div className="card-body">
            <p className="h4 text-center py-4">Add a new phone</p>
            <form
              action="http://localhost/api/phone/create_phone.php"
              method="POST"
            >
              <label htmlFor="name" className="grey-text font-weight-light">
                Phone Name
              </label>
              {this.state.exists ? <span style={{ color: 'red', float: 'right' }}>* This phone already
                  exists</span> : null}

              <input
                type="text"
                className="form-control"
                id="name"
                name="name"
                placeholder="Phone Name"
                onChange={this.handleChange.bind(this)}
                required
              />
              <br/>
              <label htmlFor="mname" className="grey-text font-weight-light">
                Manufacturer Name
              </label>
              <br/>
              <select name='mname'>
                {
                  this.state.manufacturers.map(m => {
                    return <option value={m.mname} name='mname' key={m.mname}
                                   required>{m.mname}</option>
                  })
                }
              </select>
              <br/>
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
              <label htmlFor="productionYear" className="grey-text font-weight-light">
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
                <button type="submit" className={this.state.btnStyle}
                        disabled={this.state.buttonDisabled}>
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

import React, { Component } from 'react'

class PhoneSpecifications extends Component {
  state = {
    loading: true,
    phoneSpecs: null
  };
  async componentDidMount() {
    const url = `http://localhost/api/phone/get_phone.php?id=${this.props.match.params.id}`
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ phoneSpecs: data, loading: false });
  }
  render () {
    if (this.state.loading)
      return <React.Fragment>Loading...</React.Fragment>
    const requiredPhone = this.state.phoneSpecs[0]
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
              <table className="table table-striped">
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
                  <th>Display Size:</th>
                  <td>{requiredPhone.displaySize}</td>
                </tr>
                <tr>
                  <th>Display Type:</th>
                  <td>{requiredPhone.displayType}</td>
                </tr>
                <tr>
                  <th>Display Resolution:</th>
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
                  <td>{requiredPhone.os}</td>
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
    )
  }
}

export default PhoneSpecifications

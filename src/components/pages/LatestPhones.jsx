import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class LatestPhones extends Component {
  state = {
    loading: true,
    latestPhones: []
  };
  async componentDidMount() {
    const url = "http://localhost:8080/api/phones";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ latestPhones: data, loading: false });
  }

  render() {
    if (this.state.loading) {
      return <div className="lds-hourglass"></div>
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Latest Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.latestPhones.map(latestPhone => (
                <PhoneThumbnail key={latestPhone.id} phone={latestPhone} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

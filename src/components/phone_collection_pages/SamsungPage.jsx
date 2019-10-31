import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class SamsungPage extends Component {
  state = {
    loading: true,
    samsungs: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/fetch.php?mname=Samsung";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ samsungs: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.samsungs
      ? console.log("Loading...")
      : console.log("Samsung phones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Samsung Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.samsungs.map(samsung => (
                <PhoneThumbnail key={samsung.id} phone={samsung} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

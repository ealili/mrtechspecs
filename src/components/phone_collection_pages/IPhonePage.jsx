import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class IPhonePage extends Component {
  state = {
    loading: true,
    iphones: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/fetch.php?mname=Apple";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ iphones: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.iphones
      ? console.log("Loading...")
      : console.log("iPhones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">iPhones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.iphones.map(iphone => (
                <PhoneThumbnail key={iphone.id} phone={iphone} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

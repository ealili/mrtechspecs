import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class MixedPhones extends Component {
  state = {
    loading: true,
    topPhones: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/fetch_phone_data.php";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ topPhones: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.topPhones
      ? console.log("Loading...")
      : console.log("Top phones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Top Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.topPhones.map(top => (
                <PhoneThumbnail key={top.id} phone={top} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

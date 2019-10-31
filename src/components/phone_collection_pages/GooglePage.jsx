import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class GooglePage extends Component {
  state = {
    loading: true,
    googlephones: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/fetch.php?mname=Google";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ googlephones: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.samsungs
      ? console.log("Loading...")
      : console.log("Google phones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Google Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.googlephones.map(google => (
                <PhoneThumbnail key={google.id} phone={google} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

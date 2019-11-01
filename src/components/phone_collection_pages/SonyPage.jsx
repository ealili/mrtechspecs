import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class SonyPage extends Component {
  state = {
    loading: true,
    sonies: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/get_company_phones.php?mname=Sony";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ sonies: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.samsungs
      ? console.log("Loading...")
      : console.log("Sony phones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Sony Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.sonies.map(sony => (
                <PhoneThumbnail key={sony.id} phone={sony} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

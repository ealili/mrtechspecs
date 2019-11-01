import React, { Component } from "react";
import PhoneThumbnail from "../PhoneThumbnail";

export default class HuaweiPage extends Component {
  state = {
    loading: true,
    huaweis: null
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/get_company_phones.php?mname=Huawei";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ huaweis: data, loading: false });
  }

  render() {
    this.state.loading || !this.state.huaweis
      ? console.log("Loading...")
      : console.log("Huawei phones are loaded");
    if (this.state.loading) {
      return <React.Fragment>Data is being loaded</React.Fragment>;
    } else {
      return (
        <React.Fragment>
          <h3 className="my-4 text-center text-lg-left">Huawei Phones</h3>
          <div className="container">
            <div className="row text-center text-lg-left">
              {this.state.huaweis.map(huawei => (
                <PhoneThumbnail key={huawei.id} phone={huawei} />
              ))}
            </div>
          </div>
        </React.Fragment>
      );
    }
  }
}

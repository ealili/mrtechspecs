import React, { Component } from "react";

const PhoneContext = React.createContext();

export class PhoneProvider extends Component {
  state = {
    loading: true,
    samsungs: [],
    iPhones: [],
    huaweis: [],
    googles: [],
    sonies: []
  };

  async componentDidMount() {
    const samsungUrl = "http://localhost/api/phone/fetch.php?mname=Samsung";
    let response = await fetch(samsungUrl);
    const samsungData = await response.json();
    this.setState({ samsungs: samsungData });
    const iPhoneURL = "http://localhost/api/phone/fetch.php?mname=Apple";
    response = await fetch(iPhoneURL);
    const iPhoneData = await response.json();
    this.setState({ iPhones: iPhoneData });
    const huaweiURL = "http://localhost/api/phone/fetch.php?mname=Huawei";
    response = await fetch(huaweiURL);
    const huaweiData = await response.json();
    this.setState({ huaweis: huaweiData });
    const googleURL = "http://localhost/api/phone/fetch.php?mname=Google";
    response = await fetch(googleURL);
    const googleData = await response.json();
    this.setState({ googles: googleData });
    const sonyURL = "http://localhost/api/phone/fetch.php?mname=Sony";
    response = await fetch(sonyURL);
    const sonyData = await response.json();
    this.setState({ sonies: sonyData, loading: false });
  }

  render() {
    return (
      <PhoneContext.Provider value={this.state}>
        {this.props.children}
      </PhoneContext.Provider>
    );
  }
}

export const PhoneConsumer = PhoneContext.Consumer;

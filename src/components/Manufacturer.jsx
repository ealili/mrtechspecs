import React, { Component } from "react";
import PhoneThumbnail from "./PhoneThumbnail";

export default class Manufacturer extends Component {
  state = {
    manufacturer: null,
    isFetching: false
  };

  fetchData = () => {
    this.setState({ isFetching: true });
    fetch(
      `http://localhost:8080/api/phones/${this.props.match.params.mname}`
    )
      .then(res => res.json())
      .then(data =>
        this.setState({
          manufacturer: data,
          isFetching: !this.state.isFetching
        })
      );
  };

  componentDidMount() {
    this.fetchData();
  }

  componentDidUpdate(prevProps, prevState, snapshot) {
    if (prevState === this.state) {
      this.fetchData();
    }
  }

  render() {
    if (this.state.isFetching) return <div className="lds-hourglass"></div>;
    if (!this.state.manufacturer) return null;
    return (
      <React.Fragment>
        <h3 className="my-4 text-center text-lg-left">
          {this.props.match.params.mname} Phones
        </h3>
        <div className="container">
          <div className="row text-center text-lg-left">
            {this.state.manufacturer.map(phone => (
              <PhoneThumbnail key={phone.id} phone={phone} />
            ))}
          </div>
        </div>
      </React.Fragment>
    );
  }
}

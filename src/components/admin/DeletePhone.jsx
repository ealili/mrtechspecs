import React, { Component } from "react";
import DeleteThumbnail from "./DeleteThumbnail";
import Redirect from "react-router-dom/Redirect";

export default class DeletePhone extends Component {
  state = {
    loading: true,
    allPhones: []
  };
  async componentDidMount() {
    const url = "http://localhost:8080/api/phones";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ allPhones: data, loading: false });
  }

  render() {
    if (localStorage.getItem('user') == null) {
      return (<Redirect to={'/login'}/>)
    }
    if (this.state.loading) {
      return <div className="lds-hourglass"></div>;
    } else {
      return (
        <section className="py-5">
          <div className="container">
            <div>
              <button
                type="button"
                className="btn btn-secondary"
                onClick={() => window.history.back()}
              >
                Back
              </button>
            </div>
            <div className="row text-center text-lg-left">
              <h3 className="my-4 text-center text-lg-left">
                Showing All Phones
              </h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {this.state.allPhones.map(phone => (
                    <DeleteThumbnail key={phone.id} phone={phone} />
                  ))}
                </div>
              </div>
            </div>
          </div>
        </section>
      );
    }
  }
}

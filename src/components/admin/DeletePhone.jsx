import React, { Component } from "react";
import DeleteThumbnail from "./DeleteThumbnail";

export default class DeletePhone extends Component {
  state = {
    loading: true,
    latestPhones: []
  };
  async componentDidMount() {
    const url = "http://localhost/api/phone/get_all_phones.php";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ latestPhones: data, loading: false });
  }

  render() {
    if (this.state.loading) {
      return <div className="lds-hourglass"></div>;
    } else {
      return (
        <section className="py-5">
          <div className="container">
            <div className="row text-center text-lg-left">
              <h3 className="my-4 text-center text-lg-left">
                Showing All Phones
              </h3>
              <div className="container">
                <div className="row text-center text-lg-left">
                  {this.state.latestPhones.map(latestPhone => (
                    <DeleteThumbnail key={latestPhone.id} phone={latestPhone} />
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

import React, { Component } from "react";

export default class DeleteThumbnail extends Component {
  render() {
    const { id, name, imgSource } = this.props.phone;
    return (
      <div className="col-lg-3 col-md-4 col-xs-6">
        <img className="img-fluid img-thumbnail" alt={name} src={imgSource} />
        <br />
        <p className="phoneTitle" style={{ textAlign: "center" }}>
          {name}
        </p>
        <p style={{ textAlign: "center" }}>
          {/*  Later this will redirect to a new EditPhoneForm component */}
          <button className="btn btn-primary btn-sm">Edit Phone</button>
        </p>
      </div>
    );
  }
}

import React, { Component } from "react";
import { Link } from "react-router-dom";

export default class PhoneThumbnail extends Component {
  render() {
    const { id, name, imgSource } = this.props.phone;
    const link = `/phones/${id}`;
    return (
      <div className="col-lg-3 col-md-4 col-xs-6">
        <Link to={link}>
          <img className="img-fluid img-thumbnail" alt={name} src={imgSource} />
        </Link>
        <br />
        <p className="phoneTitle" style={{ textAlign: "center" }}>
          {name}
        </p>
      </div>
    );
  }
}

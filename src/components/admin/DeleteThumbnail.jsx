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
          <button className="btn btn-danger btn-sm" onClick={this.handleDelete}>
            Delete Phone
          </button>
        </p>
      </div>
    );
  }

  handleDelete() {
    alert("This button will delete the phone");
  }
}

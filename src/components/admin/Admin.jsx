import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";

class Admin extends Component {
  state = {
    redirect: true,
    user: {},
  };

  componentWillMount() {
   if(localStorage.getItem('user')){
      this.setState({redirect: false});
    }
  }

  logout() {
    localStorage.setItem("user", "");
    localStorage.clear();
    this.setState({ redirect: true });
  }

  render() {
    if (this.state.redirect) {
      return <Redirect to={"/login"} />;
    }
    return (
      <div className="container">
        <hr />
        <div className="row text-center text-lg-center">
          <div className="col-lg-3 col-md-4 col-xs-6">
            <Link to="/admin/add-phone" className="nav-link">
              <i class="fa fa-plus-circle" style={this.iconStyles}>
                <div style={{ fontSize: "25px" }}>Add Phone</div>
              </i>
            </Link>
          </div>
          <div className="col-lg-3 col-md-4 col-xs-6">
            <Link to="/admin/edit-phone" className="nav-link">
              <i class="fa fa-edit" style={this.iconStyles}>
                <div style={{ fontSize: "25px" }}>Edit Phone</div>
              </i>
            </Link>
          </div>
          <div className="col-lg-3 col-md-4 col-xs-6">
            <Link to="/admin/delete-phone" className="nav-link">
              <i className="fa fa-trash" style={this.iconStyles}>
                <div style={{fontSize: "25px"}}>Delete Phone</div>
              </i>
            </Link>
          </div>
          <div className="col-lg-3 col-md-4 col-xs-6">
            <button
              onClick={this.logout.bind(this)}
              className="logout nav-link"
            >
              <i class="fa fa-sign-out" style={this.iconStyles}>
                <div style={{ fontSize: "25px", color: "#0000FF" }}>
                  Sign Out
                </div>
              </i>
            </button>
          </div>
        </div>
      </div>
    );
  }

  iconStyles = {
    fontSize: "120px",
    color: "black"
  };
}

export default Admin;

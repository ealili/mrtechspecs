import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";

class Admin extends Component {
  state = {
    redirect: false,
    user: {}
  };


  componentWillMount() {
    if (sessionStorage.getItem("userData") ||localStorage.getItem("userData")) {
      console.log(sessionStorage.getItem("userData"));
    } else {
      this.setState({ redirect: true });
    }
  }

  componentDidMount() {
    this.CheckSession();
  }

  CheckSession() {
    const response = fetch('http://localhost/api/retrievecookie.php');
    const data = response.json();
    if (data.length !== 0) {
      this.setState({
        redirect: true
      })
    console.log("SESSION IS HERE")
    }
      else
      {
        console.log("no session");
      }

  }


  logout() {
    fetch('http://localhost/api/removecookie.php')
        .then(response => response.json());
    sessionStorage.setItem("userData", "");
    localStorage.setItem("userData", "");
    sessionStorage.clear();
    localStorage.clear();
    this.setState({redirect: true});
    console.log(sessionStorage.getItem("userData"));
  }

  render() {
    if (this.state.redirect) {
      return <Redirect to={"/login"}/>;
    }
    else/*if(sessionStorage.getItem('userData') || localStorage.getItem('userData')*/ {
      return (
          <div className="container">
            <hr/>
            <div className="row text-center text-lg-left">
              <div className="col-lg-3 col-md-4 col-xs-6">
                <Link to="/admin/add-phone" className="nav-link">
                  <i class="fa fa-plus-circle" style={this.iconStyles}>
                    <div style={{fontSize: "25px"}}>Add Phone</div>
                  </i>
                </Link>
              </div>
              <div className="col-lg-3 col-md-4 col-xs-6">
                <Link to="/admin/edit-phone" className="nav-link">
                  <i class="fa fa-edit" style={this.iconStyles}>
                    <div style={{fontSize: "25px"}}>Edit Phone</div>
                  </i>
                </Link>
              </div>
              <div className="col-lg-3 col-md-4 col-xs-6">
                <a
                    href=""
                    onClick={this.logout.bind(this)}
                    className="logout nav-link"
                >
                  <i class="fa fa-sign-out" style={this.iconStyles}>
                    <div style={{fontSize: "25px", color: "#0000FF"}}>
                      Sign Out
                    </div>
                  </i>
                </a>
              </div>
            </div>
          </div>
      );
    }
  }

  iconStyles = {
    fontSize: "120px",
    color: "black"
  };
}

export default Admin;

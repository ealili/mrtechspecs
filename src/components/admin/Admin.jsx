import React, { Component } from 'react'
import { Link } from 'react-router-dom'

class Admin extends Component {
  render () {
    return (
      <div>
        <div className="col-lg-3 col-md-4 col-xs-6">
          <Link to="/admin/addphone" className="nav-link">
            Add phone
          </Link>
        </div>
        <div className="col-lg-3 col-md-4 col-xs-6">
          <Link to="/modify" className="nav-link">
            Modify
          </Link>
        </div>
      </div>
    )
  }
}

export default Admin
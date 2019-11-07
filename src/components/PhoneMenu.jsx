import React, { Component } from 'react'
import { Link } from 'react-router-dom'

export default class PhoneMenu extends Component {
  state = {
    loading: true,
    manufacturers: []
  }

  async componentDidMount () {
    const url = `http://localhost/api/manufacturer/get_all_manufacturers.php`
    const response = await fetch(url)
    const data = await response.json()
    this.setState({ manufacturers: data, loading: false })
  }

  render () {
    if (this.state.loading) {
      return <div className="lds-hourglass"></div>
    }
    return (
      <nav className="nav nav-pills nav-justified">
        {
          this.state.manufacturers.map(man => {
            let link = '/phones/manufacturer/' + man.mname
            return (<Link to={link} className="nav-item nav-link" key={man.mname}>
              {man.mname}
            </Link>)
          })
        }
      </nav>
    )
  }
}

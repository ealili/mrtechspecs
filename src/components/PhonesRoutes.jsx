import React, { Component } from 'react'
import PhoneMenu from './PhoneMenu'
import LatestPhones from './pages/LatestPhones'
import { Switch, Route } from 'react-router-dom'
import PhoneSpecifications from './PhoneSpecifications'
import Manufacturer from './Manufacturer'

class PhonesRoutes extends Component {

  state = {
    loading: true,
    manufacturers: []
  }

  async componentDidMount () {
    const url = `http://localhost:8080/api/manufacturers`
    const response = await fetch(url)
    const data = await response.json()
    this.setState({ manufacturers: data, loading: false })
  }

  render () {
    if (this.state.loading)
      return <div className="lds-hourglass"></div>
    return (
      <section className="py-5">
        <div className="container">
          <PhoneMenu/>
          <div className="row text-center text-lg-left"/>
          <Switch>
            <Route exact path="/phones" component={LatestPhones}/>
            <Route path="/phones/manufacturer/:mname" component={Manufacturer}/>
            <Route path="/phones/:id" component={PhoneSpecifications}/>
          </Switch>
        </div>
      </section>
    )
  }
}

export default PhonesRoutes

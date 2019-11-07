import React, { Component } from 'react'
import PhoneMenu from './PhoneMenu'
import MixedPhones from './pages/MixedPhones'
import { Switch, Route } from 'react-router-dom'
import PhoneSpecifications from './PhoneSpecifications'
import Manufacturer from './Manufacturer'

class PhonesRoutes extends Component {

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
    if (this.state.loading)
      return <div className="lds-hourglass"></div>
    return (
      <section className="py-5">
        <div className="container">
          <PhoneMenu/>
          <div className="row text-center text-lg-left"/>
          <Switch>
            <Route exact path="/phones" component={MixedPhones}/>
            <Route path="/phones/manufacturer/:mname" component={Manufacturer}/>
            <Route path="/phones/:id" component={PhoneSpecifications}/>
          </Switch>
        </div>
      </section>
    )
  }
}

export default PhonesRoutes

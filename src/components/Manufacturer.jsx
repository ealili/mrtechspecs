import React, { Component } from 'react'
import PhoneThumbnail from './PhoneThumbnail'

export default class Manufacturer extends Component {
  state = {
    manufacturer: null,
    isFetching: false
  }

  fetchData = () => {
    this.setState({ isFetching: true})
    fetch(`http://localhost/api/phone/get_company_phones.php?mname=${this.props.match.params.mname}`)
          .then(res => res.json())
          .then(data => this.setState({ manufacturer: data, isFetching: !this.state.isFetching }))
  }

  // async componentDidMount () {
  //   this.setState({ ...this.state, isFetching: true })
  //   const url = `http://localhost/api/phone/get_company_phones.php?mname=${this.props.match.params.mname}`
  //   const response = await fetch(url)
  //   const data = await response.json()
  //   this.setState({ manufacturer: data, isFetching: false })
  //
  // }

  // componentDidUpdate (prevProps, prevState, snapshot) {
  //   if (this.state.manufacturer.length !== 0) {
  //     fetch(`http://localhost/api/phone/get_company_phones.php?mname=${this.props.match.params.mname}`)
  //       .then(res => res.json())
  //       .then(data => this.setState({ manufacturer: data, loading: false }))
  //
  //   }
  // }


  componentDidMount () {
    this.fetchData();
  }

  componentDidUpdate (prevProps, prevState, snapshot) {
    if (prevState === this.state) {
      this.fetchData()
    }
  }

  render () {
    if (this.state.isFetching)
      return <div className="lds-hourglass"></div>
    if (!this.state.manufacturer) return null
    return (
      <React.Fragment>
        <h3
          className="my-4 text-center text-lg-left">{this.props.match.params.mname} Phones</h3>
        <div className="container">
          <div className="row text-center text-lg-left">
            {this.state.manufacturer.map(phone => (
              <PhoneThumbnail key={phone.id} phone={phone}/>
            ))}
          </div>
        </div>
      </React.Fragment>
    )
  }
}

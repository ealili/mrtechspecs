import React, { Component } from 'react'

class Comparator extends Component {
  state = {
    loading: true,
    phones: [],
    firstPhone: [{
      name: '',
      prodcutionYear: '',
      mname: '',
      displaySize: '',
      displayType: '',
      displayResolution: '',
      weight: '',
      battery: '',
      mainCamera: '',
      selfieCamera: '',
      os: '',
      technology: '',
      sound: ''
    }],
    secondPhone: [{
      name: '',
      prodcutionYear: '',
      mname: '',
      displaySize: '',
      displayType: '',
      displayResolution: '',
      weight: '',
      battery: '',
      mainCamera: '',
      selfieCamera: '',
      os: '',
      technology: '',
      sound: ''
    }]
  }

  componentDidMount () {
    fetch(`http://localhost/api/phone/get_all_phones.php`)
      .then(response => response.json())
      .then(data => {
        this.setState({ phones: data, loading: false })
      })
  }

  getFirstPhone () {
    this.setState({ firstPhone: this.state.phones.filter(phone => phone.id === this.refs.firstPhone.value) })
  }

  getSecondPhone () {
    this.setState({ secondPhone: this.state.phones.filter(phone => phone.id === this.refs.secondPhone.value) })
  }

  render () {
    if (this.state.loading)
      return <div>Loading...</div>
    const firstPhone = this.state.firstPhone[0]
    const secondPhone = this.state.secondPhone[0]
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-10 my-4 mx-auto">
            <br/>
            <hr/>
            <h5 className="text-center">Select two phones to compare</h5>
            <hr/>
            <div className="row">
              <div className="col-lg-12">
                <div className="table-responsive">
                  <table className="table table-striped table-hover">
                    <thead className="thead-inverse">
                    <tr>
                      <th className="w-25">
                      </th>
                      <th><select ref='firstPhone' onChange={this.getFirstPhone.bind(this)}>
                        {
                          this.state.phones.map(phone => {
                            return <option value={phone.id} name={phone.id}
                                           key={phone.id}
                                           required>{phone.name}</option>
                          })
                        }
                      </select></th>
                      <th><select ref='secondPhone' onChange={this.getSecondPhone.bind(this)}>
                        {
                          this.state.phones.map(phone => {
                            return <option value={phone.id} name={phone.id}
                                           key={phone.id}
                                           required>{phone.name}</option>
                          })
                        }
                      </select></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td className="w-25 option">Phone Name</td>
                      <td className="">{firstPhone.name}</td>
                      <td className="">{secondPhone.name}</td>
                    </tr>
                    <tr>
                      <td className="w-25 option">Manufacturer Name</td>
                      <td className="">{firstPhone.mname}</td>
                      <td className="">{secondPhone.mname}</td>
                    </tr>
                    <tr>
                      <td className="w-25 option">Production Year</td>
                      <td className="">{firstPhone.prodcutionYear}</td>
                      <td className="">{secondPhone.prodcutionYear}</td>
                    </tr>
                    <tr>
                      <td className="option">Technology</td>
                      <td className="">{firstPhone.technology}</td>
                      <td className="">{secondPhone.technology}</td>
                    </tr>
                    <tr>
                      <td className="option">Weight</td>
                      <td className="">{firstPhone.weight}</td>
                      <td className="">{secondPhone.weight}</td>
                    </tr>
                    <tr>
                      <td className="option">Display Size</td>
                      <td className="">{firstPhone.displaySize}</td>
                      <td className="">{secondPhone.displaySize}</td>
                    </tr>
                    <tr>
                      <td className="option">Display Type</td>
                      <td className="">{firstPhone.displayType}</td>
                      <td className="">{secondPhone.displayType}</td>
                    </tr>
                    <tr>
                      <td className="option">Display Resolution</td>
                      <td className="">{firstPhone.displayResolution}</td>
                      <td className="">{secondPhone.displayResolution}</td>
                    </tr>
                    <tr>
                      <td className="option">Main Camera</td>
                      <td className="">{firstPhone.mainCamera}</td>
                      <td className="">{secondPhone.mainCamera}</td>
                    </tr>
                    <tr>
                      <td className="option">Selfie Camera</td>
                      <td className="">{firstPhone.selfieCamera}</td>
                      <td className="">{secondPhone.selfieCamera}</td>
                    </tr>
                    <tr>
                      <td className="option">Sound</td>
                      <td className="">{firstPhone.sound}</td>
                      <td className="">{secondPhone.sound}</td>
                    </tr>
                    <tr>
                      <td className="option">OS</td>
                      <td className="">{firstPhone.os}</td>
                      <td className="">{secondPhone.os}</td>
                    </tr>
                    <tr>
                      <td className="option">Battery</td>
                      <td className="">{firstPhone.battery}</td>
                      <td className="">{secondPhone.battery}</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default Comparator
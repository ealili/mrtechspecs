import React, { Component } from 'react'

class Comparator extends Component {
  render () {
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
                      <th className="w-25"></th>
                      <th>First Phone Option Here</th>
                      <th>Second Phone Option Here</th>
                    </tr>
                    </thead>
                    <tr>
                      <td className="w-25 option">Phone Name</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tbody>
                    <tr>
                      <td className="w-25 option">Production Year</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Technology</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Weight</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Display Size</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Display Type</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Display Resolution</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Main Camera</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Selfie Camera</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Sound</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">OS</td>
                      <td className=""></td>
                      <td className=""></td>
                    </tr>
                    <tr>
                      <td className="option">Battery</td>
                      <td className=""></td>
                      <td className=""></td>
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
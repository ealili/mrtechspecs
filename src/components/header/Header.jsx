import React, {Component} from 'react'
import {Link} from 'react-router-dom'


export default class Header extends Component {
    render() {
        return (
            <nav className="navbar navbar-expand-lg navbar-dark">
                <Link to="/" className="navbar-brand">
                    <img src={require('../../logo.png')} alt="Logo"/>
                </Link>
                <button
                    id="navToggler"
                    className="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                >
                    <span className="navbar-toggler-icon"/>
                </button>



                <div className="collapse navbar-collapse justify-content-end"
                     id="navbarSupportedContent">
                    <ul className="navbar-nav justify-content-center">
                        <li className="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                            <Link to="/" className="nav-link">
                                Home
                            </Link>
                        </li>
                        <li className="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                            <Link to="/phones" className="nav-link">
                                Phones
                            </Link>
                        </li>
                        <li className="nav-item" data-toggle="collapse" data-target=".navbar-collapse">
                            <Link to="/about" className="nav-link">
                                About
                            </Link>
                        </li>
                    </ul>
                </div>
            </nav>
        );
    }
}

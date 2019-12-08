import React, {Component} from "react";
import "./css/main.css";
import "./css/util.css";
import "./js/main.js";
import Tilt from 'react-tilt';

export default class Login extends Component {

    render() {
        return (

            <React.Fragment>
                <div className="limiter">
                    <div className="container-login100">
                        <div className="wrap-login100">
                            <Tilt className="Tilt" options={{scale: 1.0}}>
                                <div className="login100-pic js-tilt" data-tilt>
                                    <img src={require('./images/img-01.png')} alt="IMG"/>
                                </div>
                            </Tilt>
                            <form className="login100-form validate-form">
					<span className="login100-form-title">
						Member Login
					</span>

                                <div className="wrap-input100 validate-input"
                                     data-validate="Valid email is required: ex@abc.xyz">
                                    <input className="input100" type="text" name="email" placeholder="Email"/>
                                    <span className="focus-input100"></span>
                                    <span className="symbol-input100"><i className="fa fa-envelope"
                                                                         aria-hidden="true"/></span>
                                </div>

                                <div className="wrap-input100 validate-input" data-validate="Password is required">
                                    <input className="input100" type="password" name="pass" placeholder="Password"/>
                                    <span className="focus-input100"></span>
                                    <span className="symbol-input100">
							<i className="fa fa-lock" aria-hidden="true"/>
						</span>
                                </div>

                                <div className="container-login100-form-btn">
                                    <button className="login100-form-btn">
                                        Login
                                    </button>
                                </div>

                                <div className="text-center p-t-12">
						<span className="txt1">
							Forgot
						</span>
                                    <a className="txt2" href="#">
                                        Username / Password?
                                    </a>
                                </div>

                                <div className="text-center p-t-136">
                                    <a className="txt2" href="#">
                                        Create your Account
                                        <i className="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <br/>


            </React.Fragment>
        );
    }
};


import React, {Component} from 'react'
import {Link, Redirect} from 'react-router-dom'

class Admin extends Component {
    state = {
        redirect: false,
        user: {}
    }

    componentWillMount() {
        if (sessionStorage.getItem('userData')) {
            console.log(sessionStorage.getItem('userData'))
        } else {
            this.setState({redirect: true});
        }
    }

    logout(){
        sessionStorage.setItem("userData",'');
        sessionStorage.clear();
        this.setState({redirect: true})
        console.log(sessionStorage.getItem('userData'))
    }

    render() {
        if (this.state.redirect) {
            return (<Redirect to={'/login'}/>)
        }
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
                <div className="col-lg-3 col-md-4 col-xs-6">
                    <a href='' onClick={this.logout.bind(this)} className="logout nav-link">Logout</a>
                </div>
            </div>
        );
    }
}

export default Admin
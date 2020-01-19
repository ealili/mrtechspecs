import React, {Component} from 'react';
import Redirect from "react-router-dom/Redirect";

class AddAdmin extends Component {
    state = {
        loading: true,
        users: '',
        exists: false,
        buttonDisabled: false,
        btnStyle: "btn btn-md btn-success",
    };

    handleChange(e) {
        let checkUser = e.target.value;

        fetch(`http://localhost/api/administrator/get_all_administrators.php`)
            .then(response => response.json())
            .then(data => {
                this.setState({users: data});
            });

        for(let i=0; i<this.state.users.length; i++){
            if(this.state.users[i].username===checkUser)
            {
                this.setState({
                    exists: true,
                    buttonDisabled: true,
                    btnStyle: 'btn btn-md btn-secondary'
                });
                break;
            }
            else
            {
                this.setState({
                    exists: false,
                    buttonDisabled: false,
                    btnStyle: 'btn btn-md btn-success'
                })
            }
        }
    }

    render() {
        if (localStorage.getItem('user') == null) {
            return (<Redirect to={'/login'}/>)
        }

        return (
            <div className="container">
                <div>
                    <button
                        type="button"
                        className="btn btn-secondary"
                        onClick={() => window.history.back()}
                    >
                        Back
                    </button>
                </div>
                <div className="card mx-xl-5">
                    <div className="card-body">
                        <p className="h4 text-center py-4">Add a new admin</p>
                        <form
                            action="http://localhost/api/administrator/create_administrator.php"
                            method="POST"
                        >
                            <label htmlFor="username" className="grey-text font-weight-light">
                                Username
                            </label>
                            {this.state.exists ? <span style={{color: 'red', float: 'right'}}>* This username already
                  exists</span> : null}

                            <input
                                type="text"
                                className="form-control"
                                name="username"
                                placeholder="Username"
                                onChange={this.handleChange.bind(this)}
                                required
                            />
                            <br/>
                            <label
                                htmlFor="username"
                                className="grey-text font-weight-light"
                            >
                                Name
                            </label>
                            <input
                                className="form-control"
                                name="name"
                                placeholder="Name"
                                required
                            />
                            <br/>
                            <label
                                htmlFor="password"
                                className="grey-text font-weight-light"
                            >
                                Password
                            </label>
                            <br/>
                            <input
                                className="form-control"
                                //type="password"
                                name="password"
                                placeholder="Password"
                                required
                            />
                            <div className="text-center py-4 mt-3">
                                <button type="submit" className={this.state.btnStyle}
                                        disabled={this.state.buttonDisabled}>
                                    Add Admin to database{' '}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        )
    }
}

export default AddAdmin;
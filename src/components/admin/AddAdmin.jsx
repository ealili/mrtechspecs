import React, {Component} from 'react';
import Redirect from "react-router-dom/Redirect";

class AddAdmin extends Component {
    state = {
        loading: true,
        users: [
            {
                name: "",
                username: "",
                password: ""
            }
        ],
        user: [
            {
                name: "",
                username: "",
                password: ""
            }
        ],
        buttonDisabled: false,
        btnStyle: "btn btn-md btn-success",
    };

    handleChange(e) {
        let checkUser = e.target.value
        fetch(`http://localhost/api/administrator/get_all_administrators.php`)
            .then(response => response.json())
            .then(data => {
                this.setState({users: data})
            })

        this.setState({
            user: this.state.users.filter(
                user =>  user.username === checkUser
            )
        });

        console.log(checkUser);
        console.log(this.state.user);

        if(this.state.user.username != undefined) {
            if (this.state.user[0].username === checkUser) {
                this.setState({
                    exists: true,
                    buttonDisabled: true,
                    btnStyle: 'btn btn-md btn-secondary'
                })
            }
        }
         else {
            this.setState({
                exists: false,
                buttonDisabled: false,
                btnStyle: 'btn btn-md btn-success'
            })
        }
    }

    render() {
        if (localStorage.getItem('user') == null) {
            return (<Redirect to={'/login'}/>)
        }
        const user = this.state.user[0];
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
                                id="username"
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
                                id="displayType"
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
                                id="password"
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
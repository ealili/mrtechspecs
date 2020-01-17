import React, {Component} from 'react';

export default class RemoveAdmin extends Component {
    state = {
        loading: true,
        users: [
            {
                name: "",
                username: "",
            }
        ],
        buttonDisabled: false,
        btnStyle: "btn btn-md btn-success",
    };
    async componentDidMount() {
        const url = "http://localhost/api/administrator/get_all_administrators.php";
        const response = await fetch(url);
        const data = await response.json();
        this.setState({ users: data, loading: false });
        console.log(this.state.users);
    }

    render() {
        if (this.state.loading) {
            return <div className="lds-hourglass"></div>;
        } else {
            const user = this.state.users[0];
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
                            <p className="h4 text-center py-4">Delete Admin</p>
                            <form
                                action="http://localhost/api/administrator/remove_administrators.php"
                                method="GET"
                            >
                                <label htmlFor="user" className="grey-text font-weight-light">
                                    Admin
                                </label>
                                <br/>
                                <select name="user" ref="user" >
                                    <option value="" selected disabled hidden>
                                        Choose here
                                    </option>
                                    {this.state.users.map(m => {
                                        return (
                                            <option value={m.username} name="user" key={m.username} required>
                                                {m.name}, {m.username}
                                            </option>
                                        );
                                    })}
                                </select>
                                <br/>
                                <br/>
                                <button
                                    type="submit"
                                    className={this.state.btnStyle}
                                    disabled={this.state.buttonDisabled}
                                >
                                    Delete Administrator{" "}
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            );
        }
    }
}
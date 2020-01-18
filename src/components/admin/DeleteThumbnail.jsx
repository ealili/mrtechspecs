import React, {Component} from "react";

export default class DeleteThumbnail extends Component {
    render() {
        const {id, name, imgSource} = this.props.phone;
        return (
            <div className="col-lg-3 col-md-4 col-xs-6">
                <img className="img-fluid img-thumbnail" alt={name} src={imgSource}/>
                <br/>
                <p className="phoneTitle" style={{textAlign: "center"}}>
                    {name}
                </p>
                <p style={{textAlign: "center"}}>
                    <form action='http://localhost/api/phone/delete_phone.php?$' method="POST">
                        <input id="id" name="id" value={this.props.phone.id} hidden/>
                            <button type="submit" className="btn btn-danger btn-sm" onClick={this.handleDelete}
                                    >
                                Delete Phone
                            </button>
                    </form>
                </p>
            </div>
        );
    }

    handleDelete() {
        //alert("This button will delete the phone");
    }
}

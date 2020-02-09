import React, { Component } from "react";
import { Route, Switch } from "react-router-dom";
import Admin from "./Admin";
import AddAdmin from "./AddAdmin";
import RemoveAdmin from "./RemoveAdmin";
import AddPhone from "./AddPhone";
import DeletePhone from "./DeletePhone";
import EditPhone from "./EditPhone";

class AdminRoutes extends Component {
  render() {
    return (
      <Switch>
        <Route exact path="/admin" component={Admin} />
        <Route path="/admin/add-administrator" component={AddAdmin} />
        <Route path="/admin/remove-administrator" component={RemoveAdmin} />
        <Route path="/admin/add-phone" component={AddPhone} />
        <Route path="/admin/edit-phone" component={EditPhone} />
        <Route path="/admin/delete-phone" component={DeletePhone} />
        <Route path="/admin/delete-phone" component={DeletePhone} />
      </Switch>
    );
  }
}

export default AdminRoutes;

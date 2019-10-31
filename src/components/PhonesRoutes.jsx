import React, { Component } from "react";
import PhoneMenu from "./PhoneMenu";
import SamsungPage from "./phone_collection_pages/SamsungPage";
import IPhonePage from "./phone_collection_pages/IPhonePage";
import HuaweiPage from "./phone_collection_pages/HuaweiPage";
import MixedPhones from "./pages/MixedPhones";
import { Switch, Route } from "react-router-dom";
import PhoneSpecifications from "./PhoneSpecifications";
import GooglePage from "./phone_collection_pages/GooglePage";
import SonyPage from "./phone_collection_pages/SonyPage";

class PhonesRoutes extends Component {
  state = {
    paths: [
      {
        path: 'samsung',
        component: SamsungPage
      },
      {
        path: 'huawei',
        component: HuaweiPage
      },
      {
        path: 'apple',
        component: IPhonePage
      },
      {
        path: 'sony',
        component: SonyPage
      },
      {
        path: 'google',
        component: GooglePage
      }
    ]
  }
  render() {
    var cpath;
    var ccomponent;
    return (
      <section className="py-5">
        <div className="container">
          <PhoneMenu />
          <div className="row text-center text-lg-left" />
          <Switch>
            <Route exact path="/phones" component={MixedPhones} />
            {this.state.paths.map(companyPath => {
              cpath = '/phones/' +  companyPath.path;
              ccomponent = companyPath.component;
              return <Route path={cpath} component={ccomponent} key={"undefined"} />
            })}
            <Route path="/phones/:id" component={PhoneSpecifications}/>
          </Switch>
        </div>
      </section>
    );
  }
}

export default PhonesRoutes;

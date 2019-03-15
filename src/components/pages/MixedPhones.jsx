import React from "react";
import SamsungPage from "./SamsungPage";
import IPhonePage from "./IPhonePage";
import HuaweiPage from "./HuaweiPage";

export default function MixedPhones() {
  return (
    <React.Fragment>
      <h1 className="my-4 text-center text-lg-left">Phones</h1>
      <SamsungPage />
      <IPhonePage />
      <HuaweiPage />
    </React.Fragment>
  );
}

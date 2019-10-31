import React from "react";
import Carousel from "../../carousel/Carousel";
import MixedPhones from "../MixedPhones";

export default function Home() {
  return (
    <div>
      <Carousel />
      <div className="container" style={{ paddingTop: "2%" }}>
        <MixedPhones />
      </div>
    </div>
  );
}

import React from "react";

export default function Carousel() {
  return (
    <header>
      <div
        id="carouselExampleIndicators"
        className="carousel slide"
        data-ride="carousel"
      >
        <ol className="carousel-indicators">
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="0"
            className="active"
          />
          <li data-target="#carouselExampleIndicators" data-slide-to="1" />
          <li data-target="#carouselExampleIndicators" data-slide-to="2" />
        </ol>
        <div className="carousel-inner" role="listbox">
          <div
            className="carousel-item active"
            style={{
              backgroundImage: `url(${require("../../half-sliders/iphone-11-pro.jpg")})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3 className="carouselItem">iPhone 11 Pro</h3>
              <p className="carouselItem">
                Pro cameras. Pro display. Pro performance.{" "}
              </p>
            </div>
          </div>
          <div
            className="carousel-item"
            style={{
              backgroundImage: `url(${require("../../half-sliders/samsung-galaxy-fold.png")})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3 className="carouselItem">A device unlike any before.</h3>
              <p className="carouselItem">
                A new dawn in display technology: the foldable Infinity Flex
                Display.
              </p>
            </div>
          </div>
          <div
            className="carousel-item"
            style={{
              backgroundImage: `url(${require("../../half-sliders/google-pixel-4.jpg")})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3 className="carouselItem">
                Capture the twinkle, twinkle just right.
              </h3>
              <p className="carouselItem">
                Studio-like photos. Without the studio.
              </p>
            </div>
          </div>
        </div>
        <a
          className="carousel-control-prev"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="prev"
        >
          <span className="carousel-control-prev-icon" aria-hidden="true" />
          <span className="sr-only">Previous</span>
        </a>
        <a
          className="carousel-control-next"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="next"
        >
          <span className="carousel-control-next-icon" aria-hidden="true" />
          <span className="sr-only">Next</span>
        </a>
      </div>
    </header>
  );
}

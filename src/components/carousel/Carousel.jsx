import React from 'react'

export default function Carousel () {
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
          <li data-target="#carouselExampleIndicators" data-slide-to="1"/>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"/>
        </ol>
        <div className="carousel-inner" role="listbox">
          <div
            className="carousel-item active"
            style={{
              backgroundImage: `url(${require('../../half-sliders/iphone11pro.jpg')})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3>iPhone 11 Pro</h3>
              <p>
                Pro cameras. Pro display. Pro performance.{' '}
              </p>
            </div>
          </div>
          <div
            className="carousel-item"
            style={{
              backgroundImage: `url(${require('../../half-sliders/note10Carousel.jpg')})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3>Next level power.</h3>
              <p>
                Experience that’s like a computer, a gaming console, a movie-tech camera,
                and an intelligent pen, all in one device.
              </p>
            </div>
          </div>
          <div
            className="carousel-item"
            style={{
              backgroundImage: `url(${require('../../half-sliders/mate20Pro.jpg')})`
            }}
          >
            <div className="carousel-caption d-none d-md-block">
              <h3>Welcome to a Higher Intelligence</h3>
              <p>
                Limitless human imagination - that's the inspiration for the
                Huawei Mate 20 Pro
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
          <span className="carousel-control-prev-icon" aria-hidden="true"/>
          <span className="sr-only">Previous</span>
        </a>
        <a
          className="carousel-control-next"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="next"
        >
          <span className="carousel-control-next-icon" aria-hidden="true"/>
          <span className="sr-only">Next</span>
        </a>
      </div>
    </header>
  )
}

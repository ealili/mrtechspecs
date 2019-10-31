import React from "react";

export default function About() {
  return (
    <React.Fragment>
      <div id="contact" className="container bg-grey">
        <h2 className="text-center">CONTACT</h2>
        <br />
        <div className="row">
          <div className="col-sm-5">
            <p>
              <span className="fa fa-info" /> Contact us and we'll get back to
              you within 24 hours.
            </p>
            <p>
              <span className="fa fa-map-marker" /> Tetovo, MK
            </p>
            <p>
              <span className="fa fa-phone" /> +389 75 243 111
            </p>
            <p>
              <span className="fa fa-envelope" /> contact@mrtechspecs.com
            </p>
          </div>
          <div className="col-sm-7 slideanim">
            <div className="row">
              <div className="col-sm-6 form-group">
                <input
                  className="form-control"
                  id="name"
                  name="name"
                  placeholder="Name"
                  type="text"
                  required
                />
              </div>
              <div className="col-sm-6 form-group">
                <input
                  className="form-control"
                  id="email"
                  name="email"
                  placeholder="Email"
                  type="email"
                  required
                />
              </div>
            </div>
            <textarea
              className="form-control"
              id="comments"
              name="comments"
              placeholder="Comment"
              rows="5"
            />
            <br />
            <div className="row">
              <div className="col-sm-12 form-group">
                <button className="btn btn-default pull-right" type="submit">
                  Send
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="d-flex justify-content-center container">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1226.6580832838779!2d20.960420127071096!3d41.987722882905395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDHCsDU5JzE2LjMiTiAyMMKwNTcnNDAuOSJF!5e1!3m2!1sen!2smk!4v1547920424887"
          width="90%"
          height="450"
          frameBorder="0"
          style={{ border: "0", position: "center" }}
          allowFullScreen
          title="iframe"
        />
      </div>
      <br />
    </React.Fragment>
  );
}

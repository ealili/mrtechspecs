import React from "react";
import { Link } from "react-router-dom";

export default function PhoneMenu() {
  return (
    <nav className="nav nav-pills nav-justified">
      <Link to="/phones/samsung" className="nav-item nav-link">
        Samsung
      </Link>
      <Link to="/phones/iPhone" className="nav-item nav-link">
        iPhone
      </Link>
      <Link to="/phones/huawei" className="nav-item nav-link">
        Huawei
      </Link>
      <Link to="/phones/google" className="nav-item nav-link">
        Google
      </Link>
      <Link to="/phones/sony" className="nav-item nav-link">
        Sony
      </Link>
    </nav>
  );
}

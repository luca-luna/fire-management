import 'mdb-react-ui-kit/dist/css/mdb.min.css';
import "@fortawesome/fontawesome-free/css/all.min.css";
import React, { useReducer, useState } from 'react';
import {
  MDBNavbar,
  MDBNavbarNav,
  MDBNavbarItem,
  MDBNavbarLink,
  MDBNavbarToggler,
  MDBContainer,
  MDBIcon,
  MDBCollapse,
  MDBBtn
} from 'mdb-react-ui-kit';

const formReducer = (state, event) => {
  return {
    ...state,
    [event.target.name]: event.target.value
  }
 }

export default function App() {
  const [formData, setFormData] = useReducer(formReducer, {});
  const [showBasic, setShowBasic] = useState(false);
  const [submitting, setSubmitting] = useState(false);

  const handleSubmit = event => {
    event.preventDefault();
    setSubmitting(true);

    setTimeout(() => {
      setSubmitting(false);
    }, 3000)
  }

  return (
    <>
    <header>
      <div
        className='p-5 text-center bg-image'
        style={{ backgroundImage: "url('https://cdn.pixabay.com/photo/2018/08/12/15/29/hintersee-3601004_1280.jpg')", height: '300px' }}
      >
        <div className='mask' style={{ backgroundColor: 'rgba(0, 0, 0, 0.6)' }}>
          <div className='d-flex justify-content-center align-items-center h-100'>
            <div className='text-white'>
              <h1 className='mb-3'>Fire Management Data Queries</h1>
              <h4 className='mb-3'>This website is being built as an academic excercise</h4>
              {/* <MDBBtn tag="a" outline size="lg">
                Call to action
              </MDBBtn> */}
            </div>
          </div>
        </div>
      </div>
    </header>

    <div className="wrapper">
    <h1>Report Options</h1>
    <form onSubmit={handleSubmit}>
    <fieldset>
      <label>
        <p>Fire Name</p>
        <input type="text" name="fire-name" id="fire-name" onChange={setFormData}/>
      </label>
    </fieldset>
    <fieldset>
      <label>
        <p>Date Start</p>
        <input type="date" name="date-start" id="date-start" onChange={setFormData}/>
      </label>
    </fieldset>
    <fieldset>
      <label>
        <p>Date End</p>
        <input type="date" name="date-end" id="date-end" onChange={setFormData}/>
      </label>
    </fieldset>
    <button type="submit">Generate</button>
    </form>
    </div>
    </>
  );
}
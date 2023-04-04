import 'mdb-react-ui-kit/dist/css/mdb.min.css';
import "@fortawesome/fontawesome-free/css/all.min.css";
import React, { useState, useEffect } from 'react';
import { Table } from 'react-bootstrap';

const App = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch('http://localhost:9000/pgAPI')
      .then(res => res.json())
      .then(result => {
        setData(result);
      });
  }, []);

return (
    <div className="App">
				<header>
					<div className='p-5 text-center bg-image' style={{ backgroundImage: "url('https://cdn.pixabay.com/photo/2018/08/12/15/29/hintersee-3601004_1280.jpg')", height: '400px' }}>
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
					<form>
					<fieldset>
					<label>
						<p>Fire Name</p>
						<input type="text" name="fire-name" id="fire-name"/>
					</label>
					</fieldset>
					<fieldset>
					<label>
						<p>Date Start</p>
						<input type="date" name="date-start" id="date-start"/>
					</label>
					</fieldset>
					<fieldset>
					<label>
						<p>Date End</p>
						<input type="date" name="date-end" id="date-end"/>
					</label>
					</fieldset>
					<button type="submit">Generate</button>
					</form>
					</div>

                    <Table striped bordered hover variant="dark">
                    <thead>
                        <tr>
                        <th>OBJECTID</th>
                        <th>GLOBALID</th>
                        <th>FIRENAME</th>
                        <th>CN</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data.map(item => (
                            <tr key={item.OBJECTID}>
                            <td>{item.OBJECTID}</td>
                            <td>{item.GLOBALID}</td>
                            <td>{item.FIRENAME}</td>
                            <td>{item.CN}</td>
                            </tr>
                        ))}
                    </tbody>
                    </Table>
            </div>
  );
};

export default App;
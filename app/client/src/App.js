import 'mdb-react-ui-kit/dist/css/mdb.min.css';
import "@fortawesome/fontawesome-free/css/all.min.css";
import React, { useState, useEffect } from 'react';
import { Table } from 'react-bootstrap';
import "react-datepicker/dist/react-datepicker.css";

const App = () => {
  const [data, setData] = useState([]);
  const [formData, setFormData] = useState({
    name: "",
    start: "",
    end: ""
  });

  const handleSubmit = (e) => {
    e.preventDefault();
    const fetchData = async () => {
      const result = await fetch(`http://localhost:9000/pgAPI?name=${formData.name}&start=${formData.start}&end=${formData.end}`);
      const data = await result.json();
      setData(data);
    };
    fetchData();
  }

  const [selectedDate, setSelectedDate] = useState(null);

return (
    <div className="App">
				<header>
					<div className='p-5 text-center bg-image' style={{ backgroundImage: "url('https://cdn.pixabay.com/photo/2018/08/12/15/29/hintersee-3601004_1280.jpg')", height: '400px' }}>
						<div className='mask' style={{ backgroundColor: 'rgba(0, 0, 0, 0.6)' }}>
						<div className='d-flex justify-content-center align-items-center h-100'>
							<div className='text-white'>
							<h1 className='mb-3'>Fire Management Data Queries</h1>
							<h4 className='mb-3'>This website is being built as an academic excercise</h4>
							</div>
						</div>
						</div>
					</div>
					</header>
					<div className="wrapper">
					<h1>Report Options</h1>
					<form onSubmit={handleSubmit}>
					<fieldset>
						<div class="form-group row">
							<label class="col-sm-1 col-form-label" for="fire-name">Fire Name</label>
							<div class="col-sm-2">
								<input type="text" name="fire-name" id="fire-name" value={formData.name} onChange={(e) => setFormData({...formData, name: e.target.value})}/>
							</div>
						</div>
					</fieldset>
					
					<fieldset>
						<div class="form-group row">
							<label class="col-sm-1 col-form-label" for="date-start">Date Start</label>
							<div class="col-sm-2">
								<input type="int" name="date-start" pattern="[0-9]{4}" placeholder="YYYY" id="date-start" value={formData.start} onChange={(e) => setFormData({...formData, start: e.target.value})}/>		
							</div>
						</div>
					</fieldset>
					<fieldset>
						<div class="form-group row">
							<label class="col-sm-1 col-form-label" for="date-end">Date End</label>
							<div class="col-sm-2">
								<input type="int" name="date-end" pattern="[0-9]{4}" placeholder="YYYY" id="date-end" value={formData.end} onChange={(e) => setFormData({...formData, end: e.target.value})}/>						
							</div>
						</div>
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
						<th>FIREYEAR</th>
						<th>STATCAUSE</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data.map(item => (
                            <tr key={item.OBJECTID}>
                            <td>{item.OBJECTID}</td>
                            <td>{item.GLOBALID}</td>
                            <td>{item.FIRENAME}</td>
                            <td>{item.CN}</td>
							<td>{item.FIREYEAR}</td>
							<td>{item.STATCAUSE}</td>
                            </tr>
                        ))}
                    </tbody>
                    </Table>
            </div>
  );
};

export default App;
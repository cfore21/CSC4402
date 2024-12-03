import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import axios from 'axios'; //library to make http requests
import AddStudent from './addstudents';
import DeleteStudent from './deletestudents';
import GetStudentsFromParent from './getStudentsFromParents';
import UpdateGuardianPhoneNumber from './UpdateGuardianPhone';
import UpdateClub from './updateclubs';

function App() {
  const [message, setMessage] = useState('');

  useEffect(() => {
    // API call to http://localhost:8080/api/hello
    axios.get('http://localhost:8080/api/hello')
        .then(response => setMessage(response.data))
        .catch(error => setMessage('Error connecting to backend and database.\nPlease make sure backend is up and running at ' + 
                                    'http://localhost:8080.\nIf it is not, open the backend4402 folder in IntelliJ (or another IDE) and ' + 
                                    'run the main class in Example4402Application.'));
}, []);

   return (
    <Router>
      <div style={containerStyle}>
        <h1>Example High Database</h1>
        <div style={example}>{message}</div>
        <div><p></p></div>

        <nav>
          <p>Actions:</p>
          <Link to="/addstudents">Add Students</Link> <br></br>
          <Link to="/deletestudents">Delete Students</Link> <br></br>
          <Link to="/getstudentsfromparent">Find Parent's Children</Link> <br></br>
          <Link to="/updateparentphonenumber">Update Parent's Phone Number</Link> <br></br>
          <Link to="/updateclubs">Update Club Information</Link> <br></br>
        </nav>
        <div><p></p></div>

        <Routes>
          <Route path="/" element={
            <p></p>
          } />

          <Route path="/addstudents" element={<AddStudent />} /> 
          <Route path="/deletestudents" element={<DeleteStudent />} /> 
          <Route path="/getstudentsfromparent" element={<GetStudentsFromParent />} /> 
          <Route path="/updateparentphonenumber" element={<UpdateGuardianPhoneNumber />} /> 
          <Route path="/updateclubs" element={<UpdateClub />} />

        </Routes>
      </div>
    </Router>
  );
}


// Some basic styles for the page
const containerStyle = {
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  fontFamily: 'monospace',
  fontSize: '1.2rem',
  textAlign: 'center',
  marginTop: '50px',
};

const textAreaStyle = {
  width: '30%',       // Set a fixed width
  minHeight: '10%',   // Set a minimum height
  padding: '10px',
  margin:'20px',
  resize: 'none',      // Disable resizing
  overflowY: 'auto',   // Enable vertical scrolling if needed
};

const example = {
  width: '40%',       // Set a fixed width
  minHeight: '10%',   // Set a minimum height
  maxWidth: '50%',
  padding: '10px',
  resize: 'none',      // Disable resizing
  fontSize: '1rem',
};

const buttonStyle = {
  backgroundColor: '#007bff',
  color: 'white',
  padding: '10px 20px',
  border: 'none',
  borderRadius: '4px',
  cursor: 'pointer',
};

export default App;

import React, { useState, useEffect } from 'react';
import axios from 'axios';

function AddStudent() {
    const [student, setStudent] = useState({
      name: '',
      dateofbirth: '',
      schoolyear: '',
      email: '',
      GPA: '',
      address: ''
    });

    const handleChange = (e) => {
        setStudent({
          ...student,
          [e.target.name]: e.target.value
        });
      };

      const handleSubmit = (e) => {
        e.preventDefault();
        axios.post('http://localhost:8080/api/addstudents', student, {
          headers: { 'Content-Type': 'application/json' }
        })
        .then(response => {
          console.log('Student added', response.data);
        })
        .catch(error => {
          console.error('Error', error);
        });
      };
      return (
        <div>
          <h2>Add New Student</h2>
          <form onSubmit={handleSubmit}>
          <div>
              <label>ID:</label>
              <input
                type="number"
                name="id"
                value={student.id}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <label>Name:</label>
              <input
                type="text"
                name="name"
                value={student.name}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <label>Date of Birth:</label>
              <input
                type="date"
                name="dateofbirth"
                value={student.dateofbirth}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <label>School Year:</label>
              <input
                type="number"
                name="schoolyear"
                value={student.schoolyear}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <label>Email:</label>
              <input
                type="text"
                name="email"
                value={student.email}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <label>GPA:</label>
              <input
                type="number"
                name="GPA"
                value={student.GPA}
                onChange={handleChange}
                required
                step="0.1"
                min="0"
                max="4"
              />
            </div>
            <div>
              <label>Address:</label>
              <input
                type="text"
                name="address"
                value={student.address}
                onChange={handleChange}
                required
              />
            </div>
            <button type="submit">Add Student</button>
          </form>
        </div>
      );
    } 

export default AddStudent;
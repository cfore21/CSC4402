import React, { useState, useEffect } from 'react';
import axios from 'axios';
 
   function DeleteStudent() {
    const [studentId, setStudentId] = useState('');
    const [message, setMessage] = useState('');

    const handleDelete = (e) => {
        e.preventDefault();
        axios.delete(`http://localhost:8080/api/deletestudents/${studentId}`)
    };
    return (
        <div>
            <h2>Delete Student</h2>
            <form onSubmit={handleDelete}>
                <div>
                    <label>Student ID:</label>
                    <input
                        type="number"
                        name="studentId"
                        value={studentId}
                        onChange={(e) => setStudentId(e.target.value)}
                    />
                </div>
                <button type="submit">Delete Student</button>
            </form>
            <div>
                <p>{message}</p>
            </div>
        </div>
    );
}
export default DeleteStudent;
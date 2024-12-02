import React, { useState } from 'react';
import axios from 'axios';

function GetStudentsFromParent() {
    const [guardianID, setGuardianID] = useState('');
    const [students, setStudents] = useState([]);

    // Handles guardianID state change
    const handleChange = (e) => {
        setGuardianID(e.target.value);
    };

    // Handles form submission
    const handleSubmit = (e) => {
        e.preventDefault();

        axios
            .get(`http://localhost:8080/api/students/parent/${guardianID}`)
            .then((response) => {
                console.log('Students found:', response.data);
                response.data.forEach((student, index) => console.log(`Student ${index + 1}:`, student));
                setStudents(response.data);
            })
            .catch((error) => {
                console.error('Error:', error);
                alert('Failed to fetch students. Please try again.');
            });
    };

    return (
        <div>
            <h2>Get Students by Guardian ID</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="guardianID">Guardian ID:</label>
                    <input
                        type="number"
                        id="guardianID"
                        name="guardianID"
                        value={guardianID} // Updated to match state variable name
                        onChange={handleChange}
                        required
                    />
                </div>
                <button type="submit">Get Students</button>
            </form>

            {/* Render students list if available */}
            {students.length > 0 && (
                <div>
                    <h3>Students Found:</h3>
                    <ul>
                    {students.map((Student) => {
                        console.log(Student); // Log the student object to inspect its structure
                        return (
                            <li key={Student.id}>
                                {Student.NAME} (ID: {Student.ID || 'No ID'})
                            </li>
                        );
                    })}
                    </ul>
                </div>
            )}
        </div>
    );
}

export default GetStudentsFromParent;

import React, { useState, useEffect } from 'react';
import axios from 'axios';

function UpdateClub() {
    const [clubs, setClubs] = useState([]); 
    const [club, setClub] = useState({
      id: '',
      name: '',
      schedule: '',
      teacher_id: '',
    });
    const [error, setError] = useState('');

    useEffect(() => {
        axios.get('http://localhost:8080/api/clubs')  
            .then(response => {
                setClubs(response.data);  
            })
            .catch(err => {
                setError('error getting clubs');
            });
    }, []);

    const handleChange = (e) => {
        setClub({
            ...club,
            [e.target.name]: e.target.value,
        });
    };


    const handleSubmit = (e) => {
        e.preventDefault();

        if (!club.id) {
            alert('Please enter a valid club ID');
            return;
        }

        

        const clubId = Number(club.id); 
        axios.patch(`http://localhost:8080/api/updateclubs/${clubId}`, {
            name: club.name,
            schedule: club.schedule,
            teacher_id: club.teacher_id,
        })
        .then(response =>{
            axios.get('http://localhost:8080/api/clubs')
            .then(response => {
                setClubs(response.data);  
                setClub({
                    id: '',
                    name: '',
                    schedule: '',
                    teacher_id: '',
                });  
            })
        })
            .catch(error => {
                console.error('error updating club', error);
            });
    };

    if (error) return <div>{error}</div>;

    return (
        <div>
            <h2>Update Club</h2>
            
        <div>
            <table border="0">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Schedule</th>
                        <th>Teacher ID</th>
                        <th>Teacher</th>
                    </tr>
                </thead>
                <tbody>
                    {clubs.map((club) => (
                        <tr key={club.ID}>
                            <td>{club.ID}</td>
                            <td>{club.CLUB_NAME}</td>
                            <td>{club.SCHEDULE}</td>
                            <td>{club.TEACHER_ID}</td>
                            <td>{club.TEACHER_NAME}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
        <br></br>

            <form onSubmit={handleSubmit}>
                <div>
                    <label>Club ID (required):</label>
                    <input
                        type="number"
                        name="id"
                        value={club.id}
                        onChange={handleChange}
                        required
                    />
                </div>

                <div>
                    <label>Club Name:</label>
                    <input
                        type="text"
                        name="name"
                        value={club.name}
                        onChange={handleChange}
                    />
                </div>

                <div>
                    <label>Schedule:</label>
                    <input
                        type="text"
                        name="schedule"
                        value={club.schedule}
                        onChange={handleChange}
                    />
                </div>

                <div>
                    <label>Teacher ID:</label>
                    <input
                        type="number"
                        name="teacher_id"
                        value={club.teacher_id}
                        onChange={handleChange}
                    />
                </div>
                <br></br>
                <div style={{ marginBottom: '20px' }}>
                    <button type="submit">Submit</button>
                </div>
                
            </form>
        </div>
    );
}

export default UpdateClub;

import React, { useState } from 'react';
import axios from 'axios';

function UpdateGuardianPhoneNumber() {
    const [guardianID, setGuardianID] = useState('');
    const [phoneNumber, setPhoneNumber] = useState('');
    const [message, setMessage] = useState();

    //Handle guardianID statechange
    const handleGuardianIDChange = (e) => {
        setGuardianID(e.target.value);
    };

    //handle phone number
    const handlePhoneNumberChange = (e) => {
        setPhoneNumber(e.target.value);
    };
    //Handle form submission
    const handleSubmit = (e) => {
        e.preventDefault();

        if(!guardianID || !phoneNumber){
            alert('Please fill out both fields.');
            return;
        }

        //Make the PUT request
        axios.put(`http://localhost:8080/api/${guardianID}/phone_number`, {phoneNumber})
        .then((response) => {
            console.log('Response: ', response.date);
            setMessage('Phone number updated successfully.');
        })
        .catch((error) => {
            console.error('Error: ', error);
            setMessage('Failed to update phone number.')
        });
    };
    return (
        <div>
            <h2>Update Guardian Phone Number</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="guardianID">Guardian ID:</label>
                    <input
                        type="number"
                        id="guardianID"
                        name="guardianID"
                        value={guardianID}
                        onChange={handleGuardianIDChange}
                        required
                    />
                </div>
                <div>
                    <label htmlFor="phoneNumber">New Phone Number:</label>
                    <input
                        type="text"
                        id="phoneNumber"
                        name="phoneNumber"
                        value={phoneNumber}
                        onChange={handlePhoneNumberChange}
                        required
                    />
                </div>
                <button type="submit">Update Phone Number</button>
            </form>

            {/* Display message based on the result of the request */}
            {message && <div>{message}</div>}
        </div>
    );
}

export default UpdateGuardianPhoneNumber;
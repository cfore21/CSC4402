package com.example.backend4402;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class DatabaseService {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public DatabaseService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Returns an empty list for DDL statements and a list of results for DML statements
    public List<Map<String, Object>> executeSQLStatement(String sqlStatement) {
        List<Map<String, Object>> result = Collections.emptyList();
        try{
            result = jdbcTemplate.queryForList(sqlStatement); // For DML (SELECT) statements
            return result;
        }catch(Exception e){
            try{
                jdbcTemplate.execute(sqlStatement); // Execute DDL statement
            }catch(Exception x){
                e.printStackTrace();
            }
            return result;
        }
    }

    public void insertStudent(Map<String, Object> student) {
        String sql = "INSERT INTO Student (id, name, dateofbirth, schoolyear, email, GPA, address) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        try {
            System.out.println("data being sent is: " + student);
            
            jdbcTemplate.update(sql, 
                student.get("id"),
                student.get("name"), 
                student.get("dateofbirth"), 
                student.get("schoolyear"), 
                student.get("email"), 
                student.get("GPA"), 
                student.get("address"));
            
            System.out.println("insert successful");
        } catch (Exception e) {
            System.err.println("error" + e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void deleteStudent(int id) {
        String sql = "DELETE FROM Student WHERE id = ?";
        try {
            System.out.println("deleting id: " + id);

            jdbcTemplate.update(sql, id);

            System.out.println("deleted");
        } catch (Exception e) {
            System.err.println("Error during deletion " + e.getMessage());
            e.printStackTrace();
        }
    }
     //return all students belonging to a specific parent
     public List<Map<String, Object>> getStudentsFromParent(int guardianID) {
        List<Map<String, Object>> result = Collections.emptyList();
        String sql = "SELECT s.* FROM Student s JOIN Parents p ON (s.id = p.student_id) WHERE p.guardian_id = ?";
        try {
            result = jdbcTemplate.queryForList(sql, guardianID);
            return result;
        } catch (Exception e) {
            System.err.println("Error retrieving students: " + e.getMessage());
            e.printStackTrace();
            return result;
        }
    }

    
	    public void updateClub(int id, Map<String, Object> club) {
        String sql = "UPDATE Club SET ";
        List<Object> params = new ArrayList<>();
        
        try {
            System.out.println("data being sent is: " + club);

            
            if(club.containsKey("name")){
                sql += "name = ?, ";
                params.add(club.get("name"));
            }
            if(club.containsKey("schedule")){
                sql += "schedule = ?, ";
                params.add(club.get("schedule"));
            }
            if(club.containsKey("teacher_id")){
                sql += "teacher_id = ?, ";
                params.add(club.get("teacher_id"));
            }

            sql = sql.substring(0,sql.length()-2);
            sql += (" WHERE id = ?");
            params.add(id);


            jdbcTemplate.update(sql, params.toArray());

            
            
            System.out.println("update successful");
        } catch (Exception e) {
            System.err.println("error" + e.getMessage());
            e.printStackTrace();
        }
    }

    public void updateGuardianPhoneNumber(int guardianID, String newNumber) {
        String sql = "UPDATE Guardian SET phone_number = ? WHERE id = ?";

        try {
            jdbcTemplate.update(sql, newNumber, guardianID);
            System.out.println("Updating phone number for Guardian ID: " + guardianID + " to " + newNumber);
        }
        catch (Exception e) {
            System.err.println("Error updating phone number: " + e.getMessage());
            e.printStackTrace();
        }
    }
}



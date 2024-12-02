package com.example.backend4402;

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

}

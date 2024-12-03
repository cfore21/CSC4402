package com.example.backend4402;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyService {
    private final DatabaseService databaseService;

    @Autowired
    public MyService(DatabaseService databaseService) {
        this.databaseService = databaseService;
    }

    public List<Map<String, Object>> executeSql(String statement) {
        return databaseService.executeSQLStatement(statement);
    }

    public void addStudent(Map<String, Object> student) {
        databaseService.insertStudent(student);  
    }

    public void deleteStudent(int id) {
        databaseService.deleteStudent(id);  
    }
    //Add the getStudentsFromParent Method to find Parent's Children
    public List<Map<String, Object>> getStudentsFromParent(int guardianID){
        return databaseService.getStudentsFromParent(guardianID);
    }
    //Add the updateGuardianPhoneNumber method to update parents number
    public void updateGuardianPhoneNumber(int guardianID, String newNumber){
        databaseService.updateGuardianPhoneNumber(guardianID, newNumber);
    }

    public void updateClub(int id, Map<String, Object> club) {
        databaseService.updateClub(id, club);  
    }

    public List<Map<String, Object>>getClubs(){
        return databaseService.getClubs();
    }
}

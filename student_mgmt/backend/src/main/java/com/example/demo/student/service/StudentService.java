package com.example.demo.student.service;

import com.example.demo.student.entity.Student;

import java.util.List;
import java.util.Optional;

public interface StudentService {
    List<Student> getAllStudents();

    Optional<Student> getStudentById(Long studentId);

    Student addOrUpdateStudent(Student student);

    void deleteStudent(Long studentId) throws IllegalArgumentException;
}
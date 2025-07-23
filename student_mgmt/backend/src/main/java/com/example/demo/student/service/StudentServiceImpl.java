package com.example.demo.student.service;


import com.example.demo.student.entity.Student;
import com.example.demo.student.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Optional<Student> getStudentById(Long studentId) {
        return studentRepository.findById(studentId);
    }

    @Override
    public Student addOrUpdateStudent(Student student) {
        if (student.getStudentName() == null || student.getRollno() == null ||
                student.getMobile() == null || student.getCourse() == null) {
            throw new IllegalArgumentException("All fields are required");
        }
        return studentRepository.save(student);
    }

    @Override
    public void deleteStudent(Long studentId) throws IllegalArgumentException {
        if (!studentRepository.existsById(studentId)) {
            throw new IllegalArgumentException("Student with ID " + studentId + " not found");
        }
        studentRepository.deleteById(studentId);
    }

}


package com.student.service;

import java.util.List;

import com.student.entity.Student;

public interface StudentService {
    void saveStudent(Student student);

    List<Student> getAllStudents();

    Student getStudentById(Integer id);

    void deleteStudentById(Integer id);
}
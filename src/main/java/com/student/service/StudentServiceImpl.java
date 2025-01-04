package com.student.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.entity.Student;
//import com.student.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentRepository studentRepository;

    @Override
    public void saveStudent(Student student) {
        if (student.getId() == null) {
            studentRepository.save(student);
        } else {
            Student studentUpdate = studentRepository.findById(student.getId()).get();
            studentUpdate.setName(student.getName());
            studentUpdate.setRollNo(student.getRollNo());
            studentUpdate.setEmailId(student.getEmailId());
            studentRepository.save(studentUpdate);
        }
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Student getStudentById(Integer id) {
        return studentRepository.findById(id).get();

    }

    @Override
    public void deleteStudentById(Integer id) {
        studentRepository.deleteById(id);
    }
}

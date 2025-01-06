package com.student.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.student.entity.Student;
@Repository
public interface StudentRepository  extends JpaRepository<Student, Integer> {

    @Query(value = "SELECT * FROM Student ORDER BY id ASC LIMIT 3", nativeQuery = true)
    List<Student> findTopStudents();

}

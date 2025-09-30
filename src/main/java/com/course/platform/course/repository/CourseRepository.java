package com.course.platform.course.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.course.platform.course.dto.CourseListDto;
import com.course.platform.course.dto.CourseSummaryDto;
import com.course.platform.course.model.Course;

public interface CourseRepository extends JpaRepository<Course, Integer>{
    @Query("""
        SELECT new com.course.platform.course.dto.CourseListDto(
            c.courseId,
            c.title,
            c.description,
            c.price,
            c.teacher.name,
            c.imageUrl
        )
        FROM Course c
        ORDER BY c.courseId DESC
    """)
    List<CourseListDto> findList();

    @Query("SELECT new "
        + "com.course.platform.course.dto.CourseSummaryDto( "
        + "c.id, c.title, c.description"
        + " )"
        + " FROM Course c"
        )
	List<CourseSummaryDto> listCourseSummary();
}

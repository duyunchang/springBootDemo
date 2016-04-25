package sample.data.jpa.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import sample.data.jpa.domain.entity.Student;
import sample.data.jpa.dynamicDataSource.TargetDataSource;


@Service
public class StudentService  {
	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	/**
     * 指定数据源
     *
     * @return
     * @author SHANHY
     * @create  2016年1月24日
     */
    @TargetDataSource(name="ds1")
    public List<Student> getList(){
        String sql = "SELECT id,name,sumScore,avgScore, age   from student";
        return (List<Student>) jdbcTemplate.query(sql, new RowMapper<Student>(){

            @Override
            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
                Student stu = new Student();
                stu.setId(rs.getInt("id"));
                stu.setAge(rs.getInt("age"));
                stu.setName(rs.getString("name"));
                stu.setSumScore(rs.getString("sumScore"));
                stu.setAvgScore(rs.getString("avgScore"));
                return stu;
            }

        });
    }
    
    
//    /**
//     * 指定数据源
//     *
//     * @return
//     * @author SHANHY
//     * @create  2016年1月24日
//     */
//    @TargetDataSource(name="ds2")
//    public List<Student> getListByDs2(){
//        String sql = "SELECT ID,NAME,SCORE_SUM,SCORE_AVG, AGE   FROM STUDENT";
//        return (List<Student>) jdbcTemplate.query(sql, new RowMapper<Student>(){
//
//            @Override
//            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
//                Student stu = new Student();
//                stu.setId(rs.getInt("ID"));
//                stu.setAge(rs.getInt("AGE"));
//                stu.setName(rs.getString("NAME"));
//                stu.setSumScore(rs.getString("SCORE_SUM"));
//                stu.setAvgScore(rs.getString("SCORE_AVG"));
//                return stu;
//            }
//
//        });
//    }
    
    
}

package sample.data.jpa.domain.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * 学生实体
 */
//@Entity

public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5883228573206827468L;
	//@Id
	//@GeneratedValue
	private Integer id;
	//@Column(nullable = false)
	private String name;
	//@Column(nullable = false)
	private String sumScore;
	//@Column(nullable = false)
	private String avgScore;
	//@Column(nullable = false)
	private Integer age;

	public Student() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSumScore() {
		return sumScore;
	}

	public void setSumScore(String sumScore) {
		this.sumScore = sumScore;
	}

	public String getAvgScore() {
		return avgScore;
	}

	public void setAvgScore(String avgScore) {
		this.avgScore = avgScore;
	}

	public int getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sumScore=" + sumScore + ", avgScore=" + avgScore + ", age="
				+ age + "]";
	}

}

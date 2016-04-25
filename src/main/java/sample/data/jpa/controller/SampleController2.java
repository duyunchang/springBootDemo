/*
 * Copyright 2012-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package sample.data.jpa.controller;
/**
 * 返回的类可以变成字符串
 * */
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sample.data.jpa.domain.entity.Student;
import sample.data.jpa.service.StudentService;


@RestController
@EnableAutoConfiguration
@RequestMapping("/stu")
public class SampleController2 {
	private static final Logger logger = LoggerFactory.getLogger(SampleController2.class);
	
	@Autowired
	private StudentService studentService;

	@RequestMapping("/list")
	public List<Student> getStus(){
		 logger.info("第二个驱动...");
	     logger.info("从数据库读取Student集合");
	     System.out.println(studentService.getList().size());
	    return studentService.getList();
	}
}

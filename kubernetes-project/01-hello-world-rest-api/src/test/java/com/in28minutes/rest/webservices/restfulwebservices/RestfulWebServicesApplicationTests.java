package com.in28minutes.rest.webservices.restfulwebservices;

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestfulWebServicesApplicationTests {

	String message = "Hello World";
	MessageUtil messageUtil = new MessageUtil(message);
	
	@Test
	public void contextLoads() {
	}

}

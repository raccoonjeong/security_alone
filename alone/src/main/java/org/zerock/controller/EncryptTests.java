package org.zerock.controller;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.extern.log4j.Log4j;

@Log4j
public class EncryptTests {
	
	@Test
	public void testMaches() {
		String enStr = "$2a$10$aka7ozjcGktTs2i0T3Z8EuXMZDjz8tKLvNlAb1o6OZlAzyGxpxw36";
		String user = "1111";
		
		BCryptPasswordEncoder pwencoder = new BCryptPasswordEncoder();
		
		boolean matching = pwencoder.matches(user, enStr);
		
		System.out.println(matching);
	}
	
	@Test
	public void testEncrypt() {
		BCryptPasswordEncoder pwencoder = new BCryptPasswordEncoder();
		String str = "1111";
		String enStr = pwencoder.encode(str);
		System.out.println(enStr);
	}

}

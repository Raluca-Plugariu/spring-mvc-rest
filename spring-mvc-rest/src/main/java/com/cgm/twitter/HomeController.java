package com.cgm.twitter;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.cgm.builder.*;
import com.cgm.domain.*;
import com.cgm.dto.Response;

/**
 * Handles requests for the application home page.
 */
@RestController
public class HomeController {

	public static ArrayList<Message> messages = UserBuilder.allMessages;
	public static ArrayList<Message> userMessages = UserBuilder.userMessages;
	public static ArrayList<User> allUsers = UserBuilder.allUsers;
	public static ArrayList<User> userFriends = UserBuilder.userFriends;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView getMessages(@ModelAttribute("userMessages") Message message, ModelMap model) {
		model.put("postMessage", UserBuilder.aMessage());
		model.put("messages", messages);
		
		model.put("userMessage", userMessages);

		return new ModelAndView("home", "userMessages", UserBuilder.aMessage());
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")

	public @ResponseBody Message postMessages(@RequestBody Message message, HttpServletRequest request) {

		userMessages.add(message);

		// Create Response Object
		System.out.println("salll");
		return message;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)

	protected ModelAndView getSearchPage() throws Exception {
		ModelAndView model;
		model = new ModelAndView("search");
		return model;

	}

	@RequestMapping(value = "/search/{username}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView searchUser(@PathVariable("username") String username, ModelMap model) {
		for (User u : UserBuilder.allUsers) {
			System.out.println(username);
			System.out.println(u.getUsername());
			if (u.getUsername().equals(username))

				return new ModelAndView("search", "user", u.getUsername());
		}
		return new ModelAndView("search", "user", username + " notfound");
	}
	
	
	
	@RequestMapping(value = "/getUsers", method = RequestMethod.GET, produces = "application/json")

	public @ResponseBody ArrayList<User> getUser( HttpServletRequest request) {
		return allUsers;
	}
	
	@RequestMapping(value = "/getFriends", method = RequestMethod.GET, produces = "application/json")

	public @ResponseBody ArrayList<User> getFriends( HttpServletRequest request) {
		return userFriends;
	}
	
	@RequestMapping(value = "/friends", method = RequestMethod.GET)

	public ModelAndView getFriend( HttpServletRequest request) {
		return new ModelAndView("friends");
	}
	
	@RequestMapping(value = "/friends/{username}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView followUser(@PathVariable String username, ModelMap model) {
		for (User u : allUsers) {
			if (u.getUsername().equals(username)) {
				int flag = 1;
				for(int counter = 0; counter<userFriends.size(); counter++) {
					if(username.equals(userFriends.get(counter).getUsername()))
						flag = 0;
				}
				if(flag==1) {
				userFriends.add(u);
				return new ModelAndView("friends");
				}
		}}
		return new ModelAndView("/friends");
	}
	@RequestMapping(value = "/friends/unfollow/{username}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView unfollowUser(@PathVariable String username, ModelMap model) {
		for (User u : userFriends) {
			if (u.getUsername().equals(username)) {
				userFriends.remove(u);
				return new ModelAndView("friends");
		}}
		return new ModelAndView("friends");
	}
	
	
	

}

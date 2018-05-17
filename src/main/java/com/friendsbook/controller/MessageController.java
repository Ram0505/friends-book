package com.friendsbook.controller;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
 @Controller
 public class MessageController {
  
     // Find your Account Sid and Token at twilio.com/user/account
     public static final String ACCOUNT_SID = "ACf135e9be3abd3c4739dc87be7c175a8f";
     public static final String AUTH_TOKEN = "49565d50eb3212253d21e545604f7a7b";
     public static final String TWILIO_NUMBER = "+13203453946";

     
     @RequestMapping("/greeting")
     public String greeting() {
         sendSMS();
         return "greeting";
     }
     
 public void sendSMS() {
     try {
         TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
  
         // Build a filter for the MessageList
         List<NameValuePair> params = new ArrayList<NameValuePair>();
         params.add(new BasicNameValuePair("Body", "Your friendsbook account was logged in from a new browser please check"));
         params.add(new BasicNameValuePair("To", "+919963782963")); //Add real number here
         params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

         MessageFactory messageFactory = client.getAccount().getMessageFactory();
         Message message = messageFactory.create(params);
         System.out.println(message.getSid());
     } 
     catch (TwilioRestException e) {
         System.out.println(e.getErrorMessage());
     }
 
 }
 }


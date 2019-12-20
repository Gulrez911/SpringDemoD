package com.gul.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gul.entity.Message;

@Controller
public class HomeController {

	@Autowired
	JavaMailSender mailSender;

	@GetMapping("/")
	public ModelAndView view() {
		return new ModelAndView("index", "message", new Message());
	}

	@PostMapping("/send")
	public ModelAndView send(@ModelAttribute("messag") Message message) throws MessagingException {
		System.out.println(message.getTo() + ": " + message.getSubject() + ": " + message.getMessage());
		MimeMessage message2 = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message2, true);
		helper.setTo(message.getTo());
		helper.setSubject(message.getSubject());
		helper.setText(message.getMessage(), true);
		helper.setFrom("Gulrez_Farooqui");
		mailSender.send(message2);
		System.out.println("Send Successfully");
		return new ModelAndView("index", "message", new Message());
	}

}

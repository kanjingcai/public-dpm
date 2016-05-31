package com.dpm.prd.edition.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/edition")
public class EditionController {

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String index() {
		return "edition/index.page";
	}

}

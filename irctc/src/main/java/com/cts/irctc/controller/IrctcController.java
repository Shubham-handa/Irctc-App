package com.cts.irctc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.irctc.exception.ApplicationException;
import com.cts.irctc.model.TicketBooking;
import com.cts.irctc.model.TrainInfo;
import com.cts.irctc.service.IrctcService;

@Controller
public class IrctcController {
	//Autowiring the object of IrctcService Class
	@Autowired
	private IrctcService service;

	
	@Autowired
	public IrctcController(IrctcService service) {
		super();
		this.service = service;
	}

	//Creation of GET method and returning the access to ticketBooking web page
	@RequestMapping(value="/showTicketBookingForm",method=RequestMethod.GET)
	public String showTicketBookingForm(@ModelAttribute("ticketBooking") TicketBooking ticketBooking) {
		
		//Add code here..
		ticketBooking = new TicketBooking();
		return "ticketBooking"; // TODO, modify this value
	}
	//Creation of POST method to store the data enter by user and evaluate it by passing the values to other classes
	@RequestMapping(value="/getTicketBookingResultPage",method=RequestMethod.POST)
	public String getCarSearchResultForm(@Valid @ModelAttribute("ticketBooking") TicketBooking ticketBooking,BindingResult result,ModelMap map) throws ApplicationException {
		
		//Add code here..
		if(result.hasErrors()) {
			return "ticketBooking";
		}
		TrainInfo ti = service.getTicketBookingResult(ticketBooking);
		if(ti==null) {
			return "trainNotAvailable";
		}
		else {
			String firstend = ti.getTrainNumber().substring(0, 3);
			String secondend = service.getPNRNumber(ticketBooking);
			String pnrNumber = firstend.concat(secondend);
			String trainNumber = ti.getTrainNumber();
			String trainName = ti.getTrainName();
			String departure = ti.getDeparture();
			String arrival = ti.getArrival();
			LocalDate dateOfTravel = ticketBooking.getDateOfTravel();
			String duration = ti.getDuration();
			double totalFareAmount = ti.getFarePerPassenger() * (ticketBooking.getNoOfTickets());
			
			//Add all the finding values into variable which are create to show to the user
			map.addAttribute("pnrNumber", pnrNumber);
			map.addAttribute("trainNumber", trainNumber);
			map.addAttribute("trainName", trainName);
			map.addAttribute("departure", departure);
			map.addAttribute("arrival", arrival);
			map.addAttribute("duration", duration);
			map.addAttribute("dateOfTravel", dateOfTravel);
			map.addAttribute("totalFareAmount", totalFareAmount);
			
			//returing ticketbookingresultpage
			return "ticketBookingResult"; // TODO, modify this value
		}
		
	}
	
	@ModelAttribute("from")
	public List<String> populateFromCities() {
		List<String> fromCities = new ArrayList<String>();

		 fromCities.add("Chennai"); 
		  fromCities.add("Delhi"); 
		  fromCities.add("Bangalore"); 
		  fromCities.add("Pune");
				
		return fromCities;
	}
	
	@ModelAttribute("to")
	public List<String> populateToCities() {
		List<String> toCities = new ArrayList<String>();
		 
		  toCities.add("Chennai"); 
		  toCities.add("Delhi");
		  toCities.add("Bangalore"); 
		  toCities.add("Pune");		 	
		
		return toCities;
	}
	
	@ModelAttribute("classTypes")
	public List<String> populateClassType() {
		List<String> classTypes = new ArrayList<String>();
		  
		 classTypes.add("AC First Class (1A)");
		  classTypes.add("AC 2 Tier (2A)"); 
		  classTypes.add("AC 3 Tier (3A)");
		  classTypes.add("Sleeper (SL)"); 
		  classTypes.add("Second Sitting (2S)"); 
		  
			
		return classTypes;
	}
	
	
}

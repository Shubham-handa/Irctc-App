package com.cts.irctc.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//@Component
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TrainInfo {
	private String trainNumber;
	private String trainName;
	private String from;
	private String to;
	private String tavelClass;
	private String departure;
	private String duration;
	private String arrival;
	private double farePerPassenger;

}

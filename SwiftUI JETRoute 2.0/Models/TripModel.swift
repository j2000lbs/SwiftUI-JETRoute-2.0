//
//  TripModel.swift
//  SwiftUI JETRoute 2.0
//
//  Created by Joel Ton on 4/17/20.
//  Copyright © 2020 RAMJETApps. All rights reserved.
//

import Foundation


// Might not need Identifiable

/// pairingNumber is self explanatory
/// tripsStartDate is self explanatory
/// trip has the date of each day of the trip as the key in a dictionary with the legs of that day as the value
struct TripModel: Codable /*Identifiable*/ {
//	let id = UUID()
	var pairingNumber: String
	var tripStartDate: Date
	var datesInTrip: [Date]
	var overnightCities: [String]
	var trip: [LegsInADay]
	
	
	
	init(pairingNumber: String = "",
		 tripStartDate: Date = Date(),
		 datesInTrip: [Date] = [Date](),
		 overnightCities: [String] = [String](),
		 trip: [LegsInADay] = [LegsInADay]()) {
		
		self.pairingNumber = pairingNumber
		self.tripStartDate = tripStartDate
		self.datesInTrip = datesInTrip
		self.overnightCities = overnightCities
		self.trip = trip
	}
	
	/// This method will create the TripModel from the supplied data
	mutating func createTrip(pairingNumber: String,
							 startDate: Date,
					 overnightCities: [String],
					 datesInATrip: [Date],
					 legs: [LegsInADay]) {
		self.pairingNumber = pairingNumber
		self.tripStartDate = startDate
		self.datesInTrip = datesInATrip
		self.overnightCities = overnightCities
		self.trip = legs
	}
}

//
//  MonthModel.swift
//  SwiftUI JETRoute 2.0
//
//  Created by Joel Ton on 4/17/20.
//  Copyright © 2020 RAMJETApps. All rights reserved.
//

import Foundation


/// This will store a month's' trips by month in a Dictionary
/// The variable pairings is the dictionary where the month is the key, the trips are the value
///		stored in an array
struct MonthModel: Codable {
	var pairings: [String : [TripModel]]		// String will be monthYear
	var allTripDates = [Date]()
	
	init(pairings: [String : [TripModel]] = ["" : [TripModel()]]) {
		self.pairings = pairings
	}
	
	/// This method will add a TripModel to the designated month key
	mutating func addTrips(month: String, trip: TripModel) {
		// If the month doesn't exist in MonthModel, pairings will start
		//		with an empty array
		var tempPairings = self.pairings[month] ?? []
		tempPairings.append(trip)
		self.pairings[month] = tempPairings
	}
}

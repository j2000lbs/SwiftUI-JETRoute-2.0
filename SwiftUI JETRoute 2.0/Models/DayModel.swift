//
//  DayModel.swift
//  SwiftUI JETRoute 2.0
//
//  Created by Joel Ton on 4/17/20.
//  Copyright © 2020 RAMJETApps. All rights reserved.
//

import Foundation

// ******  Rename to LegModel after all files are copied to this project

/// Store all of the legs flown in a calendar day by LegModel
struct LegsInADay: Codable {
	var daysLegs: [Date : [LegModel]]
	
	init(daysLegs: [Date : [LegModel]] = [Date : [LegModel]]()) {
		self.daysLegs = daysLegs
	}
	
	/// This method will append each LegModel to the legs array for the provided Date
	mutating func addLeg(legDate: Date, leg: LegModel) {
		var legs = [LegModel]()
		// if daysLegs is empty, let legs equal an empty array
		legs = self.daysLegs[legDate] ?? []
		legs.append(leg)
		
		self.daysLegs[legDate] = legs
	}
}

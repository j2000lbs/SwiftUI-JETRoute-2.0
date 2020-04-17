//
//  LegModel.swift
//  SwiftUI JETRoute 2.0
//
//  Created by Joel Ton on 4/17/20.
//  Copyright © 2020 RAMJETApps. All rights reserved.
//

import Foundation


// Might not need Identifiable

/// Store one leg
struct LegModel: Codable /*Identifiable*/ {
//	let id = UUID()
	let flightNumber: String
	let leg: String
	var isDeadhead: Bool
	
	init(flightNumber: String = "", leg: String = "", isDeadhead: Bool = false) {
		self.flightNumber = flightNumber
		self.leg = leg
		self.isDeadhead = isDeadhead
	}
}

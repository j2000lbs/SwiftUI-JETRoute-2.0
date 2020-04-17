//
//  DataModel.swift
//  SwiftUI JETRoute 2.0
//
//  Created by Joel Ton on 4/17/20.
//  Copyright © 2020 RAMJETApps. All rights reserved.
//

import SwiftUI
import Combine

/* Import both SwiftUI and Conbine.
	Declare a class that conforms to the ObservableObject protocol.
	Inside that class, write a nested struct that will hold the current data and create a property of that type.
	By marking state with @Published, Combine automatically generates an implementation of objectWillChange (required by the ObservableObject protocol) that tracks changes to state and publishes an event whenever the state is changed.
	The property is marked private(set) whcih is na access control modifier that makes the property private ofr modification, but public for access.  The state can be read by everyone, but only DataStore can change that state.
	A method is added that lets users of this class change the state by setting new data.  When this method is called, monthsTrips will be changed, and DataStore publishes an event telling everyone that is listening that the state has changed. NOTE: For this data, only updating the data through the online connection will update monthsTrip (Not coded yet 04-13-2020) */

class DataStore: ObservableObject {
	
	struct DataState {
		var monthsTrips: MonthModel?
	}
	
	@Published private(set) var state = DataState(monthsTrips: nil)
	
	func setCurrentData(_ data: MonthModel?) {
		state.monthsTrips = data
	}
}

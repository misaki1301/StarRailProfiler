//
//  File.swift
//  
//
//  Created by Paul Frank on 26/01/24.
//

import Foundation

@MainActor
class PlayerViewModel: ObservableObject {
	
	@Published var player: PlayerEntity?
	
	func getPlayerData() async {
		
	}
	
}

struct PlayerEntity {
	
}

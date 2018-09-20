// Created by Isaac Halvorson on 9/18/18

import Foundation

protocol UserDefaultsInteracting {}

extension UserDefaultsInteracting {
	static func clearUserDefaults() {
		guard let bundleID = Bundle.main.bundleIdentifier else { return }
		UserDefaults.standard.removePersistentDomain(forName: bundleID)
	}
}

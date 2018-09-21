//
//  StaffService.swift
//  Screener
//
//  Created by Alex Quinlivan on 21/09/18.
//  Copyright © 2018 Storypark Ltd. All rights reserved.
//

import Foundation

struct StaffService {
    private init() {}
    
    /// Loads a list of staff members asynchronously and returns them in the
    /// passed completion block.
    /// - param completion  a block called with a StaffResult
    static func loadStaff(completion: @escaping (StaffResult) -> Void) {
        // Attempt to find the url to the staff_list.json file
        guard let url = Bundle.main.url(forResource: "staff_list", withExtension: "json") else {
            return completion(.error(error: .fileNotFound))
        }
        
        // Load the file asynchronously
        DispatchQueue.global(qos: .default).async {
            let result: StaffResult
            let decoder = JSONDecoder()
            do {
                let data = try Data(contentsOf: url)
                let staffList = try decoder.decode(StaffList.self, from: data)
                
                result = .staff(staff: staffList.staff)
            } catch {
                result = .error(error: .underlying(error: error))
            }
            
            // Callback to main
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}

/// A type that the staff service can return when loading staff
enum StaffResult {
    // A succesful load of staff
    case staff(staff: [Staff])
    
    // Something went wrong loading staff
    case error(error: StaffServiceError)
}

/// The error types the staff service can encounter when loading staff
enum StaffServiceError: Error {
    /// Unable to find the file
    case fileNotFound
    
    /// Some underlying error occured when loading
    case underlying(error: Error)
}


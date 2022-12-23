//
//  APIEnvironment.swift
//  petstagram
//
//  Created by Jess Lê on 12/21/22.
//

import Foundation

struct APIEnvironment {
    var baseURL: URL
}

extension APIEnvironment {
    static let prod = APIEnvironment(baseURL: URL(string: "https://example.com/api/v1")!)
    static let local = APIEnvironment(baseURL: URL(string: "http://localhost.com:8000/api/v1")!)
    
}

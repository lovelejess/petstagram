//
//  POSTRequest.swift
//  petstagram
//
//  Created by Jess Lê on 12/21/22.
//

import Foundation

struct POSTRequest: APIRequest {
    typealias Response = [Post]
    var method: HTTPMethod
    
    var path: String
    
    var body: Data?
    
    func handle(response: Data) throws -> [Post] {
        return try JSONDecoder().decode(Response.self, from: response)
    }
}

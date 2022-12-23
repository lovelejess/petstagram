//
//  Post.swift
//  petstagram
//
//  Created by Jess Lê on 12/21/22.
//

import Foundation

struct Post: Codable {
    var caption: String
    var createdAt: Date
    var photoUrl: URL
}

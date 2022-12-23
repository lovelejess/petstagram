//
//  PostData.swift
//  petstagramTests
//
//  Created by Jess Lê on 12/23/22.
//

import Foundation
@testable import petstagram

struct PostData {

    struct PostDate {
        static let date1 = ISO8601DateFormatter().date(from: "2020-04-01T12:00:00Z")
        static let date2 = ISO8601DateFormatter().date(from: "2020-03-11T04:44:00Z")
        static let date3 = ISO8601DateFormatter().date(from: "2020-01-03T17:32:00Z")
    }

    static let post1 = Post(caption: "Living her best life! #corgi #puppyStyle", createdAt: PostDate.date1!, photoUrl: URL(string: "/photos/image1.jpg")!)
    static let post2 = Post(caption: "Bath time is best time!", createdAt: PostDate.date2!, photoUrl: URL(string: "/photos/image2.jpg")!)
    static let post3 = Post(caption: "Not sure if alien or dog...", createdAt: PostDate.date3!, photoUrl: URL(string: "/photos/image3.jpg")!)
    static let posts = [PostData.post1, PostData.post2, PostData.post3]
}

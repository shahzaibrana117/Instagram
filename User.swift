//
//  User.swift
//  Instagram
//
//  Created by apple on 8/26/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "imran", profileImageUrl: "imran khan-1", fullname: "imran khan", bio: "Gotham's Dark knight", email: "imrankhan@gmail.com"),
        .init(id: NSUUID().uuidString, username: "khan", profileImageUrl: "imran khan", fullname: "shahzaib rana", bio: "venom", email: "shahzaibrana@gmail.com"),
        .init(id: NSUUID().uuidString, username: "khan imran", profileImageUrl: "imran khan-2", fullname: "khan pti", bio: "Playboy & Billionaire", email: "sadeedahmad@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sadeed", profileImageUrl: "imran khan-3", fullname: nil, bio: "helllo how are you", email: "shjahadire@gmail.com"),
        .init(id: NSUUID().uuidString, username: "shuja", profileImageUrl: "black-panther-1", fullname: "black panther", bio: "Test bio", email: "blackpanther@gmail.com")
    
    ]
}

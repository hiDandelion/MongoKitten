//
//  CreateCollection.swift
//  MongoKitten
//
//  Created by Junhui Lou on 10/21/25.
//

public struct CreateCollectionCommand: Codable, Sendable {
    private enum CodingKeys: String, CodingKey {
        case name = "create"
    }

    public let name: String

    public init(named name: String) {
        self.name = name
    }
}

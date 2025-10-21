//
//  RenameCollection.swift
//  MongoKitten
//
//  Created by Junhui Lou on 10/16/25.
//

public struct RenameCollectionCommand: Codable, Sendable {
    private enum CodingKeys: String, CodingKey {
        case sourceNamespace = "renameCollection"
        case targetNamespace = "to"
        case dropTarget = "dropTarget"
    }

    public let sourceNamespace: String
    public let targetNamespace: String
    public let dropTarget: Bool

    public init(from sourceCollection: String, to targetCollection: String, inDatabase database: String, isDropTarget dropTarget: Bool = false) {
        self.sourceNamespace = "\(database).\(sourceCollection)"
        self.targetNamespace = "\(database).\(targetCollection)"
        self.dropTarget = dropTarget
    }
}

//
//  Pet.swift
//  PawsAndFound
//
//  Created by Jocelyn Rodriguez on 11/6/23.
//

import Foundation
import ParseSwift

struct Pet: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Custom parseObjects
    var petName: String?
    var petBreed: String?
    var petDesc: String?
    var petImageFile: ParseFile?
}
